

	require 'open-uri'
	require 'nokogiri'
 def scrappeur
		 	tableau =[]
		 nom = []
		 prix = []
			doc = Nokogiri::HTML(open("https://coinmarketcap.com/all/views/all/"))
			doc.xpath('//td[@class="text-left col-symbol"]').each do |node|
			nom << node.text	
		    end
		        
			doc = Nokogiri::HTML(open("https://coinmarketcap.com/all/views/all/"))
			doc.xpath('//a[@class="price"]').each do |ter|
			prix << ter.text
			
			end

			nom.length.times do |i|
			 tableau << {nom[i] => prix[i]}
			end
		  if tableau != nil
		  return true
		end
end
