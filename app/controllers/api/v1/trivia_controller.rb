class Api::V1::TriviaController < ApplicationController

  def index
    stuff = TriviaFacade.create_trivia

    render json: TriviaSerializer.new(stuff)
  end
end