class RenameTypeColumnInConnectionTableColumns < ActiveRecord::Migration
  def change
	rename_column :connection_table_columns, :type, :columntype
  end
end
