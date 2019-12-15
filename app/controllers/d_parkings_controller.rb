class DParkingsController < ApplicationController
  before_action :set_d_parking, only: [:show, :edit, :update, :destroy]

  # GET /d_parkings
  # GET /d_parkings.json
  def index
    @d_parkings = DParking.all
  end

  # GET /d_parkings/1
  # GET /d_parkings/1.json
  def show
  end

  # GET /d_parkings/new
  def new
    @d_parking = DParking.new
  end

  # GET /d_parkings/1/edit
  def edit
  end

  # POST /d_parkings
  # POST /d_parkings.json
  def create
    @d_parking = DParking.new(d_parking_params)

    respond_to do |format|
      if @d_parking.save
        format.html { redirect_to @d_parking, notice: 'D parking was successfully created.' }
        format.json { render :show, status: :created, location: @d_parking }
      else
        format.html { render :new }
        format.json { render json: @d_parking.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /d_parkings/1
  # PATCH/PUT /d_parkings/1.json
  def update
    respond_to do |format|
      if @d_parking.update(d_parking_params)
        format.html { redirect_to @d_parking, notice: 'D parking was successfully updated.' }
        format.json { render :show, status: :ok, location: @d_parking }
      else
        format.html { render :edit }
        format.json { render json: @d_parking.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /d_parkings/1
  # DELETE /d_parkings/1.json
  def destroy
    @d_parking.destroy
    respond_to do |format|
      format.html { redirect_to d_parkings_url, notice: 'D parking was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_d_parking
      @d_parking = DParking.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def d_parking_params
      params.require(:d_parking).permit(:car_plate, :disability, :gender, :name)
    end
end
