#!/usr/bin/env ruby
require 'wikipedia'
require 'sinatra'
search = ARGV.join(" ")
page = Wikipedia.find(search)
puts page.text

post '/wiki' do
  search_param = params['text']
  result = Wikipedia.find(search_param)
  "result.title\nresult.content\nresult.fullurl"
end
