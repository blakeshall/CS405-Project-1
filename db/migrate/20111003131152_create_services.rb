class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.string :name
      t.text :description
      t.decimal :amount
      t.boolean :reoccuring
      t.boolean :active, :default => true

      t.timestamps
    end
  end
end
