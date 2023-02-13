class WorkloadsController < ApplicationController
  before_action :set_workload, only: %i[ show edit update destroy ]

  # GET /workloads or /workloads.json
  def index
    @workloads = Workload.all
  end

  # GET /workloads/1 or /workloads/1.json
  def show
  end

  # GET /workloads/new
  def new
    @workload = Workload.new
  end

  # GET /workloads/1/edit
  def edit
  end

  # POST /workloads or /workloads.json
  def create
    @workload = Workload.new(workload_params)

    respond_to do |format|
      if @workload.save
        format.html { redirect_to workload_url(@workload), notice: "Workload was successfully created." }
        format.json { render :show, status: :created, location: @workload }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @workload.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /workloads/1 or /workloads/1.json
  def update
    respond_to do |format|
      if @workload.update(workload_params)
        format.html { redirect_to workload_url(@workload), notice: "Workload was successfully updated." }
        format.json { render :show, status: :ok, location: @workload }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @workload.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /workloads/1 or /workloads/1.json
  def destroy
    @workload.destroy

    respond_to do |format|
      format.html { redirect_to workloads_url, notice: "Workload was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_workload
      @workload = Workload.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def workload_params
      params.require(:workload).permit(:student_id, :course_id)
    end
end
