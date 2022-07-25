class Recruiter::Recruiter < ApplicationRecord
  has_secure_password
  validates :email, presence: true, :uniqueness => {:message => "E-mail já existe cadastrado no sistema"}
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }

  validates :password,
            length: { minimum: 6 },
            if: -> { new_record? || !password.nil? }

  has_many :user_products
  has_many :permission_users
  has_many :products, :through => :user_products
  has_many :permissions, :through => :permission_users
end
