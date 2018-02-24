class Bank < ApplicationRecord
  has_many :contacts, through: :bankcontacts
  has_many :bankcontacts, dependent: :destroy
  validates :name, presence: true
end
