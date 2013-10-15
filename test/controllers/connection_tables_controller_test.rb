require 'test_helper'

class ConnectionTablesControllerTest < ActionController::TestCase
  setup do
    @connection_table = connection_tables(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:connection_tables)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create connection_table" do
    assert_difference('ConnectionTable.count') do
      post :create, connection_table: { alias: @connection_table.alias, connection_id: @connection_table.connection_id, display: @connection_table.display, tablename: @connection_table.tablename }
    end

    assert_redirected_to connection_table_path(assigns(:connection_table))
  end

  test "should show connection_table" do
    get :show, id: @connection_table
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @connection_table
    assert_response :success
  end

  test "should update connection_table" do
    patch :update, id: @connection_table, connection_table: { alias: @connection_table.alias, connection_id: @connection_table.connection_id, display: @connection_table.display, tablename: @connection_table.tablename }
    assert_redirected_to connection_table_path(assigns(:connection_table))
  end

  test "should destroy connection_table" do
    assert_difference('ConnectionTable.count', -1) do
      delete :destroy, id: @connection_table
    end

    assert_redirected_to connection_tables_path
  end
end
