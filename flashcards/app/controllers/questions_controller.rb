class QuestionsController < ApplicationController

  def show
    @category = Category.find(params[:category_id])
    @question = Question.find(params[:id])
    @question_index = @question.id

  end

  def update
    @question = Question.find(params[:id])
    @category = Category.find(params[:category_id])
    @user_answer = answer_params[:answer].downcase

    @next_question = Question.find(params[:id].to_i + 1)

    @acceptable_answers = @question.answers.collect{|a| a.answer}
    if @acceptable_answers.include?(@user_answer)
      @question.update(attempts: @question.attempts + 1, last_attempt_correct: true)
    else
      @question.update(attempts: @question.attempts + 1, last_attempt_correct: false)
    end

    puts @category.questions.count.to_i
    puts @category.questions.index(@next_question).to_i
    if @category.questions.last.id <= @question.id
      redirect_to root_path
    else
      redirect_to category_question_path(@category, @next_question)
    end

  end

  private
    def answer_params
        params.require(:question).permit(:question, :answer)
    end




end