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
    charity = CharityService.get_charity_by_slug(slug).map do |info|
      data = info[1]
      CharityDetails.new(data)
    end
    charity[0]
  end
end
