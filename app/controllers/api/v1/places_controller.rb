class API::V1::PlacesController < ApplicationController
    def index
        places = Place.all
        if address = params[:address]
            places = places.where(address: address)
        end
        render :json => places, status: :ok
    end

    def show
        place = Place.find(params[:id])
        render :json => place, status: :ok
    end

    def create
        place = Place.create(place_params)
        if place.valid?
            render :json => place, status: :ok
        else
            render :json => {:errors => place.errors}, :status => 422 #unprocessable blahblah...
        end
    end

    def update
        place = Place.find(params[:id])
        place.update_attributes(place_params)
        render :json => place, status: :ok
    end

    private

    def place_params
        params.require(:place).permit(:name, :description, :address)
    end
end
