class FlatsController < ApplicationController
  require "open-uri"

  def index
    url = "https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json"
    @flats = JSON.parse(open(url).read)
  end

  def show
    url = "https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json"
    @flats = JSON.parse(open(url).read)

    @flat_id = params["id"].to_i

    @flat = @flats.find {|flat| @flat_id == flat["id"]}
  end
end
