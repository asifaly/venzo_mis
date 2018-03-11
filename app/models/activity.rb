class Activity < ApplicationRecord
  validates :name, presence: true
  has_many :assignments, dependent: :destroy
end
