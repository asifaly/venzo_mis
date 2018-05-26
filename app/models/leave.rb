# frozen_string_literal: true

class Leave < ApplicationRecord
  belongs_to :user
  delegate :username, to: :user, prefix: true
  validates :leavedate, presence: true
end
