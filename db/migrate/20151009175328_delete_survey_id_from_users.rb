class DeleteSurveyIdFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :survey_id
  end
end
