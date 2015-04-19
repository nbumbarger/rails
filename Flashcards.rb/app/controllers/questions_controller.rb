class QuestionsController < ApplicationController

  def show
    @category = Category.find(params[:category_id])
    @question = Question.find(params[:id])
  end

  def update
    @question = Question.find(params[:id])
    @category = Category.find(params[:category_id])
    @user_answer = answer_params[:answer].downcase
    @answer_feedback = "neutral"

    if @question.acceptable_answers.include?(@user_answer)
      @answer_feedback = "correct"
      @question.update(correct_count: @question.correct_count + 1, last_attempt: true)
    else
      @answer_feedback = "incorrect"
      @question.update(incorrect_count: @question.incorrect_count + 1, last_attempt: false)
    end

    @question = @question.next
    if @question
      redirect_to category_question_path(@category, @question, :prev_answer=> @answer_feedback)
    else @category.update(play_count: @category.play_count + 1, cumulative_score: @category.cumulative_score + @category.score)
      redirect_to root_path
    end
  end

  private
    def answer_params
        params.require(:question).permit(:question, :answer)
    end

end