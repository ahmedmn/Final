class Sale < ActiveRecord::Base
  attr_accessible :city, :date, :good, :price


	def filter_by_city(city)
		Sale.where(city)
	end
end
