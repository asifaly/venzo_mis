class Contact < ApplicationRecord
  belongs_to :role
  delegate :name, :to => :contact, :prefix => true
  delegate :name, :to => :bank, :prefix => true
  delegate :title, :to => :role, :prefix => true
  has_many :banks, through: :bankcontacts
  has_many :bankcontacts
end