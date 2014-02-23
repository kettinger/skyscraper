class StaticPagesController < ApplicationController
	def index
		@quote = Scraper.scrape
	end

end
