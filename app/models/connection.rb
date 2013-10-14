class Connection < ActiveRecord::Base
  validates :host, :username, :password, :database, presence: true

  def connection_info
    {
      :adapter  => "mysql",
      :host     => host,
      :username => username,
      :password => password,
      :database => database
    }
  end
end
