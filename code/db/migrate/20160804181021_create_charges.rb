class CreateCharges < ActiveRecord::Migration
  def change
    create_table :charges do |t|
      t.boolean :paid, default: false
      t.integer :amount, default: 0
      t.string :currency, default: "usd"      
      t.boolean :refunded, default: false
      t.references :customer, null: false, index: true

      t.timestamps null: false
    end
  end
end
