# frozen_string_literal: true

class RemoveActivityNameFromTasks < ActiveRecord::Migration[5.1]
  def change
    remove_column :tasks, :activity_name, :string
  end
end
