class CreateBankcontacts < ActiveRecord::Migration[5.1]
  def change
    create_table :bankcontacts do |t|
      t.bigint :bank_id
      t.bigint :contact_id

      t.timestamps
    end
  end
end
