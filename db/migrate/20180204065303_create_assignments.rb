class CreateAssignments < ActiveRecord::Migration[5.1]
  def change
    create_table :assignments do |t|
      t.belongs_to :task, index: true
      t.belongs_to :user, index: true
      t.date :task_date
      t.string :notes

      t.timestamps
    end
  end
end
