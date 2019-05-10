class TemperatureMetric

  CONVERTIONS = [:c, :f, :k]

  def initialize(value, unit)
    @unit = unit.to_sym
   raise "Unknown unit" unless CONVERTIONS.include? @unit
    @value = value * 1.0
  end

  def to_c
    case @unit
    when :c
      @value
    when :f
      @value - 32 * 5 / 9
    when :k
      @value - 273.15
    end
  end

  convertions_scales = { c: 0, f: 9 / 5 + 32, k: 1 + 273.15 }

  CONVERTIONS.each do |conversion|
  next if conversion == :c
    define_method("to_#{conversion}") do
      to_c * convertions_scales[conversion]
    end
  end

end
