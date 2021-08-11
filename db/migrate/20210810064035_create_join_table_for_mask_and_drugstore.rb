class CreateJoinTableForMaskAndDrugstore < ActiveRecord::Migration[6.1]
  def change
    create_table :masks_drugstores, id: false do |t|
      t.belongs_to :mask, index: true
      t.belongs_to :drugstore, index: true
    end  
  end
end
