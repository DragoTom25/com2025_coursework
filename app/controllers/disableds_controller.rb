class DisabledsController < ApplicationController
  before_action :set_disabled, only: [:show, :edit, :update, :destroy]

  # GET /disableds
  # GET /disableds.json
  def index
    @disableds = Disabled.all
  end

  # GET /disableds/1
  # GET /disableds/1.json
  def show
  end

  # GET /disableds/new
  def new
    @disabled = Disabled.new
  end

  # GET /disableds/1/edit
  def edit
  end

  # POST /disableds
  # POST /disableds.json
  def create
    @disabled = Disabled.new(disabled_params)

    respond_to do |format|
      if @disabled.save
        format.html { redirect_to @disabled, notice: 'Disabled was successfully created.' }
        format.json { render :show, status: :created, location: @disabled }
      else
        format.html { render :new }
        format.json { render json: @disabled.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /disableds/1
  # PATCH/PUT /disableds/1.json
  def update
    respond_to do |format|
      if @disabled.update(disabled_params)
        format.html { redirect_to @disabled, notice: 'Disabled was successfully updated.' }
        format.json { render :show, status: :ok, location: @disabled }
      else
        format.html { render :edit }
        format.json { render json: @disabled.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /disableds/1
  # DELETE /disableds/1.json
  def destroy
    @disabled.destroy
    respond_to do |format|
      format.html { redirect_to disableds_url, notice: 'Disabled was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_disabled
      @disabled = Disabled.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def disabled_params
      params.require(:disabled).permit(:car_plate, :disability, :name, :gender)
    end
end
