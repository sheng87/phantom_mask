class ChangeMasksDrugstoresToDrugstoresMasks < ActiveRecord::Migration[6.1]
  def change
    rename_table :masks_drugstores, :drugstores_masks
  end
end
