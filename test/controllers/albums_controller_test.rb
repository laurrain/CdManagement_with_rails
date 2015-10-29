require 'test_helper'

class AlbumsControllerTest < ActionController::TestCase
 
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

  test "should be defined" do
    assert @album = " "
  end

  test "id should be present" do
  	@album = " "
  	assert_not @album = false
  end
end
