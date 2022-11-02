require 'rails_helper'

RSpec.describe CharityService do
  it 'displays wildlife charities', :vcr do
    parsed = CharityService.get_wildlife_charities

    expect(parsed).to be_a(Hash)
    expect(parsed).to have_key(:nonprofits)

    charity_data = parsed[:nonprofits].first

    expect(charity_data).to have_key(:description)
    expect(charity_data[:description]).to be_a(String)

    expect(charity_data).to have_key(:ein)
    expect(charity_data[:ein]).to be_a(String)

    expect(charity_data).to have_key(:name)
    expect(charity_data[:name]).to be_a(String)

    expect(charity_data).to have_key(:profileUrl)
    expect(charity_data[:profileUrl]).to be_a(String)

    expect(charity_data).to have_key(:location)
    expect(charity_data[:location]).to be_a(String)

    expect(charity_data).to have_key(:tags)
    expect(charity_data[:tags]).to be_an(Array)
    expect(charity_data[:tags][0]).to be_a(String)
  end

  it 'displays animal charities', :vcr do
    parsed = CharityService.get_animal_charities

    expect(parsed).to be_a(Hash)
    expect(parsed).to have_key(:nonprofits)

    charity_data = parsed[:nonprofits].first

    expect(charity_data).to have_key(:description)
    expect(charity_data[:description]).to be_a(String)

    expect(charity_data).to have_key(:ein)
    expect(charity_data[:ein]).to be_a(String)

    expect(charity_data).to have_key(:name)
    expect(charity_data[:name]).to be_a(String)

    expect(charity_data).to have_key(:profileUrl)
    expect(charity_data[:profileUrl]).to be_a(String)

    expect(charity_data).to have_key(:location)
    expect(charity_data[:location]).to be_a(String)

    expect(charity_data).to have_key(:tags)
    expect(charity_data[:tags]).to be_an(Array)
    expect(charity_data[:tags][0]).to be_a(String)
  end
end
