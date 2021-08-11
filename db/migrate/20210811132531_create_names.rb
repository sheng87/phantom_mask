class CreateNames < ActiveRecord::Migration[6.1]
  def change
    create_table :names do |t|
      t.decimal :cashBalance

      t.timestamps
    end
  end
end
