class StaticPagesController < ApplicationController
  def landing_page
  	# The main picture on the landing page comes from NASA's free image of the day API
  	@nasa_info = NasaApi.get_api_info
  end
end
