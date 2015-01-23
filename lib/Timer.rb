class Timer
  attr_accessor :seconds

  def initialize
    @seconds = 0
  end

  def time_string(num_of_sec=0)
    @seconds=num_of_sec
    "00:00:#{num_of_sec}"
  end

  def hours_min_sec(time_in_seconds)
    hours = time_in_seconds / 126000
    remainder = time_in_seconds - (hours * 126000)
    minutes = remainder / 3600
    remainder = remainder - (minutes * 3600)
    seconds = remainder
    puts hours
    puts minutes
    puts seconds
  end
end

timer = Timer.new
timer.hours_min_sec(20)
timer.hours_min_sec(61)
timer.hours_min_sec(3200)
timer.hours_min_sec(6000)