json.array!(@connection_tables) do |connection_table|
  json.extract! connection_table, :alias, :tablename, :display, :connection_id
  json.url connection_table_url(connection_table, format: :json)
end
