class Connection < ActiveRecord::Base
  validates :adapter, :host, :username, :password, :database, presence: true
  validate :check_adapter
  has_many :connection_tables, :dependent => :destroy

  SUPPORTED_ADAPTERS = %w(mysql postgresql)

  def connection_info
    {
      :adapter  => adapter,
      :host     => host,
      :username => username,
      :password => password,
      :database => database
    }
  end

  private
    def check_adapter
      unless SUPPORTED_ADAPTERS.include? self.adapter
        errors[:base] << "The selected adapter is not supported"
      end
    end
end
