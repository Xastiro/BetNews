class BetsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]
  # à supprimer une fois la vue new créee :
  skip_before_action :authenticate_user!, only: [:new, :create]

  def index
    @bets = Bet.all.sort_by(&:expiring_at).select{ |bet| bet.expiring_at > DateTime.now }
    # @bets = Bet.all.select { |bet| bet.photo.attached? } # Si des bets n'ont pas de photos, on ne prend que les bets avec photo attached
  end

  def show
    @bet = Bet.find(params[:id])
    # @user = @bet.user
    @betting = Betting.new
  end

  def new
    @bet = Bet.new
  end

  def create
    @bet=Bet.new(bet_params)
    @bet.user = current_user
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
    params.require(:bet).permit(:hashtag, :descritpion, :photo, :expiring_at, :question, :category)
  end

end
