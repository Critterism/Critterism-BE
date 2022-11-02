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

  it 'retrieves an animal charity by slug', :vcr do
    charity = CharityFacade.charity('bunny-world-foundation')

    expect(charity.id).to eq('82ea3d2e-ee6e-4e1e-b9ef-9e890ee2be88')
    expect(charity.description).to eq('Dedicated to combatting animal cruelty and illegal animal sales through rescue efforts, public education, investigations, legislation, special events and media.')
    expect(charity.location).to eq('LOS ANGELES, CA')
    expect(charity.logo).to eq('https://res.cloudinary.com/everydotorg/image/upload/c_lfill,w_24,h_24,dpr_2/c_crop,ar_24:24/q_auto,f_auto,fl_progressive/faja_profile/cdyalof6zfbqdmpfgdi0')
    expect(charity.name).to eq('Bunny World Foundation')
    expect(charity.profile).to eq('https://www.every.org/bunny-world-foundation')
    expect(charity.slug).to eq('bunny-world-foundation')
  end
end
