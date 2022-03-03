class BetsController < ApplicationController
  before_action :bet_params, only: [:create]
  skip_before_action :authenticate_user!, only: [:index]
  # à supprimer une fois la vue new créee :
  skip_before_action :authenticate_user!, only: [:new, :create]

  def index
    @bets = Bet.where(nil)
    @bets = @bets.filter_by_category(params[:category]) if params[:category].present?
    @bets = @bets.sort_by(&:expiring_at).select { |bet| bet.expiring_at > DateTime.now }

    @betting = Betting.new
    # @bets = Bet.all.select { |bet| bet.photo.attached? } # Si des bets n'ont pas de photos, on ne prend que les bets avec photo attached
  end


  def show
    @bet = Bet.find(params[:id])
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
    @bettings_published = Bet.where(publisher: current_user)
  end

  def update

  end


  private

  def bet_params
    params.require(:bet).permit(:hashtag, :description, :photo, :expiring_at, :question, :category, medias_attributes: [ :url ])
  end

end
