class SurveysController < ApplicationController
  before_action :require_login, except: [:take]
  before_action :set_survey, only: [:show, :edit, :update, :destroy]
  include SurveysHelper

  # GET /surveys
  def index
    @surveys = Survey.all
  end

  # GET /survey/take/:token
  def take
    @survey = Survey.find_by_token(params[:token])
    @answers = []
    redirect_to no_thanks_path unless @survey.published
    # @answers = [@answers.question_id.each do |qid|
    #   {qid: }
    #
    #   {qid: 1, answer: ""}, {qid: 2, answer: ""}]
    # answer_results=[]
    # @answers.each do |a|
    #   answer = Answer.new(question_id: a[:qid], )
    #   answer_results << answer.save
    # end
    if true
      redirect_to thanks_path
    else
      redirect_to thanks_error_path
    end
  end

  # GET /surveys/1
  def show
  end

  # GET /surveys/new
  def new
    @survey = Survey.new
  end

  # GET /surveys/1/edit
  def edit
    @survey.questions.build
  end

  # POST /surveys
  def create
    @survey = Survey.new(survey_params)

    if @survey.save
      render :edit, notice: 'Survey was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /surveys/1
  def update
    if @survey.update(survey_params)
      redirect_to @survey, notice: 'Survey was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /surveys/1
  def destroy
    @survey.destroy
    redirect_to surveys_url, notice: 'Survey was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_survey
      @survey = Survey.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def survey_params
      params.require(:survey).permit(:title, :question_id, :token, :description,
        :user_id, :published, :_destroy,
        questions_attributes: [:id, :type, :query, :description,
          :required, :_destroy])
    end
end
