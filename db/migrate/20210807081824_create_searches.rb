class CreateSearches < ActiveRecord::Migration[6.1]
  def change
    create_table :searches do |t|
      t.time :opening_time
      t.date :opening_days
      t.string :mask_name
      t.decimal :min_price
      t.decimal :max_price
      t.string :drugstore_name
      t.decimal :transaction_amounts
      t.date :start_date
      t.date :end_date

      t.timestamps
    end
  end
end
