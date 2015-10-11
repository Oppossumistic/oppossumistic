class CreateOptionsQuestionsTable < ActiveRecord::Migration
  def change
    create_table :options_questions do |t|
      t.integer :question_id
      t.integer :option_id
    end
  end
end
