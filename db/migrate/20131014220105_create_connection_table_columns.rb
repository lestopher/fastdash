class CreateConnectionTableColumns < ActiveRecord::Migration
  def change
    create_table :connection_table_columns do |t|
      t.string :alias
      t.string :columnname
      t.string :type
      t.string :grouping
      t.string :foreignkey
      t.boolean :display
      t.references :connection_table, index: true

      t.timestamps
    end
  end
end
