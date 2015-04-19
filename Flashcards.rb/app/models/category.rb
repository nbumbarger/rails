class Category < ActiveRecord::Base
  has_many :questions
  validates :name, presence: true, uniqueness: true
  default_scope {where(:deleted_at=> nil)}

  def score
    questions.where("last_attempt = ?", true).count
  end

  def points_possible
    questions.count
  end

  def soft_destroy
    update(deleted_at: Time.zone.now)
  end

  def soft_restore
    update(deleted_at: nil)    
  end


end
