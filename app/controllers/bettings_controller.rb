class BettingsController < ApplicationController

  def create
    @bet = Bet.find(params[:bet_id])

    normalized_answer = normalized_answer_mapping[params[:commit]]

    @betting = Betting.new(
      answer: normalized_answer,
      bet: @bet,
      user: current_user
    )

    if @betting.save!
      flash[:notice] = "Votre pari a bien été pris en compte"
      redirect_to bets_path
    else
      flash[:alert] = "Votre pari n'a pas été pris en compte"
      redirect bet_path(@bet)
    end
  end

  def yes
    @bet = Bet.find(params[:bet_id])
    @betting = Betting.new(
      answer: "yes",
      bet: @bet,
      user: current_user
    )
    save(@bet, @betting)
  end

  def no
    @bet = Bet.find(params[:bet_id])
    @betting = Betting.new(
      answer: "no",
      bet: @bet,
      user: current_user
    )
    save(@bet, @betting)
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

  def save(bet, betting)
    if betting.save!
      flash[:notice] = "Votre pari a bien été pris en compte"
      redirect_to bets_path
    else
      flash[:alert] = "Votre pari n'a pas été pris en compte"
      redirect bet_path(bet)
    end
  end

end
