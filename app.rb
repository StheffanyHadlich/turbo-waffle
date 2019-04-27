require 'sinatra'
require 'json'
require_relative 'metrics/linear'

class App < Sinatra::Base
  get '/' do
    "Hello, world: This is an convertion app.\n"
  end

  get '/metrics/linear/:orig_type/:value/:dest_type' do
    content_type :json
    orig_type = params[:orig_type]
    unit = params[:value].to_i
    dest_type = params[:dest_type]
    linear_metric = LinearMetric.new(unit, orig_type)
    begin
      response = linear_metric.send("to_#{dest_type}")
      { value: unit, orig_type: orig_type, response: response }.to_json
    rescue
      status 404
    end
  end
end
