class AlbumsController < ApplicationController

  def index
    if params[:search]
      @albums = Album.search(params[:search]).order("created_at DESC")
    else
      @albums = Album.order("created_at DESC")
    end
  end
	
	#def index
    	#@albums = Album.all
  	#end

	def show
    	@album = Album.find(params[:id])
  	end

	def new
		@album = Album.new
		
    end

    def edit
  		@album = Album.find(params[:id])
	end

    def create
    	@album = Album.new(album_params)
    	if @album.save
    		redirect_to @album
  		else
    		render 'new'
  		end
	end

	def update
  		@album = Album.find(params[:id])
 
  		if @album.update(album_params)
    		redirect_to @album
  		else
    		render 'edit'
  		end
	end

	def destroy
  		@album = Album.find(params[:id])
  		@album.destroy
 
  		redirect_to albums_path
	end

	def self.search(query)
    # where(:title, query) -> This would return an exact match of the query
    where("title like ?", "%#{query}%") 
  end
 
private
  def album_params
  	
    params.require(:album).permit(:title, :artists, :cover, :year)
    
  end
end


