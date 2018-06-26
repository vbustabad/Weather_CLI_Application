class Weather::Scraper

  def get_page
  	@@general_list ||= Nokogiri::HTML(open("https://www.timeanddate.com/weather/"))
  end

  def scrape_from_index_page
    self.get_page.css(".zebra.fw.tb-wt.va-m").css("a").collect do |element|
      {city: element.children.to_s, url: element.attributes["href"].value}
    end
  end

  def make_cities
    scrape_from_index_page.collect do |city, url|
      Weather::WeatherConditions.new(city, url)
    end
  end

end
