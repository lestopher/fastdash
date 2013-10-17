class AddAddapterToConnection < ActiveRecord::Migration
  def change
    add_column :connections, :adapter, :string
  end
end
