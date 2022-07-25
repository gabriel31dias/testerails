class Submission < ApplicationRecord
  validates :job_id, presence: true
  validates :email, presence: true, uniqueness: { scope: :id }
  validates :mobile_phone, presence: true, uniqueness: { scope: :id }
end
