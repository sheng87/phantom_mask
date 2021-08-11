class ChangePurchaseHistoriesColumn < ActiveRecord::Migration[6.1]
  def change
    rename_column :purchase_histories, :drugstore_id, :user_id
  end
end
