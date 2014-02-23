class Scraper

	def self.scrape
		response = HTTParty.get('http://www.brainyquote.com/quotes/authors/w/william_shakespeare.html')

		response.body

		doc = Nokogiri::HTML(response.body)

		quotes = []
		doc.css('.bqQuoteLink a').each do |data|
			  quotes << data.content
			end

		quotes.sample
	end

end