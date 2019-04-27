require_relative '../test_helper'
require_relative '../../metrics/linear'

class LinearMetricTest < Minitest::Test

  def test_inch_to_cm
    value = LinearMetric.new(1, 'inch')
    result = value.to_cm
    assert_equal 2.54, result
  end

  def test_m_to_cm
    value = LinearMetric.new(1, 'm')
    result = value.to_cm
    assert_equal 100.0, result
  end

  def test_foot_to_cm
    value = LinearMetric.new(1, 'foot')
    result = value.to_cm
    assert_equal 30.48, result
  end

  def test_yard_to_cm
    value = LinearMetric.new(1, 'yard')
    result = value.to_cm
    assert_equal 91.44, result
  end

  def test_mile_to_cm
    value = LinearMetric.new(1, 'mile')
    result = value.to_cm
    assert_equal 160_934, result
  end

  def test_km_to_cm
    value = LinearMetric.new(1, 'km')
    result = value.to_cm
    assert_equal 100_000.0, result
  end

  def test_cm_to_cm
    value = LinearMetric.new(1, 'cm')
    result = value.to_cm
    assert_equal 1.0, result
  end

  def test_cm_to_inch
    value = LinearMetric.new(1, 'cm')
    result = value.to_inch
    assert_equal 0.39, result.round(2)
  end

  def test_cm_to_foot
    value = LinearMetric.new(1, 'cm')
    result = value.to_foot
    assert_equal 0.03, result.round(2)
  end

  def test_cm_to_yard
    value = LinearMetric.new(1, 'cm')
    result = value.to_yard
    assert_equal 0.01, result.round(2)
  end

  def test_cm_to_mile
    value = LinearMetric.new(1_000_000, 'cm')
    result = value.to_mile
    assert_equal 6.21, result.round(2)
  end

  def test_cm_to_m
    value = LinearMetric.new(100, 'cm')
    result = value.to_m
    assert_equal 1.0, result
  end

  def test_cm_to_km
    value = LinearMetric.new(100000.0, 'cm')
    result = value.to_km
    assert_equal 1.0, result
  end
end
