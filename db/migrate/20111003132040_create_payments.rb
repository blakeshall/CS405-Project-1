class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.decimal :amount
      t.references :service

      t.timestamps
    end
    add_index :payments, :service_id
  end
end
