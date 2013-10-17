class ConnectionsController < ApplicationController
  before_action :set_connection, only: [:show, :edit, :update, :destroy]

  # GET /connections
  # GET /connections.json
  def index
    @connections = Connection.all
  end

  # GET /connections/1
  # GET /connections/1.json
  def show
  end

  # GET /connections/new
  def new
    @connection = Connection.new
  end

  # GET /connections/1/edit
  def edit
  end

  # POST /connections
  # POST /connections.json
  def create
    @connection = Connection.new(connection_params)

    respond_to do |format|
      if @connection.save
        build_schema(@connection)
        format.html { redirect_to @connection, notice: 'Connection was successfully created.' }
        format.json { render action: 'show', status: :created, location: @connection }
      else
        format.html { render action: 'new' }
        format.json { render json: @connection.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /connections/1
  # PATCH/PUT /connections/1.json
  def update
    respond_to do |format|
      if @connection.update(connection_params)
        build_schema(@connection)
        format.html { redirect_to @connection, notice: 'Connection was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @connection.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /connections/1
  # DELETE /connections/1.json
  def destroy
    @connection.destroy
    respond_to do |format|
      format.html { redirect_to connections_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_connection
      @connection = Connection.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def connection_params
      params.require(:connection).permit(:adapter, :host, :port, :socket, :username, :password, :database, :encoding)
    end

    def build_schema(connection)
      link = Link.establish_connection(connection.connection_info)
      tables = link.connection.tables
      connection.connection_tables.delete_all
      tables.each do |table|
        newTable = connection.connection_tables.build(:alias=>table, :tablename=>table, :display=>true)
        newTable.save

        newTableColumns = link.connection.columns(table)
        newTableColumns.each do |column|

          # t.string   "alias"
          # t.string   "columnname"
          # t.string   "columntype"
          # t.string   "grouping"
          # t.string   "foreignkey"
          # t.boolean  "display"
          # t.integer  "connection_table_id"
          # t.datetime "created_at"
          # t.datetime "updated_at"
          # t.boolean  "null"
          newColumn = newTable.connection_table_columns.build(
            :alias => column.name,
            :columnname => column.name,
            :columntype => column.sql_type,
            :grouping => "Dimension",
            :foreignkey => nil,
            :display => true,
            :null => column.null)
          newColumn.save
        end
      end
    end
end
