class Assignment < ApplicationRecord
  belongs_to :user
  belongs_to :task
  belongs_to :activity
  delegate :task_name, :project, :bank, :to => :task, :prefix => true
  delegate :name, :to => :activity, :prefix => true
  delegate :username, :to => :user, :prefix => true

  scope :byuser, -> (userid){ where(user_id: userid) }
  scope :byday, -> (inpday){ where("extract(day from task_date) = ?", inpday) }
  scope :bymonth, -> (inpmonth){ where("extract(month from task_date) = ?", inpmonth) }
  # scope :today, -> { where("extract(day from task_date) = ?", Time.now.day) }
  # scope :yesterday, -> { where("extract(day from task_date) = ?", Time.now.day - 1) }
  # scope :thismonth, -> { where("extract(month from task_date) = ?", Time.now.month) }
  # scope :lastmonth, -> { where("extract(month from task_date) = ?", Time.now.month - 1) }
  validates :task_date, :hours, presence: true
end

  #for sqlite3
  # scope :today, -> { where("cast(strftime('%d', task_date) as int) = ?", Time.now.day) }
  # scope :yesterday, -> { where("cast(strftime('%d', task_date) as int) = ?", Time.now.day - 1) }
  # scope :thismonth, -> { where("cast(strftime('%m', task_date) as int) = ?", Time.now.month) }
  # scope :lastmonth, -> { where("cast(strftime('%m', task_date) as int) = ?", Time.now.month - 1) }
