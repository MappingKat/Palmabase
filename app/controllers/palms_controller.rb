class PalmsController < ApplicationController
  before_action :set_palm, only: [:show, :edit, :update, :destroy]

  # GET /palms
  # GET /palms.json
  def index
    @palms = Palm.all
  end

  # GET /palms/1
  # GET /palms/1.json
  def show
  end

  # GET /palms/new
  def new
    @palm = Palm.new
  end

  # GET /palms/1/edit
  def edit
  end

  # POST /palms
  # POST /palms.json
  def create
    @palm = Palm.new(palm_params)

    respond_to do |format|
      if @palm.save
        format.html { redirect_to @palm, notice: 'Palm was successfully created.' }
        format.json { render action: 'show', status: :created, location: @palm }
      else
        format.html { render action: 'new' }
        format.json { render json: @palm.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /palms/1
  # PATCH/PUT /palms/1.json
  def update
    respond_to do |format|
      if @palm.update(palm_params)
        format.html { redirect_to @palm, notice: 'Palm was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @palm.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /palms/1
  # DELETE /palms/1.json
  def destroy
    @palm.destroy
    respond_to do |format|
      format.html { redirect_to palms_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_palm
      @palm = Palm.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def palm_params
      params.require(:palm).permit(:block, :number, :sph, :river, :road, :year_planted)
    end
end
