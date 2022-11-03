class Api::V1::CharitiesController < ApplicationController
  def wildlife
    wildlife = CharityFacade.wildlife_charities
    render json: CharitySerializer.new(wildlife)
  end

  def animals
    animals = CharityFacade.wildlife_charities
    render json: CharitySerializer.new(animals)
  end

  def show
    charity = CharityFacade.charity(params[:slug])
    render json: CharitySerializer.new(charity)
  end
end
