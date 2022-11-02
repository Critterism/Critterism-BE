class CharitySerializer
  include JSONAPI::Serializer
  attributes :description,
             :ein,
             :name,
             :profile_url,
             :location,
             :tags
end
