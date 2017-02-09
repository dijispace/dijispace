class Listing < ApplicationRecord
	def self.search(search)
		# if search
		# 	where(["city LIKE ?","%#{search}%"])
		# else
		# 	all
		# end
		if search 
			where(["city LIKE ?","%#{search}%"])
		else
			all
		end
	end
end
