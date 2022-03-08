class AddWinningOddstoBettings < ActiveRecord::Migration[6.1]
  def change
    add_column :bettings, :winning_odds, :float
  end
end
