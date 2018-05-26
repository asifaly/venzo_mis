# frozen_string_literal: true

class Bank < ApplicationRecord
  has_many :contacts, through: :bankcontacts
  has_many :bankcontacts, dependent: :destroy
  has_many :tasks, dependent: :destroy
  validates :name, presence: true
end
