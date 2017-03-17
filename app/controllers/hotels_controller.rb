class HotelsController < ApplicationController

  def index
    @hotels = Hotel.all
  end

  def json
    @hotels = Hotel.all
    render :json => @hotels
  end

  def show
    @hotel = Hotel.find(params[:id])
  end

  def new
  end

  def edit
    @hotel = Hotel.find(params[:id])
  end

  def create
    @hotel = Hotel.new(hotel_params)

    if @hotel.save
      redirect_to @hotel
    else
      render 'new'
    end
  end

  def update
  @hotel = Hotel.find(params[:id])

  if @hotel.update(hotel_params)
    redirect_to @hotel
  else
    render 'edit'
  end
end

  private
    def hotel_params
      params.require(:hotel).permit(:name, :address, :formatted_address, :latitude, :longitude)
    end
end
