class ArtworksController < OpenReadController
  before_action :set_artwork, only: [:show, :update, :destroy]

  # GET /artworks
  def index
    @artworks = Artwork.all

    render json: @artworks
  end

  # GET /artworks/1
  def show
    render json: @artwork
  end


  # POST /artworks
  def create
    # captures params from artwork object; show_id is a property of 'artwork'
    @show_id = params[:artwork][:show_id]
    # now that we have grabbed the show_id from the artwork object
    # we can use it to define a variable called `current show`
    # note: it's important to use @ before show_id on line 23 and before current_show on line 29
    @current_show = current_user.shows.find(@show_id)
    # @artworks now uses current_show to build an artwork
    # from current_show with the params from the artwork object
    # to get a better idea of the artwork object look at db/schema.rb
    # or /scripts/create-artwork.sh
    @artwork = @current_show.artworks.build(artwork_params)
    if @artwork.save
      render json: @artwork, status: :created, location: @artwork
    else
      render json: @artwork.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /artworks/1
  def update
    if @artwork.update(artwork_params)
      render json: @artwork
    else
      render json: @artwork.errors, status: :unprocessable_entity
    end
  end

  # DELETE /artworks/1
  def destroy
    @artwork.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_artwork
      @artwork = Artwork.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def artwork_params
      params.require(:artwork).permit(:title, :artist, :yearcreated, :artform, :materials, :surface, :dimensions, :show_id)
    end
end
