class CharitySerializer
  include JSONAPI::Serializer
  set_id {nil}
  attributes :description,
             :ein,
             :name,
             :slug,
             :profile_url,
             :location,
             :tags
end
