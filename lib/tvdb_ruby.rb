require 'httparty'

API_KEY  = 'BA027FC13CC4F4A9'
BASE_URL = 'http://www.thetvdb.com/api/'

class TVDB_Ruby

  ### Beginning of generic methods ###

  # Search series in the database
  def self.search_series(search)
    terms = search.split(' ').join("%20")
    xml = HTTParty.get("http://www.thetvdb.com/api/GetSeries.php?seriesname=" + terms)
    
    if xml["Data"].nil?
      puts "no show found"
    else
      result = xml["Data"]["Series"]
    end

    if result.class == Hash
      @shows = []
      @shows << result
    else
      @shows = result
    end
  end

  # Get series from IMDB ID
  def self.search_imdb(imdb_id)
    xml = HTTParty.get("http://www.thetvdb.com/api/GetSeriesByRemoteID.php?imdbid=" + imdb_id.to_s)

    if xml["Data"].nil?
      puts "no show found"
    else
      result = xml["Data"]["Series"]
    end

    if result.class == Hash
      @shows = []
      @shows << result
    else
      @shows = result
    end
  end

  # Get episode by air date
  def self.search_by_airdate(series_id, date)
    xml = HTTParty.get("http://www.thetvdb.com/api/GetEpisodeByAirDate.php?apikey=BA027FC13CC4F4A9&seriesid=#{series_id.to_s}&airdate=#{date.to_s}")

    xml["Data"]
  end

  # Get serie by serie id
  def self.search_by_id(series_id)
    xml = HTTParty.get("http://www.thetvdb.com/api/BA027FC13CC4F4A9/series/" + series_id.to_s + "/all/en.xml")
  end

end
