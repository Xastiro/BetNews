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
    # @bets = Bet.all.select { |bet| bet.photo.attached? } # Si des bets n'ont pas de photos, on ne prend que les bets avec photo attached
  end


  def show
    @bet = Bet.find(params[:id])
    @medias = @bet.medias
    # @user = @bet.user
    @betting = Betting.new
  end

  def new
    @bet = Bet.new
    @bet.medias.build
  end

  def create
    @bet = Bet.new(bet_params)
    @bet.publisher = current_user
    # binding.pry
    if @bet.save
      redirect_to bet_path(@bet)
    else
      render :new
    end
  end

  def confirmation
  end

  def published
    @bets_published = Bet.where(publisher: current_user).order("expiring_at desc")
  end

  # started by Hugo to publish answer to my bet published
  def edit
    @bet = Bet.find(params[:id])
  end

  # def update
  #   @bet = Bet.find(params[:id])
  #   @bet.result = @bet.find(params[answer:])
  #   @bet.save
  # end

  private

  def bet_params
    params.require(:bet).permit(:hashtag, :description, :photo, :expiring_at, :question, :category, medias_attributes: [ :url ])
  end

end
