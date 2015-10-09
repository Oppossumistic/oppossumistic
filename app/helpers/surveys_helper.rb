module SurveysHelper

  def take_survey_path(survey_token)
    "/survey/take/#{survey_token}"
  end
end
