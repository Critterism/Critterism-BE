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

  it 'gets a single charity by slug', :vcr do
    parsed = CharityService.get_charity_by_slug('bunny-world-foundation')[:data]

    expect(parsed).to be_a Hash
    expect(parsed.keys).to eq([:nonprofit, :nonprofitTags])
    expect(parsed[:nonprofit].keys).to eq(
      [
        :id,
        :name,
        :isDisbursable,
        :locationAddress,
        :locationLatLng,
        :ein,
        :description,
        :descriptionLong,
        :primarySlug,
        :logoCloudinaryId,
        :coverImageCloudinaryId,
        :nteeCode,
        :nteeCodeMeaning,
        :hasAdmin,
        :directDisbursement,
        :websiteUrl,
        :logoUrl,
        :coverImageUrl,
        :profileUrl
      ])
    expect(parsed[:nonprofit][:id]).to be_a String
    expect(parsed[:nonprofit][:name]).to eq('Bunny World Foundation')
    expect(parsed[:nonprofit][:ein]).to eq('263792479')
    expect(parsed[:nonprofit][:isDisbursable]).to eq true
    expect(parsed[:nonprofit][:description]).to include('Dedicated to combatting animal cruelty and illegal animal sales')
    expect(parsed[:nonprofit][:descriptionLong]).to include('Established on August 22, 2008, Bunny World Foundation Inc. (BWF)')
    expect(parsed[:nonprofit][:locationAddress]).to eq('LOS ANGELES, CA')
    expect(parsed[:nonprofit][:nteeCode]).to eq('D20')
    expect(parsed[:nonprofit][:nteeCodeMeaning]).to be_a Hash
    expect(parsed[:nonprofit][:nteeCodeMeaning].keys).to eq([:majorCode, :majorMeaning, :decileCode, :decileMeaning])
    expect(parsed[:nonprofit][:nteeCodeMeaning].values).to be_all String
    expect(parsed[:nonprofit][:logoCloudinaryId]).to eq('faja_profile/cdyalof6zfbqdmpfgdi0')
    expect(parsed[:nonprofit][:coverImageCloudinaryId]).to eq('faja_cover/cdivrgtrmylkqscg1spd')
    expect(parsed[:nonprofit][:logoUrl]).to include('https://res.cloudinary.com/everydotorg/image/upload/')
    expect(parsed[:nonprofit][:coverImageUrl]).to include('https://res.cloudinary.com/everydotorg/image/upload/')
    expect(parsed[:nonprofit][:profileUrl]).to eq('https://www.every.org/bunny-world-foundation')
    expect(parsed[:nonprofitTags]).to be_an Array
    parsed[:nonprofitTags].each do |tag|
      expect(tag.keys).to eq([:id, :tagName, :causeCategory, :title, :tagImageCloudinaryId, :tagUrl, :tagImageUrl])
      expect(tag.values).to be_all String
    end
  end
end
