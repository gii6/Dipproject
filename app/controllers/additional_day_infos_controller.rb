class AdditionalDayInfosController < ApplicationController
  before_action :set_additional_day_info, only: [:show, :edit, :update, :destroy]

  # GET /additional_day_infos
  # GET /additional_day_infos.json
  def index
    @additional_day_infos = AdditionalDayInfo.all
  end

  # GET /additional_day_infos/1
  # GET /additional_day_infos/1.json
  def show
  end

  # GET /additional_day_infos/new
  def new
    @additional_day_info = AdditionalDayInfo.new
  end

  # GET /additional_day_infos/1/edit
  def edit
  end

  # POST /additional_day_infos
  # POST /additional_day_infos.json
  def create
    @additional_day_info = AdditionalDayInfo.new(additional_day_info_params)

    respond_to do |format|
      if @additional_day_info.save
        format.html { redirect_to @additional_day_info, notice: 'Additional day info was successfully created.' }
        format.json { render :show, status: :created, location: @additional_day_info }
      else
        format.html { render :new }
        format.json { render json: @additional_day_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /additional_day_infos/1
  # PATCH/PUT /additional_day_infos/1.json
  def update
    respond_to do |format|
      if @additional_day_info.update(additional_day_info_params)
        format.html { redirect_to @additional_day_info, notice: 'Additional day info was successfully updated.' }
        format.json { render :show, status: :ok, location: @additional_day_info }
      else
        format.html { render :edit }
        format.json { render json: @additional_day_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /additional_day_infos/1
  # DELETE /additional_day_infos/1.json
  def destroy
    @additional_day_info.destroy
    respond_to do |format|
      format.html { redirect_to additional_day_infos_url, notice: 'Additional day info was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_additional_day_info
      @additional_day_info = AdditionalDayInfo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def additional_day_info_params
      params.require(:additional_day_info).permit(:day, :style, :year_id)
    end
end
