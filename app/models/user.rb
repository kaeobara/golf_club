class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :golves, dependent: :destroy
        

with_options presence: true do
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\z/i.freeze
  VALID_PASSWORD_REGEX = /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]+\z/i.freeze
  validates :nickname
  validates :email, format: { with: VALID_EMAIL_REGEX }
  validates :email, uniqueness: true
  validates :password, format: { with: VALID_PASSWORD_REGEX, message: '半角英数混合で入力してください' }
  validates :password, confirmation: true
  validates :password_confirmation
end
end
