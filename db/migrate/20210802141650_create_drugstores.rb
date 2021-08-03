class CreateDrugstores < ActiveRecord::Migration[6.1]
  def change
    create_table :drugstores do |t|
      t.string :name
      t.float :cashBalance
      t.string :openingHours
      t.json :masks

      t.timestamps
    end
  end
end
