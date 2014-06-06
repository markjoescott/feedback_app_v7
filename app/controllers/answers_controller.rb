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
    # @user = User.all

    @answer.answer_1 = params[:answer_1]
    @answer.answer_2 = params[:answer_2]
    @answer.answer_3 = params[:answer_3]
    @answer.answer_4 = params[:answer_4]
    @answer.answer_5 = params[:answer_5]


    # @answer_1_total = params[:answer_1].to_f
    # @answer_1_total.each do |total|
    # @answer_1_total = @answer_1_total + total

    # return @answer_1_total

    # @answer_1_total = params[:answer_1].to_f+@answer.answer_1.to_f
    # @answer_2_total = params[:answer_2].to_f+@answer.answer_2.to_f
    # @answer_3_total = params[:answer_3].to_f+@answer.answer_3.to_f
    # @answer_4_total = params[:answer_4].to_f+@answer.answer_4.to_f
    # @answer_5_total = params[:answer_5].to_f+@answer.answer_5.to_f


    # answer_1_score = []
    # @answer.answer_1 = params[:answer_1]
    # @answer.answer_1.answer_1_score.push


    # @answer.answer_1 = params[:answer_1]

    @answer.comment = params[:comment]
    @answer.respondent_id = current_user.id
    @answer.questionnaire_id = params[:questionnaire_id]

    @score = (@answer.answer_1.to_f+@answer.answer_2.to_f+@answer.answer_3.to_f+@answer.answer_4.to_f+@answer.answer_5.to_f)/5
    # @total = @user.answers.average(:answer_1)
    @total_1 = current_user.answers.average(:answer_1)
    @total_2 = current_user.answers.average(:answer_2)
    @total_3 = current_user.answers.average(:answer_3)
    @total_4 = current_user.answers.average(:answer_4)
    @total_5 = current_user.answers.average(:answer_5)

    # @total = User.all.answers.average(:answer_1)

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
# end

def sum
  @answer.answer_1 = params[:answer_1]
  @answer_1 = []

  @answer.answer_1.each do |total|
    @answer_1.push(total)

    return @answer_1.total

end
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
