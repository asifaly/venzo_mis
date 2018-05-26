# frozen_string_literal: true

class Task < ApplicationRecord
  has_many :assignments, dependent: :destroy
  has_many :users, through: :assignments
  belongs_to :bank
  delegate :name, to: :bank, prefix: true
  validates :task_name, :project, presence: true

  def formatted_name
    "#{project} | #{task_name}"
  end
end
