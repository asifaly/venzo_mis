# frozen_string_literal: true

class Bankcontact < ApplicationRecord
  belongs_to :bank
  belongs_to :contact
  delegate :name, to: :bank, prefix: true
  delegate :name, :role, to: :contact, prefix: true
end
