json.array!(@connection_table_columns) do |connection_table_column|
  json.extract! connection_table_column, :alias, :columnname, :columntype, :grouping, :foreignkey, :display, :connection_table_id
  json.url connection_table_column_url(connection_table_column, format: :json)
end
