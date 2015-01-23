# Credit Where Credit is Due:...
# found this post on how to measure elapsed time
# http://stackoverflow.com/questions/11406410/measure-time-in-ruby
#
# and found this on RSpec stubs
# http://stackoverflow.com/questions/14326000/what-exactly-does-time-stubnow-fake-time-do

def measure(number_of_times=1)
  total_time = 0
  start = Time.now
  number_of_times.times do
    yield if block_given?
  end
  finish = Time.now
  total_time += (finish - start)
  total_time/number_of_times
end
