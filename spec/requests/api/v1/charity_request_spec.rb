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
      expect(charity[:attributes].keys).to eq([:description, :ein, :name, :slug, :profile_url, :location, :tags])
      expect(charity[:attributes][:description]).to be_a String
      expect(charity[:attributes][:ein]).to be_a String
      expect(charity[:attributes][:name]).to be_a String
      expect(charity[:attributes][:slug]).to be_a String
      expect(charity[:attributes][:profile_url]).to be_a String
      expect(charity[:attributes][:location]).to be_a String
      expect(charity[:attributes][:tags]).to be_an Array
    end
  end
end
