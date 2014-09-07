class PodhostsController < ApplicationController
  before_action :set_podhost, only: [:show, :edit, :update, :destroy]

  # GET /podhosts
  # GET /podhosts.json
  def index
    @podhosts = Podhost.all
  end

  # GET /podhosts/1
  # GET /podhosts/1.json
  def show
  end

  # GET /podhosts/new
  def new
    @podhost = Podhost.new
  end

  # GET /podhosts/1/edit
  def edit
  end

  # POST /podhosts
  # POST /podhosts.json
  def create
    @podhost = Podhost.new(podhost_params)

    respond_to do |format|
      if @podhost.save
        format.html { redirect_to @podhost, notice: 'Podhost was successfully created.' }
        format.json { render :show, status: :created, location: @podhost }
      else
        format.html { render :new }
        format.json { render json: @podhost.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /podhosts/1
  # PATCH/PUT /podhosts/1.json
  def update
    respond_to do |format|
      if @podhost.update(podhost_params)
        format.html { redirect_to @podhost, notice: 'Podhost was successfully updated.' }
        format.json { render :show, status: :ok, location: @podhost }
      else
        format.html { render :edit }
        format.json { render json: @podhost.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /podhosts/1
  # DELETE /podhosts/1.json
  def destroy
    @podhost.destroy
    respond_to do |format|
      format.html { redirect_to podhosts_url, notice: 'Podhost was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_podhost
      @podhost = Podhost.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def podhost_params
      params.require(:podhost).permit(:host_name, :wwn_a, :wwn_b)
    end
end
