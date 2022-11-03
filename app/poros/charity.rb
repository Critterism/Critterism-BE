class Charity
  attr_reader :description,
              :ein,
              :id,
              :location,
              :logo,
              :name,
              :profile_url,
              :slug,
              :tags

  def initialize(data)
    @description = data[:description]
    @ein = data[:ein]
    @id = nil || data[:id]
    @location = data[:location]
    @logo = data[:logoUrl]
    @name = data[:name]
    @profile_url = data[:profileUrl]
    @slug = data[:slug]
    @tags = data[:tags]
  end
end
