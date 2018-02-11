class Task < ApplicationRecord
  has_many :assignments
  has_many :users, through: :assignments
  belongs_to :bank
  delegate :name, :to => :bank, :prefix => true

  def formatted_name
    "#{project} | #{task_name}"
  end

end
