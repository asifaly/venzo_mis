# frozen_string_literal: true

class CreateTasks < ActiveRecord::Migration[5.1]
  def change
    create_table :tasks do |t|
      t.string :project
      t.string :task_name
      t.string :activity_name

      t.timestamps
    end
  end
end
