class NeosController < ApplicationController
  before_action :set_neo, only: [:show, :edit, :update, :destroy]

  # GET /neos
  # GET /neos.json
  def index
    @neos = Neo.all
  end

  # GET /neos/1
  # GET /neos/1.json
  def show
  end

  # GET /neos/new
  def new
    @neo = Neo.new
  end

  # GET /neos/1/edit
  def edit
  end

  # POST /neos
  # POST /neos.json
  def create
    @neo = Neo.new(neo_params)

    respond_to do |format|
      if @neo.save
        format.html { redirect_to @neo, notice: 'Neo was successfully created.' }
        format.json { render :show, status: :created, location: @neo }
      else
        format.html { render :new }
        format.json { render json: @neo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /neos/1
  # PATCH/PUT /neos/1.json
  def update
    respond_to do |format|
      if @neo.update(neo_params)
        format.html { redirect_to @neo, notice: 'Neo was successfully updated.' }
        format.json { render :show, status: :ok, location: @neo }
      else
        format.html { render :edit }
        format.json { render json: @neo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /neos/1
  # DELETE /neos/1.json
  def destroy
    @neo.destroy
    respond_to do |format|
      format.html { redirect_to neos_url, notice: 'Neo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_neo
      @neo = Neo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def neo_params
      params.fetch(:neo, {})
    end
end
