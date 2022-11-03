class CharitySerializer
  include JSONAPI::Serializer
  attributes :description,
             :ein,
             :id,
             :location,
             :logo,
             :name,
             :profile_url,
             :slug,
             :tags
end
