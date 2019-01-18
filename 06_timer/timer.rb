class Timer
  attr_accessor :seconds
  def initialize()
    @seconds = 0
  end
  def time_string()
    s = @seconds    
    m, s = [s/60, s%60]
    h, m = [m/60, m%60]
    return "%02d:%02d:%02d" % [h, m, s]
  end
end
