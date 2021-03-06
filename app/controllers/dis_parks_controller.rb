class DisParksController < ApplicationController
  before_action :set_dis_park, only: [:show, :edit, :update, :destroy]

  # GET /dis_parks
  # GET /dis_parks.json
  def index
    @dis_parks = DisPark.all
  end

  # GET /dis_parks/1
  # GET /dis_parks/1.json
  def show
  end

  # GET /dis_parks/new
  def new
    @dis_park = DisPark.new
  end

  # GET /dis_parks/1/edit
  def edit
  end

  # POST /dis_parks
  # POST /dis_parks.json
  def create
    @dis_park = DisPark.new(dis_park_params)

    respond_to do |format|
      if @dis_park.save
        format.html { redirect_to @dis_park, notice: 'Dis park was successfully created.' }
        format.json { render :show, status: :created, location: @dis_park }
      else
        format.html { render :new }
        format.json { render json: @dis_park.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dis_parks/1
  # PATCH/PUT /dis_parks/1.json
  def update
    respond_to do |format|
      if @dis_park.update(dis_park_params)
        format.html { redirect_to @dis_park, notice: 'Dis park was successfully updated.' }
        format.json { render :show, status: :ok, location: @dis_park }
      else
        format.html { render :edit }
        format.json { render json: @dis_park.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dis_parks/1
  # DELETE /dis_parks/1.json
  def destroy
    @dis_park.destroy
    respond_to do |format|
      format.html { redirect_to dis_parks_url, notice: 'Dis park was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dis_park
      @dis_park = DisPark.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dis_park_params
      params.require(:dis_park).permit(:car_reg, :disability, :dname, :gender)
    end
end
