class CharityDetails
  attr_reader :id,
              :name,
              :slug,
              :ein,
              :description,
              :location,
              :logo,
              :profile

  def initialize(data)
    @id = data[:nonprofit][:id]
    @name = data[:nonprofit][:name]
    @slug = data[:nonprofit][:primarySlug] || data[:slug]
    @description = data[:nonprofit][:description]
    @location = data[:nonprofit][:locationAddress]
    @logo = data[:nonprofit][:logoUrl]
    @profile = data[:nonprofit][:profileUrl]
  end
end
