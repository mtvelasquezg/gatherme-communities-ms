class ComunitiesController < ApplicationController
  before_action :set_comunity, only: [:show, :update, :destroy]

  # GET /comunities
  def index
    @comunities = Comunity.all

    render json: @comunities
  end

  # GET /comunities/1
  def show
    render json: @comunity
  end

  # POST /comunities
  def create
    @comunity = Comunity.new(comunity_params)

    if @comunity.save
      render json: @comunity, status: :created, location: @comunity
    else
      render json: @comunity.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /comunities/1
  def update
    if @comunity.update(comunity_params)
      render json: @comunity
    else
      render json: @comunity.errors, status: :unprocessable_entity
    end
  end

  # DELETE /comunities/1
  def destroy
    @comunity.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_comunity
      @comunity = Comunity.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def comunity_params
      params.require(:comunity).permit(:tag, :name, :banner, :description, :users, :administrators)
    end
end
