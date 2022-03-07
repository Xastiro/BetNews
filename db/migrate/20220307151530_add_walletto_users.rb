class AddWallettoUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :wallet, :float
  end
end
