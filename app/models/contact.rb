class Contact < ApplicationRecord
  belongs_to :role
  has_many :banks, through: :bankcontacts
  has_many :bankcontacts
end
