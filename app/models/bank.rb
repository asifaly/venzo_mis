class Bank < ApplicationRecord
  has_many :contacts, through: :bankcontacts
  has_many :bankcontacts
  validates :name, presence: true
end
