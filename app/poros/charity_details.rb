# class CharityDetails
#   attr_reader :description,
#               :ein,
#               :id,
#               :location,
#               :logo,
#               :name,
#               :profile_url,
#               :slug,
#               :tags
#
#   def initialize(data)
#     require "pry"; binding.pry'
#     @description = data[:nonprofit][:description]
#     @ein = data[:nonprofit][:ein]
#     @id = data[:nonprofit][:id]
#     @location = data[:nonprofit][:locationAddress]
#     @logo = data[:nonprofit][:logoUrl]
#     @name = data[:nonprofit][:name]
#     @profile_url = data[:nonprofit][:profileUrl]
#     @slug = data[:nonprofit][:primarySlug] || data[:slug]
#     @tags = data[:nonprofitTags][0][:tagName]
#   end
# end
