class ConnectionTable < ActiveRecord::Base
  belongs_to :connection
  has_many :connection_table_columns, :dependent => :destroy
end
