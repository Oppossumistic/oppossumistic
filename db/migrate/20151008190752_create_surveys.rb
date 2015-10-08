class CreateSurveys < ActiveRecord::Migration
  def change
    create_table :surveys do |t|
      t.string :name
      t.integer :question_id

      t.timestamps null: false
    end
  end
end
