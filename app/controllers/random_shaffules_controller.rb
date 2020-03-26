class RandomShaffulesController < ApplicationController
  before_action :set_random_shaffule, only: [:show, :edit, :update, :destroy]

  # GET /random_shaffules
  # GET /random_shaffules.json
  def index
    @random_shaffules = RandomShaffule.all
  end

  # GET /random_shaffules/1
  # GET /random_shaffules/1.json
  def show
  end

  # GET /random_shaffules/new
  def new
    @random_shaffule = RandomShaffule.new
  end

  # GET /random_shaffules/1/edit
  def edit
  end

  # POST /random_shaffules
  # POST /random_shaffules.json
  def create
    @random_shaffule = RandomShaffule.new(random_shaffule_params)

    respond_to do |format|
      if @random_shaffule.save
        format.html { redirect_to @random_shaffule, notice: 'Random shaffule was successfully created.' }
        format.json { render :show, status: :created, location: @random_shaffule }
      else
        format.html { render :new }
        format.json { render json: @random_shaffule.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /random_shaffules/1
  # PATCH/PUT /random_shaffules/1.json
  def update
    respond_to do |format|
      if @random_shaffule.update(random_shaffule_params)
        format.html { redirect_to @random_shaffule, notice: 'Random shaffule was successfully updated.' }
        format.json { render :show, status: :ok, location: @random_shaffule }
      else
        format.html { render :edit }
        format.json { render json: @random_shaffule.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /random_shaffules/1
  # DELETE /random_shaffules/1.json
  def destroy
    @random_shaffule.destroy
    respond_to do |format|
      format.html { redirect_to random_shaffules_url, notice: 'Random shaffule was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_random_shaffule
      @random_shaffule = RandomShaffule.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def random_shaffule_params
      params.require(:random_shaffule).permit(:question, :answer)
    end
end
