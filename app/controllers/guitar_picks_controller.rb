class GuitarPicksController < ApplicationController
  before_action :set_guitar_pick, only: [:show, :edit, :update, :destroy]

  # GET /guitar_picks
  # GET /guitar_picks.json
  def index
    @guitar_picks = GuitarPick.all
  end

  # GET /guitar_picks/1
  # GET /guitar_picks/1.json
  def show
  end

  # GET /guitar_picks/new
  def new
    @guitar_pick = GuitarPick.new
  end

  # GET /guitar_picks/1/edit
  def edit
  end

  # POST /guitar_picks
  # POST /guitar_picks.json
  def create
    @guitar_pick = GuitarPick.new(guitar_pick_params)

    respond_to do |format|
      if @guitar_pick.save
        format.html { redirect_to @guitar_pick, notice: 'Guitar pick was successfully created.' }
        format.json { render :show, status: :created, location: @guitar_pick }
      else
        format.html { render :new }
        format.json { render json: @guitar_pick.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /guitar_picks/1
  # PATCH/PUT /guitar_picks/1.json
  def update
    respond_to do |format|
      if @guitar_pick.update(guitar_pick_params)
        format.html { redirect_to @guitar_pick, notice: 'Guitar pick was successfully updated.' }
        format.json { render :show, status: :ok, location: @guitar_pick }
      else
        format.html { render :edit }
        format.json { render json: @guitar_pick.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /guitar_picks/1
  # DELETE /guitar_picks/1.json
  def destroy
    @guitar_pick.destroy
    respond_to do |format|
      format.html { redirect_to guitar_picks_url, notice: 'Guitar pick was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_guitar_pick
      @guitar_pick = GuitarPick.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def guitar_pick_params
      params.require(:guitar_pick).permit(:guitar_id, :for_guitar_type, :user_id)
    end
end
