class CharityFacade
  def self.wildlife_charities
    CharityService.get_wildlife_charities[:nonprofits].map do |data|
      Charity.new(data)
    end
  end
end
