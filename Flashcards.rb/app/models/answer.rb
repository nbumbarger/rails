class Answer < ActiveRecord::Base
  belongs_to :question
  validates :text, presence: true, uniqueness: true
end
