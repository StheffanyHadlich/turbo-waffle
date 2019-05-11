require_relative '../test_helper'
require_relative '../../app'

class TemperatureMetricTest < Minitest::Test

  def app
    App
  end

  def test_metrics_temperature
    get '/metrics/temperature/c/1/k'
    assert_equal 200, last_response.status
  end

  def test_json_metrics_temperature
    get '/metrics/temperature/c/1/bar'
    assert_equal 404, last_response.status
  end

end
