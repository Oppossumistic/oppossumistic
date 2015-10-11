class CreateOptionQuestions < ActiveRecord::Migration
  def change
    create_table :option_questions do |t|

      t.timestamps null: false
    end
  end
end
