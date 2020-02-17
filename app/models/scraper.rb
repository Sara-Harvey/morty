require 'open-uri'
require 'nokogiri'
require 'pry'

class Scraper

        @@textangle = []

        def self.make_boroughs
          list = ["Manhattan", "Bronx", "Brooklyn", "Queens", "Staten_Island"]
          list.each do |borough_name|
            Borough.find_or_create_by(name: "#{borough_name}")
          end
        end

        def self.read     
            io     = open('public/2017sum.pdf')
            reader = PDF::Reader::Turtletext.new(io)

            @@textangle = reader.bounding_box do
              page 12
              below /MN01/i
              above /375.0/i            
            end 

          @@textangle.text.each do |row|
            m = Neighborhood.find_or_create_by(title: row.slice(1), rate: row.slice(2), borough_id: 1)            
            bx = Neighborhood.find_or_create_by(title: row.slice(4), rate: row.slice(5), borough_id: 2)
            bk = Neighborhood.find_or_create_by(title: row.slice(7), rate: row.slice(8), borough_id: 3)
            q = Neighborhood.find_or_create_by(title: row.slice(10), rate: row.slice(11), borough_id: 4)
          end

            port_r = Neighborhood.find_or_create_by(title: "Port Richmond", rate: 639.8, borough_id: 5)
            willow = Neighborhood.find_or_create_by(title: "Willowbrook, South Beach", rate: 559.3, borough_id: 5)
            totten = Neighborhood.find_or_create_by(title: "Tottenville", rate: 621.3, borough_id: 5)
        end
end

