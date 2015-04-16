class Category < ActiveRecord::Base
  has_many :questions

  def points_earned
    questions.where("last_attempt_correct = ?", true).count
  end

  def points_possible
    questions.count
  end

end
