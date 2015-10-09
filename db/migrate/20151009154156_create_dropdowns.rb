class CreateDropdowns < ActiveRecord::Migration
  def change
    create_table :dropdowns do |t|
      t.integer :question_id
      t.integer :answer_id
      t.string :name
      t.boolean :selected

      t.timestamps null: false
    end
  end
end
