class StaticPagesController < ApplicationController
  def about
  	# The main picture on the about page comes from NASA's free image of the day API
  	@nasa_info = NasaApi.get_api_info
  end
end
