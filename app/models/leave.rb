class Leave < ApplicationRecord
  belongs_to :user
  delegate :username, :to => :user, :prefix => true
  validates :leavedate, presence: true
end
