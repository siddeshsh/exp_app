class LogSheetsController < ApplicationController
  before_action :set_log_sheet, only: [:show, :edit, :update, :destroy]

  # GET /log_sheets
  def index
    @log_sheets = LogSheet.all
  end

  # GET /log_sheets/1
  def show
  end

  # GET /log_sheets/new
  def new
    @log_sheet = LogSheet.new
  end

  # GET /log_sheets/1/edit
  def edit
  end

  # POST /log_sheets
  def create
    @log_sheet = LogSheet.new(log_sheet_params)
    @log_sheet.user_id = current_user.id
    if @log_sheet.save
      redirect_to @log_sheet, notice: 'Log sheet was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /log_sheets/1
  def update
    if @log_sheet.update(log_sheet_params)
      redirect_to @log_sheet, notice: 'Log sheet was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /log_sheets/1
  def destroy
    @log_sheet.destroy
    redirect_to log_sheets_url, notice: 'Log sheet was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_log_sheet
      @log_sheet = LogSheet.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def log_sheet_params
      params.require(:log_sheet).permit(:log_type, :value, :log_day, :log_time, :note, :user_id)
    end
end
