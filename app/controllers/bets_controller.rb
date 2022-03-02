class BetsController < ApplicationController

  skip_before_action :authenticate_user!, only: [:index, :show]
  # à supprimer une fois la vue new créee :
  skip_before_action :authenticate_user!, only: [:new, :create]

  def index
    @bets = Bet.all
  end

  def show
    @bet = Bet.find(params[:id])
    # @user = @bet.user
    # @betting = Betting.new
  end

  def new
    @bet = Bet.new
    @bet.medias.build
  end

  def create
    @bet=Bet.new(bet_params)
    @bet.publisher = current_user
    if @bet.save
      redirect_to bet_path(@bet)
    else
      render :new
    end
  end

  def confirmation
  end



  def update
  end


  private

  def bet_params
    params.require(:bet).permit(:hashtag, :description, :photo, :expiring_at, :question, :category, medias_attributes: [ :url ])
  end

  # def media_params
  #   params.require(:media).permit(:url)
  # end

end
