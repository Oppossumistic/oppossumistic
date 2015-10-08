class CreateOptions < ActiveRecord::Migration
  def change
    create_table :options do |t|
      t.integer :question_id
      t.integer :answer_id
      t.string :name
      t.boolean :selected
      t.boolean :radio
      t.boolean :allow_other
      t.text :other

      t.timestamps null: false
    end
  end
end
