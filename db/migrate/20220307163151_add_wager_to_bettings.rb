class AddWagerToBettings < ActiveRecord::Migration[6.1]
  def change
    add_column :bettings, :wager, :float
  end
end
