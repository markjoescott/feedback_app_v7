class QuestionnairesController < ApplicationController

  # before_action :authenticate_user!

  def index
    @questionnaire = params[:questionnaire_id]
    @questionnaires = Questionnaire.all

  end

  def show
    @questionnaire = Questionnaire.find(params[:id])
  end

  def new
    @questionnaire = Questionnaire.new
    @questionnaire.questionnaire_name = params[:questionnaire_name]
  end

def login

    @questionnaire = params[:id]

end

  # def confirmation
  #   @questionnaire = params[:questionnaire_id]
  #   @questionnaires = Questionnaire.all



  # end

  def home

  end
  def create
    @questionnaire = Questionnaire.new
    @questionnaire.user_id = params[:user_id]
    @questionnaire.respondent_id = params[:respondent_id]
    @questionnaire.course_id = params[:course_id]
    @questionnaire.answer_1 = params[:answer_1]
    @questionnaire.answer_2 = params[:answer_2]
    @questionnaire.answer_3 = params[:answer_3]
    @questionnaire.answer_4 = params[:answer_4]
    @questionnaire.answer_5 = params[:answer_5]
    @questionnaire.questionnaire_name = params[:questionnaire_name]


    if @questionnaire.save
      redirect_to "/questionnaires/#{@questionnaire.id}", :notice => "Questionnaire created successfully."
    else
      render 'new'
    end
  end

  def edit
    @questionnaire = Questionnaire.find(params[:id])
  end

  def update
    @questionnaire = Questionnaire.find(params[:id])

    @questionnaire.user_id = params[:user_id]
    @questionnaire.respondent_id = params[:respondent_id]
    @questionnaire.course_id = params[:course_id]
    @questionnaire.answer_1 = params[:answer_1]
    @questionnaire.answer_2 = params[:answer_2]
    @questionnaire.answer_3 = params[:answer_3]
    @questionnaire.answer_4 = params[:answer_4]
    @questionnaire.answer_5 = params[:answer_5]

    if @questionnaire.save
      redirect_to "/questionnaires", :notice => "Questionnaire updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @questionnaire = Questionnaire.find(params[:id])

    @questionnaire.destroy

    redirect_to "/questionnaires", :notice => "Questionnaire deleted."
  end
end
