class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.text :answer_text
      t.integer :answer_int
      t.string :taker_token

      t.timestamps null: false
    end
  end
end
