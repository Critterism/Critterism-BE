class CharitySerializer
  include JSONAPI::Serializer
  attributes :description,
             :ein,
             :name,
             :slug,
             :profile_url,
             :location,
             :tags
end
