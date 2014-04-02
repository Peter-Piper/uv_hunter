class CatchReportsController < ApplicationController
  skip_before_filter :authenticate_user!, only: [:index, :show]
  before_action :set_catch_report, only: [:show, :edit, :update, :destroy]

  # GET /catch_reports
  # GET /catch_reports.json
  def index
    @catch_reports = CatchReport.includes(catches: :species).page(params[:page]).per(8)
  end

  # GET /catch_reports/1
  # GET /catch_reports/1.json
  def show
  end

  # GET /catch_reports/new
  def new
    @catch_report = CatchReport.new
  end

  # GET /catch_reports/1/edit
  def edit
  end

  # POST /catch_reports
  # POST /catch_reports.json
  def create
    @catch_report = CatchReport.new(catch_report_params)

    respond_to do |format|
      if @catch_report.save
        format.html { redirect_to @catch_report, notice: 'Catch report was successfully created.' }
        format.json { render action: 'show', status: :created, location: @catch_report }
      else
        format.html { render action: 'new' }
        format.json { render json: @catch_report.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATClH/PUT /catch_reports/1
  # PATCH/PUT /catch_reports/1.json
  def update
    respond_to do |format|
      if @catch_report.update(catch_report_params)
        format.html { redirect_to @catch_report, notice: 'Catch report was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @catch_report.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /catch_reports/1
  # DELETE /catch_reports/1.json
  def destroy
    @catch_report.destroy
    respond_to do |format|
      format.html { redirect_to catch_reports_url }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_catch_report
    @catch_report = CatchReport.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def catch_report_params
    params.require(:catch_report).permit(:description, :gps_coords, :photo, :user_id, :start_time, :stop_time)
  end
end
