class ChangeDateToDateTimeforExpiringAtinBetsTable < ActiveRecord::Migration[6.1]
  def change
    change_column :bets, :expiring_at, :datetime
  end
end
