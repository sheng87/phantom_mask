class CreateDrugstores < ActiveRecord::Migration[6.1]
  def change
    create_table :drugstores do |t|
      t.string :name
      t.decimal :cashBalance
      t.string :openingHours

      t.timestamps
    end
  end
end
