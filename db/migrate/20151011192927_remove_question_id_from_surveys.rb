class RemoveQuestionIdFromSurveys < ActiveRecord::Migration
  def change
    remove_column :surveys, :question_id
  end
end
