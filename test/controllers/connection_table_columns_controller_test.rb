require 'test_helper'

class ConnectionTableColumnsControllerTest < ActionController::TestCase
  setup do
    @connection_table_column = connection_table_columns(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:connection_table_columns)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create connection_table_column" do
    assert_difference('ConnectionTableColumn.count') do
      post :create, connection_table_column: { alias: @connection_table_column.alias, columnname: @connection_table_column.columnname, connection_table_id: @connection_table_column.connection_table_id, display: @connection_table_column.display, foreignkey: @connection_table_column.foreignkey, grouping: @connection_table_column.grouping, type: @connection_table_column.type }
    end

    assert_redirected_to connection_table_column_path(assigns(:connection_table_column))
  end

  test "should show connection_table_column" do
    get :show, id: @connection_table_column
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @connection_table_column
    assert_response :success
  end

  test "should update connection_table_column" do
    patch :update, id: @connection_table_column, connection_table_column: { alias: @connection_table_column.alias, columnname: @connection_table_column.columnname, connection_table_id: @connection_table_column.connection_table_id, display: @connection_table_column.display, foreignkey: @connection_table_column.foreignkey, grouping: @connection_table_column.grouping, type: @connection_table_column.type }
    assert_redirected_to connection_table_column_path(assigns(:connection_table_column))
  end

  test "should destroy connection_table_column" do
    assert_difference('ConnectionTableColumn.count', -1) do
      delete :destroy, id: @connection_table_column
    end

    assert_redirected_to connection_table_columns_path
  end
end
