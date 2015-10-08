class CreateFreeforms < ActiveRecord::Migration
  def change
    create_table :freeforms do |t|
      t.integer :question_id
      t.integer :answer_id
      t.text :answer
      t.boolean :short

      t.timestamps null: false
    end
  end
end
