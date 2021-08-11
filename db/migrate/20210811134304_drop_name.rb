class DropName < ActiveRecord::Migration[6.1]
  def change
    def up
      drop_table :names
    end
  
    def down
      raise ActiveRecord::IrreversibleMigration
    end
  end
end
