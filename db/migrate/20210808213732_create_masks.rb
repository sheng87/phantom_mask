class CreateMasks < ActiveRecord::Migration[6.1]
  def change
    create_table :masks do |t|
      t.string :name
      t.decimal :price

      t.timestamps
    end
  end
end
