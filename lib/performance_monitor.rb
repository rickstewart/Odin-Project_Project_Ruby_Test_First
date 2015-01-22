# Credit Where Credit is Due:...
# found this post on how to measure elapsed time
# http://stackoverflow.com/questions/11406410/measure-time-in-ruby
#
# and found this on RSpec stubs
# http://stackoverflow.com/questions/14326000/what-exactly-does-time-stubnow-fake-time-do

def measure(number_of_times=1)
  elapsed_time = 0
  start = Time.now
  number_of_times.times do
  yield if block_given?
  finish = Time.now
  elapsed_time = elapsed_time + (finish - start)
  end
  elapsed_time
end
