class Charity
  attr_reader :description,
              :ein,
              :name,
              :profile_url,
              :location,
              :tags

  def initialize(data)
    @description = data[:description]
    @ein = data[:ein]
    @name = data[:name]
    @profile_url = data[:profileURL]
    @location = data[:location]
    @tags = data[:tags]
  end
end
