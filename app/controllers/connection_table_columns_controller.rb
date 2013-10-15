class ConnectionTableColumnsController < ApplicationController
  before_action :set_connection_table_column, only: [:show, :edit, :update, :destroy]

  # GET /connection_table_columns
  # GET /connection_table_columns.json
  def index
    @connection_table_columns = ConnectionTableColumn.all
  end

  # GET /connection_table_columns/1
  # GET /connection_table_columns/1.json
  def show
  end

  # GET /connection_table_columns/new
  # def new
  #   @connection_table_column = ConnectionTableColumn.new
  # end

  # GET /connection_table_columns/1/edit
  def edit
  end

  # POST /connection_table_columns
  # POST /connection_table_columns.json
  def create
    @connection_table_column = ConnectionTableColumn.new(connection_table_column_params)

    respond_to do |format|
      if @connection_table_column.save
        format.html { redirect_to @connection_table_column, notice: 'Connection table column was successfully created.' }
        format.json { render action: 'show', status: :created, location: @connection_table_column }
      else
        format.html { render action: 'new' }
        format.json { render json: @connection_table_column.errors, status: :unprocessable_entity }
      end
    end

  end

  # PATCH/PUT /connection_table_columns/1
  # PATCH/PUT /connection_table_columns/1.json
  def update
    respond_to do |format|
      if @connection_table_column.update(connection_table_column_params)
        format.html { redirect_to @connection_table_column, notice: 'Connection table column was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @connection_table_column.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /connection_table_columns/1
  # DELETE /connection_table_columns/1.json
  def destroy
    @connection_table_column.destroy
    respond_to do |format|
      format.html { redirect_to connection_table_columns_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_connection_table_column
      @connection_table_column = ConnectionTableColumn.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def connection_table_column_params
      params.require(:connection_table_column).permit(:alias, :columnname, :type, :grouping, :foreignkey, :display, :connection_table_id)
    end
end
