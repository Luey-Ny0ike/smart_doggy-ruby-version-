class TricksController < ApplicationController
  before_action :set_trick, only: [:show, :edit, :update, :destroy]
load_and_authorize_resource
skip_authorize_resource :only => [:index, :show]

  # GET /tricks
  # GET /tricks.json
  def index
    @tricks = Trick.all
  end

  # GET /tricks/1
  # GET /tricks/1.json
  def show
  end

  # GET /tricks/new
  def new
    @trick = Trick.new
  end

  # GET /tricks/1/edit
  def edit
  end

  # POST /tricks
  # POST /tricks.json
  def create
    @trick = Trick.new(trick_params)

    respond_to do |format|
      if @trick.save
        format.html { redirect_to @trick, notice: 'Trick was successfully created.' }
        format.json { render :show, status: :created, location: @trick }
      else
        format.html { render :new }
        format.json { render json: @trick.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tricks/1
  # PATCH/PUT /tricks/1.json
  def update
    respond_to do |format|
      if @trick.update(trick_params)
        format.html { redirect_to @trick, notice: 'Trick was successfully updated.' }
        format.json { render :show, status: :ok, location: @trick }
      else
        format.html { render :edit }
        format.json { render json: @trick.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tricks/1
  # DELETE /tricks/1.json
  def destroy
    @trick.destroy
    respond_to do |format|
      format.html { redirect_to tricks_url, notice: 'Trick was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_trick
      @trick = Trick.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def trick_params
      params.require(:trick).permit(:title, :step1, :step2, :step3, :step4, :extratips, :img1, :img2, :video)
    end
end
