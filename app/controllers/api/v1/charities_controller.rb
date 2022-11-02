class Api::V1::CharitiesController < ApplicationController
  def wildlife
    wildlife = CharityFacade.wildlife_charities
    render json: CharitySerializer.new(wildlife)
  end
end
