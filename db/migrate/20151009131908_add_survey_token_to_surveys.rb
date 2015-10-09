class AddSurveyTokenToSurveys < ActiveRecord::Migration
  def change
    add_column :surveys, :survey_token, :string
  end
end
