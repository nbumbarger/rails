class Question < ActiveRecord::Base
  belongs_to :category
  has_many :answers

  def index
    category.questions.order("id ASC").index(self) + 1
  end

  def acceptable_answers
    answers.collect{|a| a.answer}
  end

  def next
    category.questions.where("id > ?", id).first
  end

  def prev
    category.questions.where("id < ?", id).last
  end

end
