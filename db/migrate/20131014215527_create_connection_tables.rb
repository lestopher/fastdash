class CreateConnectionTables < ActiveRecord::Migration
  def change
    create_table :connection_tables do |t|
      t.string :alias
      t.string :tablename
      t.boolean :display
      t.references :connection, index: true

      t.timestamps
    end
  end
end
