class Category < ActiveRecord::Base
  has_many :questions

  def points_earned
    self.questions.where("last_attempt_correct = ?", true).count
  end

  def points_possible
    self.questions.count
  end

end
