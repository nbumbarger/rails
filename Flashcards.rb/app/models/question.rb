class Question < ActiveRecord::Base
  belongs_to :category
  has_many :answers
  validates :text, presence: true, uniqueness: {case_sensitive: false}

  def index
    category.questions.order("id ASC").index(self) + 1
  end

  def acceptable_answers
    answers.collect{|answer| answer.text}
  end

  def next
    category.questions.where("id > ?", id).first
  end

  def prev
    category.questions.where("id < ?", id).last
  end

end