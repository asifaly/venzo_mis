class AddBankToTasks < ActiveRecord::Migration[5.1]
  def change
    add_reference :tasks, :bank, foreign_key: true
  end
end
