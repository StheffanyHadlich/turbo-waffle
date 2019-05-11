require_relative '../test_helper'
require_relative '../../metrics/temperature'

class TemperatureMetricTest < Minitest::Test

  def test_f_to_c
    value = TemperatureMetric.new(1,'f')
    result = value.to_c
    assert_equal -16, result
  end

  def test_k_to_c
    value = TemperatureMetric.new(1,'k')
    result = value.to_c
    assert_equal -272.15, result
  end

  def test_c_to_c
    value = TemperatureMetric.new(1,'c')
    result = value.to_c
    assert_equal 1, result
  end

  def test_c_to_f
    value = TemperatureMetric.new(1,'c')
    result = value.to_f
    assert_equal 33, result
  end

  def test_c_to_k
    value = TemperatureMetric.new(1,'c')
    result = value.to_k
    assert_equal 274.15, result
  end

end
