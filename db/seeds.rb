# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'open-uri'

#affiliates = Affiliate.create([{ name: 'Amazon' }, { name: 'Best Buy' }])

Affiliate.delete_all
json = ActiveSupport::JSON.decode(open("http://firedov.es/db/merchants.min.json")).each do |affiliate|
	Affiliate.create!(:name => affiliate['name'],
									 :url => affiliate['url'],
									 :logosrc => affiliate['logo_url'])
end

#json.each do |affiliate| Affiliate.create! (:name => affiliate'name', :url => affiliate'url', :logosrc => affiliate'logo_url',) end
