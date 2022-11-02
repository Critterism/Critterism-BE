require 'rails_helper'

RSpec.describe CharityDetails, type: :poro do
  it 'exists and has attributes' do
    data = {
        "nonprofit": {
            "id": "82ea3d2e-ee6e-4e1e-b9ef-9e890ee2be88",
            "name": "Bunny World Foundation",
            "primarySlug": "bunny-world-foundation",
            "ein": "263792479",
            "isDisbursable": true,
            "description": "Dedicated to combatting animal cruelty and illegal animal sales through rescue efforts, public education, investigations, legislation, special events and media.",
            "descriptionLong": "Established on August 22, 2008, Bunny World Foundation Inc. (BWF) is a NON-PROFIT 501(c) 3 animal welfare organization based in Los Angeles dedicated to combatting animal cruelty, illegal animal sales, exploitation and neglect of all animals, through rescue efforts, public education, research, investigations, legislation, special events, and media attention.   BWF's raison d'etre has been and continue to be illegal animal sales at Santee Alley, LA Fashion District, the city's number one haven for illegal animal sales where underaged rabbits, kittens, salmonella infected turtles, parvo-infected puppies, and exotic birds are sold illegally on a daily basis.   BWF rescues abandoned domestic baby rabbits, provides them with medical care, finds permanent homes for them and educates the public about their care. BWF works to reduce rabbit overpopulation and abandonment, and to establish rabbits as companion animals that deserve the same individual rights, level of care, and opportunity for longevity as cats and dogs that live as human companions.   Our “Bunnies for Puppies & Kitties” division saves lives from high-kill LA County and City shelters through collaborative efforts with other rescue partners.",
            "locationAddress": "LOS ANGELES, CA",
            "nteeCode": "D20",
            "nteeCodeMeaning": {
                "majorCode": "D",
                "majorMeaning": "Animal Related",
                "decileCode": "D20",
                "decileMeaning": "Animal Protection and Welfare"
            },
            "logoCloudinaryId": "faja_profile/cdyalof6zfbqdmpfgdi0",
            "coverImageCloudinaryId": "faja_cover/cdivrgtrmylkqscg1spd",
            "logoUrl": "https://res.cloudinary.com/everydotorg/image/upload/c_lfill,w_24,h_24,dpr_2/c_crop,ar_24:24/q_auto,f_auto,fl_progressive/faja_profile/cdyalof6zfbqdmpfgdi0",
            "coverImageUrl": "https://res.cloudinary.com/everydotorg/image/upload/f_auto,c_limit,w_3840,q_80/faja_cover/cdivrgtrmylkqscg1spd",
            "profileUrl": "https://www.every.org/bunny-world-foundation"
        },
        "nonprofitTags": [
            {
                "id": "f3ecb613-355d-4186-ad68-523774727b32",
                "tagName": "animals",
                "causeCategory": "ANIMALS",
                "title": "Animals",
                "tagImageCloudinaryId": "animals_hjoysx",
                "tagUrl": "https://www.every.org/animals",
                "tagImageUrl": "https://res.cloudinary.com/everydotorg/image/upload/c_lfill,w_24,h_24,dpr_2/c_crop,ar_24:24/q_auto,f_auto,fl_progressive/animals_hjoysx"
            }
          ]
        }

    charity = CharityDetails.new(data)

    expect(charity.id).to eq('82ea3d2e-ee6e-4e1e-b9ef-9e890ee2be88')
    expect(charity.description).to eq('Dedicated to combatting animal cruelty and illegal animal sales through rescue efforts, public education, investigations, legislation, special events and media.')
    expect(charity.location).to eq('LOS ANGELES, CA')
    expect(charity.logo).to eq('https://res.cloudinary.com/everydotorg/image/upload/c_lfill,w_24,h_24,dpr_2/c_crop,ar_24:24/q_auto,f_auto,fl_progressive/faja_profile/cdyalof6zfbqdmpfgdi0')
    expect(charity.name).to eq('Bunny World Foundation')
    expect(charity.profile_url).to eq('https://www.every.org/bunny-world-foundation')
    expect(charity.slug).to eq('bunny-world-foundation')
  end
end
