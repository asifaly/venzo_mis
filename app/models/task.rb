class Task < ApplicationRecord
  has_many :assignments
  has_many :users, through: :assignments

  def formatted_name
    "#{project} | #{task_name} | #{activity_name}"
  end
end
