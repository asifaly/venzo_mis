class Assignment < ApplicationRecord
  belongs_to :user
  belongs_to :task
  belongs_to :activity

  # scope :today, -> { where("cast(strftime('%d', task_date) as int) = ?", Time.now.day) }
  # scope :yesterday, -> { where("cast(strftime('%d', task_date) as int) = ?", Time.now.day - 1) }
  # scope :thismonth, -> { where("cast(strftime('%m', task_date) as int) = ?", Time.now.month) }
  # scope :lastmonth, -> { where("cast(strftime('%m', task_date) as int) = ?", Time.now.month - 1) }
  scope :byuser, -> (userid){ where(user_id: userid) }

  scope :today, -> { where("extract(day from task_date) = ?", Time.now.day) }
  scope :yesterday, -> { where("extract(day from task_date) = ?", Time.now.day - 1) }
  scope :thismonth, -> { where("extract(month from task_date) = ?", Time.now.month) }
  scope :lastmonth, -> { where("extract(month from task_date) = ?", Time.now.month - 1) }

end
