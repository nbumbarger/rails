class QuestionsController < ApplicationController

  def show
    @category = Category.find(params[:category_id])
    @question = Question.find(params[:id])
  end

  def update
    @question = Question.find(params[:id])
    @category = Category.find(params[:category_id])
    @user_answer = answer_params[:answer].downcase

    if @question.acceptable_answers.include?(@user_answer)
      @question.update(attempts: @question.attempts + 1, last_attempt_correct: true)
    else
      @question.update(attempts: @question.attempts + 1, last_attempt_correct: false)
    end

    @question = @question.next
    if @question
      redirect_to category_question_path(@category, @question)
    else redirect_to root_path
    end
  end

  private
    def answer_params
        params.require(:question).permit(:question, :answer)
    end




end