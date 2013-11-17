class ArchersController < ApplicationController
  before_action :set_archer, only: [:show, :edit, :update, :destroy]

  # GET /archers
  # GET /archers.json
  def index
    @archers = Archer.all
  end

  # GET /archers/1
  # GET /archers/1.json
  def show
    @id = BSON::ObjectId.from_string(params[:id])
    @events = Event.where('rounds.archer_id' => @id).all
  end

  # GET /archers/new
  def new
    @archer = Archer.new
  end

  # GET /archers/1/edit
  def edit
  end

  # POST /archers
  # POST /archers.json
  def create
    @archer = Archer.new(archer_params)

    respond_to do |format|
      if @archer.save
        format.html { redirect_to @archer, notice: 'Archer was successfully created.' }
        format.json { render action: 'show', status: :created, location: @archer }
      else
        format.html { render action: 'new' }
        format.json { render json: @archer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /archers/1
  # PATCH/PUT /archers/1.json
  def update
    respond_to do |format|
      if @archer.update(archer_params)
        format.html { redirect_to @archer, notice: 'Archer was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @archer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /archers/1
  # DELETE /archers/1.json
  def destroy
    @archer.destroy
    respond_to do |format|
      format.html { redirect_to archers_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_archer
      @archer = Archer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def archer_params
      params.require(:archer).permit(:name)
    end
end
