class Charity
  attr_reader :description,
              :ein,
              :name,
              :profile_url,
              :location,
              :tags,
              :slug

  def initialize(data)
    @description = data[:description]
    @ein = data[:ein]
    @name = data[:name]
    @profile_url = data[:profileURL]
    @location = data[:location] || data[:locationAddress]
    @tags = data[:tags]
    @slug = data[:slug] || data[:primarySlug]
  end
end
