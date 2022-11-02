require 'rails_helper'

RSpec.describe CharityFacade do
  it 'can retrieve wildlife charities', :vcr do
    wildlife_charities = CharityFacade.wildlife_charities

    expect(wildlife_charities.count).to eq(10)
  end

    it 'can retrieve animal charities', :vcr do
    animal_charities = CharityFacade.animal_charities

    expect(animal_charities.count).to eq(9)
  end
end