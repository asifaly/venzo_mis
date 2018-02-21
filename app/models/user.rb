class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :assignments
  has_many :tasks, through: :assignments
  has_many :leaves
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
