#!/usr/bin/env ruby
require 'wikipedia'
require 'sinatra'

post '/wiki' do
  search_param = params['text']
  result = Wikipedia.find(search_param)
  "#{result.title}\n
  ----------------------------------------------\n
  #{result.content}\n\n
  #{result.fullurl}"
end
