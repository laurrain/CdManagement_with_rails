class Album < ActiveRecord::Base
	validates :title, presence: true,
                      length: { minimum: 4 }

    def self.search(query)
    	# where(:title, query) -> This would return an exact match of the query
    	where("title like ? OR artists like ? OR cover like ?", "%#{query}%", "%#{query}%", "%#{query}%") 
  	end

end
