class BegensController < ApplicationController
  before_action :set_begen, only: [:show, :edit, :update, :destroy]

  # GET /begens
  # GET /begens.json
  def index
    @begens = Begen.all
  end

  # GET /begens/1
  # GET /begens/1.json
  def show
  end

  # GET /begens/new
  def new
    @begen = Begen.new
  end

  # GET /begens/1/edit
  def edit
  end

  # POST /begens
  # POST /begens.json
  def create
    @begen = Begen.new(begen_params)

    respond_to do |format|
      if @begen.save
        format.html { redirect_to @begen, notice: 'Begen was successfully created.' }
        format.json { render :show, status: :created, location: @begen }
      else
        format.html { render :new }
        format.json { render json: @begen.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /begens/1
  # PATCH/PUT /begens/1.json
  def update
    respond_to do |format|
      if @begen.update(begen_params)
        format.html { redirect_to @begen, notice: 'Begen was successfully updated.' }
        format.json { render :show, status: :ok, location: @begen }
      else
        format.html { render :edit }
        format.json { render json: @begen.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /begens/1
  # DELETE /begens/1.json
  def destroy
    @begen.destroy
    respond_to do |format|
      format.html { redirect_to begens_url, notice: 'Begen was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_begen
      @begen = Begen.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def begen_params
      params.require(:begen).permit(:name, :comment)
    end
end
