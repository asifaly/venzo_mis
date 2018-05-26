# frozen_string_literal: true

class AddRoleToContact < ActiveRecord::Migration[5.1]
  def change
    add_reference :contacts, :role, foreign_key: true
  end
end
