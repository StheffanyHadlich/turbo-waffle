require_relative '../test_helper'
require_relative '../../app'

class LinearMetricTest < Minitest::Test

  def app
	  App
  end

  def test_get_metrics_linear
    get '/metrics/linear/km/1/m'
	  assert_equal 200, last_response.status
  end

  def test_json_metrics_linear
    get '/metrics/linear/km/1/foo'
	  assert_equal 404, last_response.status
  end

end
