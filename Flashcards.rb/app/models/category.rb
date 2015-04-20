class Category < ActiveRecord::Base
  has_many :questions
  validates :name, presence: true, uniqueness: true
  scope :active, -> { where(deleted_at: nil) }
  scope :deleted, -> { where.not(deleted_at: nil) }

  def score
    questions.where("last_attempt = ?", true).count
  end

  def points_possible
    questions.count
  end

  def soft_destroy
    update(deleted_at: Time.zone.now)
    questions.update_all(deleted_at: Time.zone.now)
    #todo: find a way to update all of a category's answers simultaneously, rather than by looping through questions
    questions.each { |question| question.answers.update_all(deleted_at: Time.zone.now) }
  end

  def soft_restore
    update(deleted_at: nil)
    questions.update_all(deleted_at: nil)
    #todo: find a way to update all of a category's answers simultaneously, rather than by looping through questions
    questions.each { |question| question.answers.update_all(deleted_at: nil) }
  end

end
