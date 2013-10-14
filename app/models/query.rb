class Query < ActiveRecord::Base
  self.table_name = 'country'

  def self.setup(database)
    establish_connection(Connection.find_by(database: database).connection_info )
  end
end
