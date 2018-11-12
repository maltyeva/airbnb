class FlatsController < ApplicationController
  require "open-uri"

  before_action :set_flats, only: [:index, :show]

  def index

  end

  def show


    @flat_id = params["id"].to_i

    @flat = @flats.find {|flat| @flat_id == flat["id"]}
  end

  private

  def set_flats
    url = "https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json"
    @flats = JSON.parse(open(url).read)
  end
end
