class Role < ApplicationRecord
  has_many :contacts, dependent: :destroy
  validates :title, presence: true
end
