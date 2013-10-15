class AddNullToConnectionTableColumns < ActiveRecord::Migration
  def change
    add_column :connection_table_columns, :null, :boolean
  end
end
