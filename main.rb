require 'open-uri'
require 'nokogiri'

puts "Read cmdline arguments"
ARGV.each_with_index do |arg, i|
  puts "ARGV[#{i}]: #{arg}"
end

puts "Read ENV vars"
puts "HOGEHOGE_API_KEY: #{ENV['HOGEHOGE_API_KEY']}"

puts "Use 3rd party's gem"
feed = Nokogiri::XML(open('http://www.tomakomai-ct.ac.jp/feed'))
puts feed.search('title').first.text
