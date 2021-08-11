class RenameMaskColumnName < ActiveRecord::Migration[6.1]
  def change
    rename_column :masks, :name, :mask_name
  end
end
