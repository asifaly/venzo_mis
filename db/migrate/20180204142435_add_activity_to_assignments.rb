class AddActivityToAssignments < ActiveRecord::Migration[5.1]
  def change
    add_reference :assignments, :activity, foreign_key: true
  end
end
