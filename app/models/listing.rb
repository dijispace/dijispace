class Listing < ApplicationRecord
	def self.search(search)
		# if search
		# 	where(["city LIKE ?","%#{search}%"])
		# else
		# 	all
		# end
		if search.present?
			where("city @@ :q or name @@ :q", q: search)
		else
			where(nil)
		end
	end
end
