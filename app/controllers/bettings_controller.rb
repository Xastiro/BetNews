class BettingsController < ApplicationController

  def create
    @bet = Bet.find(params[:bet_id])

    normalized_answer = normalized_answer_mapping[params[:commit]]

    @betting = Betting.new(
      answer: normalized_answer,
      bet: @bet,
      user: current_user
    )
  end

  def index
  end

  def ongoing
  end

  def finished
  end

  private

  def normalized_answer_mapping
    return {
      "OUI" => "yes",
      # "OUIIIIII" => "yes", # Si jamais vous changez la value du bouton de soumission du form de betting dans la show de bets
      "NON" => "no"
    }
  end
end
