    require 'open-uri'
	require 'nokogiri'

			page = Nokogiri::HTML(open("https://www.annuaire-des-mairies.com/95/avernes.html"))
			doc = page.xpath('//body/div/main/section[2]/div/table/tbody/tr[4]/td[2]')
			puts doc.text	



		   