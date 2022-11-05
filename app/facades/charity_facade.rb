class CharityFacade
  def self.wildlife_charities
    CharityService.get_wildlife_charities[:nonprofits].map do |data|
      Charity.new(data)
    end
  end

  def self.animal_charities
    CharityService.get_animal_charities[:nonprofits].map do |data|
      Charity.new(data)
    end
  end

  def self.charity(slug)
    charity = CharityService.get_charity_by_slug(slug)
    data = OpenStruct.new({
      id: charity[:data][:nonprofit][:id],
      description: charity[:data][:nonprofit][:description],
      ein: charity[:data][:nonprofit][:ein],
      location: charity[:data][:nonprofit][:locationAddress],
      logoUrl: charity[:data][:nonprofit][:logoUrl],
      name: charity[:data][:nonprofit][:name],
      profileUrl: charity[:data][:nonprofit][:profileUrl],
      slug: charity[:data][:nonprofit][:primarySlug],
      tags: [charity[:data][:nonprofitTags][0][:tagName]]
      })
      Charity.new(data)
  end
end
