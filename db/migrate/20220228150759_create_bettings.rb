class CreateBettings < ActiveRecord::Migration[6.1]
  def change
    create_table :bettings do |t|
      t.string :answer
      t.boolean :won
      t.references :user, null: false, foreign_key: true
      t.references :bet, null: false, foreign_key: true

      t.timestamps
    end
  end
end
