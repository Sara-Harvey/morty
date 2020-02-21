require './config/environment'
require 'open-uri'
require 'pry'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get "/" do
    @boroughs ||= Scraper.make_boroughs
    @scraped_info ||= Scraper.read
    # ||= means "if @scraped_info doesn't equal anything yet, run the scrape and store 
    # the info in this instance variable."

    erb :'welcome'
  end

  get "/neighborhoods" do
    @neighborhoods = Neighborhood.all
    erb :"/index"
  end

  get "/:name" do
    @name = params[:name]
    @borough_name = Borough.find_by(name: params[:name])

    erb :'neighborhoods'
  end
end
