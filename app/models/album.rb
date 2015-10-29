class Album < ActiveRecord::Base
	validates :title, presence: true,
                      length: { minimum: 4 }

    def self.search(query)
    	where("title like ? OR albums.artists like ?  OR albums.cover like ?", "%#{query}%", "%#{query}%", "%#{query}%") 
    end

end
