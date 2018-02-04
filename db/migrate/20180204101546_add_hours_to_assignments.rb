class AddHoursToAssignments < ActiveRecord::Migration[5.1]
  def change
    add_column :assignments, :hours, :decimal, :precision => 2, :scale => 2
  end
end
