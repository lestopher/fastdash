class Connection < ActiveRecord::Base
  validates :host, :username, :password, :database, presence: true
  has_many :connection_tables, :dependent => :destroy

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
