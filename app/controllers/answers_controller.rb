class AnswersController < ApplicationController
  def index
    @answers = Answer.all
  end

  def show
    @answer = Answer.find(params[:id])
  end

  def new
    @answer = Answer.new

      @answer.answer_1 = params[:answer_1]
      @answer.answer_2 = params[:answer_2]
      @answer.answer_3 = params[:answer_3]
      @answer.answer_4 = params[:answer_4]
      @answer.answer_5 = params[:answer_5]

      @answer.questionnaire_id = params[:questionnaire_id]
      @answer.respondent_id = params[:respondent_id]
      @answer.comment = params[:comment]

      @score = (@answer.answer_1.to_f+@answer.answer_2.to_f+@answer.answer_3.to_f+@answer.answer_4.to_f+@answer.answer_5.to_f)/5
    # end
  end

  def create
    @answer = Answer.new

    @answer.answer_1 = params[:answer_1]
    @answer.answer_2 = params[:answer_2]
    @answer.answer_3 = params[:answer_3]
    @answer.answer_4 = params[:answer_4]
    @answer.answer_5 = params[:answer_5]

    @answer.comment = params[:comment]
    @answer.respondent_id = params[:respondent_id]
    @answer.questionnaire_id = params[:questionnaire_id]

    @score = (@answer.answer_1.to_f+@answer.answer_2.to_f+@answer.answer_3.to_f+@answer.answer_4.to_f+@answer.answer_5.to_f)/5

    # @is_this_possible = @answer.respondent_id

    did_it_save = @answer.save

    if did_it_save

    else
      redirect_to '/answers/new', :notice => "Please provide a numerical value greater than or equal to 0 and less than or equal to 4 for each answer"
    # else
        # redirect_to '/questionnaires/#{@answer.questionnaire_id}', :notice => "Please provide a numerical value for each answer"
    end
    # if @answer.save
    #   redirect_to "/answers", :notice => "Answer created successfully."
    # else
    #   render 'new'
    # end
  end

  def edit
    @answer = Answer.find(params[:id])
  end

  def update
    @answer = Answer.find(params[:id])

    @answer.answer_1 = params[:answer_1]
    @answer.answer_2 = params[:answer_2]
    @answer.answer_3 = params[:answer_3]
    @answer.answer_4 = params[:answer_4]
    @answer.answer_5 = params[:answer_5]
    @answer.comment = params[:comment]
    @answer.respondent_id = params[:respondent_id]
    @answer.questionnaire_id = params[:questionnaire_id]

    if @answer.save
      redirect_to "/answers", :notice => "Answer updated successfully."
    else
      render 'edit'
    end
  end

  def score
  @score = (@answer_1.to_f+@answer_2.to_f+@answer_3.to_f+@answer_4.to_f+@answer_5.to_f)/5
  end

  def destroy
    @answer = Answer.find(params[:id])

    @answer.destroy

    redirect_to "/answers", :notice => "Answer deleted."
  end
end
