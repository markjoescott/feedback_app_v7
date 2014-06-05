class RespondentsController < ApplicationController
  def index
    @respondents = Respondent.all
  end

  def show
    @respondent = Respondent.find(params[:id])
  end

  def new
    @respondent = Respondent.new
  end

  def create
    @respondent = Respondent.new
    @respondent.questionnaire_id = params[:questionnaire_id]
    @respondent.respondent_email = params[:respondent_email]
    @respondent.answer_1 = params[:answer_1]
    @respondent.answer_2 = params[:answer_2]
    @respondent.answer_3 = params[:answer_3]
    @respondent.answer_4 = params[:answer_4]
    @respondent.answer_5 = params[:answer_5]
    @respondent.course_id = params[:course_id]
    @respondent.user_id = params[:user_id]

     if @respondent.save
      redirect_to "/questionnaires/#{@respondent.questionnaire_id}", :notice => "Respondent created successfully."
    else
      render 'new'
    end
  end
def answer



    # @respondent.respondent_email = params[:respondent_email]
    # @respondent.user_id = params[:user_id]
    # @respondent.answer_1 = params[:answer_1]
    # @respondent.answer_2 = params[:answer_2]
    # @respondent.answer_3 = params[:answer_3]
    # @respondent.answer_4 = params[:answer_4]
    # @respondent.answer_5 = params[:answer_5]
    # answer_1 = params[:answer_1]

    # @respondent_score = (@respondent.answer_1.to_f+@respondent.answer_2.to_f+@respondent.answer_3.to_f+@respondent.answer_4.to_f+@respondent.answer_5.to_f)/5

    @total_score_answer_1  = Respondent.find(1).answer_1 + Respondent.find(2).answer_1
    @total_score_answer_2
    @total_score_answer_3
    @total_score_answer_4
    @total_score_answer_5
    # @respondent.questionnaire_id = params[:questionnaire_id]



    # if @respondent.save
    #   redirect_to "/questionnaires/#{@respondent.questionnaire_id}", :notice => "Respondent created successfully."
    # else
    #   render 'new'
    # end
  end

  def edit
    @respondent = Respondent.find(params[:id])
  end

  def update
    @respondent = Respondent.find(params[:id])

    @respondent.questionnaire_id = params[:questionnaire_id]
    @respondent.respondent_email = params[:respondent_email]
    @respondent.answer_1 = params[:answer_1]
    @respondent.answer_2 = params[:answer_2]
    @respondent.answer_3 = params[:answer_3]
    @respondent.answer_4 = params[:answer_4]
    @respondent.answer_5 = params[:answer_5]
    @respondent.course_id = params[:course_id]
    @respondent.user_id = params[:user_id]

    if @respondent.save
      redirect_to "/respondents", :notice => "Respondent updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @respondent = Respondent.find(params[:id])

    @respondent.destroy

    redirect_to "/respondents", :notice => "Respondent deleted."
  end
end
