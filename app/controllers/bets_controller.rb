class BetsController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    @bets = Bet.all
  end

  def show
    @bet = Bet.find(params[:id])
    # @user = @bet.user
    # @betting = Betting.new
  end

  def confirmation
  end

  def published
  end

  def update
  end

end
