class BetsController < ApplicationController
  before_action :bet_params, only: [:create]
  skip_before_action :authenticate_user!, only: [:index]
  # à supprimer une fois la vue new créee :
  skip_before_action :authenticate_user!, only: [:new, :create]

  def index
    @bets = Bet.where(nil)
    unless params[:category] == "Tout"
      @bets = @bets.filter_by_category(params[:category]) if params[:category].present?
    end
    @bets = @bets.sort_by(&:expiring_at).select { |bet| bet.expiring_at > DateTime.now }

    @betting = Betting.new

    respond_to do |format|
      format.html
      format.text { render partial: "bets/list", locals: { bets: @bets }, formats: [:html] }
    end
    # @bets = Bet.all.select { |bet| bet.photo.attached? } # Si des bets n'ont pas de photos, on ne prend que les bets avec photo attached
  end

  def show
    @bet = Bet.find(params[:id])
    @medias = @bet.medias
    @betting = Betting.new
  end

  def new
    @bet = Bet.new
    @bet.medias.build
  end

  def create
    # session[:bet_params].deep_merge!(bet_params) if bet_params
    # @bet = Bet.new(session[:bet_params])
    @bet = Bet.new(bet_params)
    @bet.publisher = current_user
    if @bet.save
      redirect_to bet_path(@bet)
      flash[:notice] = "Ton pari a bien été publié"
    else
    render :new
    end
  end

  def confirmation
  end

  def published
    @bets_published = Bet.where(publisher: current_user).order("expiring_at desc")
  end

  def closing
    @bet = Bet.find(params[:id])
    @medias = @bet.medias
  end

  def close
    @bet = Bet.find(params[:id])
    @result = params[:result]
    @bet.result = @result
    @bet.save

    if @bet.save
      respond_to do |format|
        format.html { redirect_to bets_path(anchor: "card-#{@bet.id}") }
        format.text { render(partial: "bets/publishedconfirmed", formats: [:html]) }
      end
    end

    bettings = @bet.bettings

    bettings.each do |betting|
      if betting.answer == @result
        betting.won = true
        if @result == "yes"
          betting.winning_odds = betting.bet.yes_odds
        elsif @result == "no"
          betting.winning_odds = betting.bet.no_odds
        end
        betting.user.wallet += betting[:wager].to_f * betting.winning_odds.to_f
        betting.user.save
      else
        betting.won = false
      end
      betting.save
    end

    # redirect_to bet_path(@bet)
  end

  private

  def bet_params
    params.require(:bet).permit(:hashtag, :description, :photo, :expiring_at, :question, :category, medias_attributes: [ :url ])
  end
end
