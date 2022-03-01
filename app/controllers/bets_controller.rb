class BetsController < ApplicationController
  skip_before_action :authenticate_user! 

  def index
    @bets = Bet.all
  end

  def show
  end

  def confirmation
  end

  def published
  end

  def update
  end

  private

end
