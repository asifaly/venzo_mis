# frozen_string_literal: true

class CreateLeaves < ActiveRecord::Migration[5.1]
  def change
    create_table :leaves do |t|
      t.date :leavedate
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
