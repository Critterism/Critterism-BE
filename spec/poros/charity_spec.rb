require 'rails_helper'

RSpec.describe 'Charity Poro' do
  it 'exists and has proper Charity attributes' do
    data = {
      "description": 'The Fungi Foundation is a global organization that works for the Fungi, their habitats, and the people who depend on them.. Launched in 2012, the Fungi Foundation is the first NGO dedicated to the fungi kingdom. Since its inception, it has achieved',
      "ein": '851478153',
      "name": 'Fungi Foundation',
      "profileUrl": 'https://www.every.org/ffungi',
      "logoUrl": 'https://res.cloudinary.com/everydotorg/image/upload/c_lfill,w_24,h_24,dpr_2/c_crop,ar_24:24/q_auto,f_auto,fl_progressive/profile_pics/wq14eif08jx3kka2ixau',
      "coverImageUrl": 'https://res.cloudinary.com/everydotorg/image/upload/f_auto,c_limit,w_3840,q_80/profile_pics/tqf7myovdptpxsde25rm',
      "logoCloudinaryId": 'profile_pics/wq14eif08jx3kka2ixau',
      "matchedTerms": [],
      "slug": 'ffungi',
      "location": 'New York, NY, USA',
      "tags": %w[
        wildlife
        education
        climate
        conservation
        research
        women-led
        environment
      ]
    }

    charity_data = Charity.new(data)

    expect(charity_data).to be_a(Charity)
    expect(charity_data.description).to eq('The Fungi Foundation is a global organization that works for the Fungi, their habitats, and the people who depend on them.. Launched in 2012, the Fungi Foundation is the first NGO dedicated to the fungi kingdom. Since its inception, it has achieved')
    expect(charity_data.ein).to eq('851478153')
    expect(charity_data.name).to eq('Fungi Foundation')
    expect(charity_data.location).to eq('New York, NY, USA')
    expect(charity_data.tags[0]).to eq('wildlife')
  end
end
