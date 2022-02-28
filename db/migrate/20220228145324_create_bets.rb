class CreateBets < ActiveRecord::Migration[6.1]
  def change
    create_table :bets do |t|
      t.string :question
      t.text :description
      t.date :expiring_at
      t.string :result
      t.date :result_published_at
      t.string :category
      t.string :hashtag

      t.timestamps
    end
  end
end
