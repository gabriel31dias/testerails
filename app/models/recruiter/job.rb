class Recruiter::Job < ApplicationRecord
  validates :title, presence: true
  validates :description, presence: true
  validates :recruiter_id, presence: true

  enum status: [:active, :inactive]
end
