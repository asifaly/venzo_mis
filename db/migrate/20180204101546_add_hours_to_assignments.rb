# frozen_string_literal: true

class AddHoursToAssignments < ActiveRecord::Migration[5.1]
  def change
    add_column :assignments, :hours, :numeric, precision: 4, scale: 2
  end
end
