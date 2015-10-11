class QuestionsController < ApplicationController
  before_action :require_login
  before_action :set_question, only: [:show, :edit, :update, :destroy]

  def create
    if @question.save
      if params[:question_starter] == ['','']
        redirect_to @survey, notice: 'Survey was successfully created.'
      else
        redirect_to :new
      end
    else
      render :new
    end
  end

  def new
    @survey = Survey.find(params[:survey_id])
    @question.answers.build
  end

  def destroy
    @question.destroy
    redirect_to questions_path, notice: "Question was successfully destroyed"
  end

  def edit
    @question.answers.build
  end

  def update
    if @question.update(question_params)
      redirect_to @question, notice: "Question was updated"
    else
      render :edit
    end
  end

  def index
    @questions = Question.all
  end

  def show
  end

  private
    def set_question
      @question = Question.find(params[:id])
    end

    def question_params
      params.require(:question).permit(:survey_id, :type, :query, :description, :required
        answers_attributes: [:id, :question_id, :answer_id, :name, :selected, :radio, :allow_other, :other, :answer, :short, :_destroy])
    end

end
