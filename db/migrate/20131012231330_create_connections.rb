class CreateConnections < ActiveRecord::Migration
  def change
    create_table :connections do |t|
      t.string :host
      t.integer :port
      t.string :socket
      t.string :username
      t.string :password
      t.string :database
      t.string :encoding

      t.timestamps
    end
  end
end
