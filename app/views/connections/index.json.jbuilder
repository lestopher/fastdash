json.array!(@connections) do |connection|
  json.extract! connection, :host, :port, :socket, :username, :password, :database, :encoding
  json.url connection_url(connection, format: :json)
end
