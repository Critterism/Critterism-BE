require 'rails_helper'

RSpec.describe 'Charity API Requests' do
  it 'retrives all wildlife charities' , :vcr do
    get '/api/v1/charities/wildlife'

    expect(response).to be_successful
    response_body = JSON.parse(response.body, symbolize_names: true)
    charities = response_body[:data]

    expect(charities.count).to eq 10
    charities.each do |charity|
      expect(charity.keys).to eq([:id, :type, :attributes])
      expect(charity[:id]).to eq nil
      expect(charity[:type]).to eq('charity')
      expect(charity[:attributes].keys).to eq([:description, :ein, :id, :location, :logo, :name, :profile_url, :slug, :tags])
      expect(charity[:attributes][:description]).to be_a String
      expect(charity[:attributes][:ein]).to be_a String
      expect(charity[:attributes][:name]).to be_a String
      expect(charity[:attributes][:slug]).to be_a String
      expect(charity[:attributes][:profile_url]).to be_a String
      expect(charity[:attributes][:location]).to be_a String
      expect(charity[:attributes][:tags]).to be_an Array
    end
  end

  it 'retrives a charity by its slug', :vcr do
    bwf = Charity.new({
      description: 'Dedicated to combatting animal cruelty and illegal animal sales through rescue efforts, public education, investigations, legislation, special events and media.',
      ein: '263792479',
      id: '82ea3d2e-ee6e-4e1e-b9ef-9e890ee2be88',
      location: 'LOS ANGELES, CA',
      logoUrl: 'https://res.cloudinary.com/everydotorg/image/upload/c_lfill,w_24,h_24,dpr_2/c_crop,ar_24:24/q_auto,f_auto,fl_progressive/faja_profile/cdyalof6zfbqdmpfgdi0',
      name: 'Bunny World Foundation',
      profileUrl: 'https://www.every.org/bunny-world-foundation',
      slug: 'bunny-world-foundation',
      tags: ['animals']
    })
    
    slug = bwf.slug
    get "/api/v1/charities/#{slug}"

    expect(response).to be_successful
    response_body = JSON.parse(response.body, symbolize_names: true)
    charity = response_body[:data]

    expect(charity.keys).to eq([:id, :type, :attributes])
    expect(charity[:id]).to eq('82ea3d2e-ee6e-4e1e-b9ef-9e890ee2be88')
    expect(charity[:type]).to eq('charity')
    expect(charity[:attributes].keys).to eq([:description, :ein, :id, :location, :logo, :name, :profile_url, :slug, :tags])
    expect(charity[:attributes][:description]).to eq('Dedicated to combatting animal cruelty and illegal animal sales through rescue efforts, public education, investigations, legislation, special events and media.')
    expect(charity[:attributes][:ein]).to eq('263792479')
    expect(charity[:attributes][:name]).to eq('Bunny World Foundation')
    expect(charity[:attributes][:slug]).to eq('')
    expect(charity[:attributes][:profile_url]).to eq('https://www.every.org/bunny-world-foundation')
    expect(charity[:attributes][:logo]).to eq('https://res.cloudinary.com/everydotorg/image/upload/c_lfill,w_24,h_24,dpr_2/c_crop,ar_24:24/q_auto,f_auto,fl_progressive/faja_profile/cdyalof6zfbqdmpfgdi0')
    expect(charity[:attributes][:location]).to eq('LOS ANGELES, CA')
    expect(charity[:attributes][:tags]).to be_an Array
    expect(charity[:attributes][:tags]).to eq()
  end
end
