class CreatePurchaseHistories < ActiveRecord::Migration[6.1]
  def change
    create_table :purchase_histories do |t|
      t.string :drugstore_name
      t.string :mask_name
      t.decimal :transaction_amount
      t.datetime :transaction_date
      t.integer :drugstore_id

      t.timestamps
    end
  end
end
