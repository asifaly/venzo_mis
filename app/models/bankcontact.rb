class Bankcontact < ApplicationRecord
  belongs_to :bank
  belongs_to :contact
end
