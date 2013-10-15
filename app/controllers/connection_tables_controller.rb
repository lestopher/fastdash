class ConnectionTablesController < ApplicationController
  before_action :set_connection_table, only: [:show, :edit, :update, :destroy]

  # GET /connection_tables
  # GET /connection_tables.json
  def index
    @connection_tables = ConnectionTable.all
  end

  # GET /connection_tables/1
  # GET /connection_tables/1.json
  def show
  end

  # GET /connection_tables/new
  # def new
  #   @connection_table = ConnectionTable.new
  # end

  # GET /connection_tables/1/edit
  def edit
  end

  # POST /connection_tables
  # POST /connection_tables.json
  def create
    @connection_table = ConnectionTable.new(connection_table_params)

    respond_to do |format|
      if @connection_table.save
        format.html { redirect_to @connection_table, notice: 'Connection table was successfully created.' }
        format.json { render action: 'show', status: :created, location: @connection_table }
      else
        format.html { render action: 'new' }
        format.json { render json: @connection_table.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /connection_tables/1
  # PATCH/PUT /connection_tables/1.json
  def update
    respond_to do |format|
      if @connection_table.update(connection_table_params)
        format.html { redirect_to @connection_table, notice: 'Connection table was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @connection_table.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /connection_tables/1
  # DELETE /connection_tables/1.json
  def destroy
    @connection_table.destroy
    respond_to do |format|
      format.html { redirect_to connection_tables_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_connection_table
      @connection_table = ConnectionTable.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def connection_table_params
      params.require(:connection_table).permit(:alias, :tablename, :display, :connection_id)
    end
end
