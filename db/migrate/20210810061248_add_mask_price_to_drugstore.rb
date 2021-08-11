class AddMaskPriceToDrugstore < ActiveRecord::Migration[6.1]
  def change
    add_column :drugstores, :mask_price, :decimal
  end
end
