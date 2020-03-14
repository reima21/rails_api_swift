class User < ActiveRecord::Base
  has_many :userposts
  has_many :post, through: :userposts
  # Include default devise modules.
  devise :database_authenticatable, :registerable,
          :recoverable, :rememberable, :trackable, :validatable
          # :confirmable, :omniauthable
  include DeviseTokenAuth::Concerns::User
end
