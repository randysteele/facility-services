class WorkordersController < ApplicationController
  before_action :set_workorder, only: %i[ show edit update destroy ]
  before_action :get_client

  # GET /workorders or /workorders.json
  def index
    @workorders = Workorder.all
  end

  # GET /workorders/1 or /workorders/1.json
  def show
  end

  # GET /workorders/new
  def new
    @workorder = Workorder.new
  end

  # GET /workorders/1/edit
  def edit
  end

  # POST /workorders or /workorders.json
  def create
    @workorder = Workorder.new(workorder_params)

    respond_to do |format|
      if @workorder.save
        format.html { redirect_to @workorder, notice: "Workorder was successfully created." }
        format.json { render :show, status: :created, location: @workorder }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @workorder.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /workorders/1 or /workorders/1.json
  def update
    respond_to do |format|
      if @workorder.update(workorder_params)
        format.html { redirect_to @workorder, notice: "Workorder was successfully updated." }
        format.json { render :show, status: :ok, location: @workorder }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @workorder.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /workorders/1 or /workorders/1.json
  def destroy
    @workorder.destroy
    respond_to do |format|
      format.html { redirect_to workorders_url, notice: "Workorder was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_workorder
      @workorder = Workorder.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def workorder_params
      params.require(:workorder).permit(:body, :caller, :technician, :target_date, :resolution, :client_id)
    end
    
    def get_client
      @client = Client.find(params[:client_id])
    end
end
