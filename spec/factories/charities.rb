FactoryBot.define do
  factory :charity do
    id { '82ea3d2e-ee6e-4e1e-b9ef-9e890ee2be88' }
    description { 'Dedicated to combatting animal cruelty and illegal animal sales through rescue efforts, public education, investigations, legislation, special events and media.' }
    ein { '263792479' }
    location { 'LOS ANGELES, CA' }
    logoUrl { 'https://res.cloudinary.com/everydotorg/image/upload/c_lfill,w_24,h_24,dpr_2/c_crop,ar_24:24/q_auto,f_auto,fl_progressive/faja_profile/cdyalof6zfbqdmpfgdi0' }
    name { 'Bunny World Foundation' }
    profileUrl { 'https://www.every.org/bunny-world-foundation' }
    slug { 'bunny-world-foundation' }
    tags { ['animals'] }
  end
end
