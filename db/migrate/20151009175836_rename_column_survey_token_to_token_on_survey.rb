class RenameColumnSurveyTokenToTokenOnSurvey < ActiveRecord::Migration
  def change
    rename_column :surveys, :survey_token, :token
  end
end
