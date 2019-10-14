require 'time'

class CalendarDisplayer

  attr_accessor :all_events

  def initialize (all_events_to_save)
    @all_events = all_events_to_save
  end

  def print_calendar

  end

end

# Week 1

def week1
  count_day1 = 1
  to_do_day1 = "2 events"
  to_do_2_day1 = "scheduled"
  puts "-" * 71
  7.times do
    print "|"+count_day1.to_s+" "*(9-count_day1.to_s.length)
    print "|"+to_do_day1+" "*(9-to_do_day1.to_s.length)
    print "|"+to_do_2_day1+" "*(9-to_do_2_day1.to_s.length)
    3.times do
      puts "|"+" "*count_day1.to_s.length+" "*(9-count_day1.to_s.length)
    end
  end

end


#Day 1
def day1
  count = 1
  to_do = "2 events"
  to_do_2 = "scheduled"
  print ("-" * 10 + "\n"+"|"+count.to_s+" "*(9-count.to_s.length)+"\n"+"|"+to_do+" "*(9-to_do.to_s.length)+"\n"+"|"+to_do_2+" "*(9-to_do_2.to_s.length)
  )
  3.times do
    puts "|"+" "*count.to_s.length+" "*(9-count.to_s.length)
  end

end

=begin
def day2
  #Day 2
  count = 2
  to_do = ""
  to_do_2 = ""
  puts "-" * 10
  puts "|"+count.to_s+" "*(9-count.to_s.length)
  puts "|"+to_do+" "*(9-to_do.to_s.length)
  puts "|"+to_do_2+" "*(9-to_do_2.to_s.length)
  3.times do
    puts "|"+" "*count.to_s.length+" "*(9-count.to_s.length)
  end
end
=end

#print day1

=begin

#For 5 weeks
count = 1
5.times do

  puts "-" * 71 #Start of Week

  #Days of week
  7.times do
    print "|"+"#{count}"+" "*(9-count.to_s.length)
    count += 1
  end

  #Length of the day in the 7 days
  5.times do
    puts("|")
    7.times do
      print "|"+" "*count.to_s.length+" "*(9-count.to_s.length)
    end
  end
  puts "|" #End of week

end
=end


=begin
-----------------------------------------------------------------------
|1        |2        |3        |4        |5        |6        |7        |
|         |         |         |2 events |         |9:00am   |         |
|         |         |         |scheduled|         |Sandbox  |         |
|         |         |         |         |         |calendar |         |
|         |         |         |         |         |challenge|         |
-----------------------------------------------------------------------
|8        |9        |10       |11       |12       |13       |14       |
|         |         |9:00am   |10:00am  |         |         |         |
|         |         |Post     |Profit   |         |         |         |
|         |         |challenge|         |         |         |         |
|         |         |to main  |         |         |         |         |
-----------------------------------------------------------------------
|15       |16       |17       |18       |19       |20       |21       |
|         |         |         |         |         |         |         |
|         |         |         |         |         |         |         |
|         |         |         |         |         |         |         |
|         |         |         |         |         |         |         |
-----------------------------------------------------------------------
|22       |23       |24       |25       |26       |27       |28       |
|         |3 events |         |         |         |2 events |         |
|         |scheduled|         |         |         |scheduled|         |
|         |         |         |         |         |         |         |
|         |         |         |         |         |         |         |
-----------------------------------------------------------------------
|29       |30       |31       |         |         |         |         |
|         |         |7:30pm   |         |         |         |         |
|         |         |Halloween|         |         |         |         |
|         |         |party    |         |         |         |         |
|         |         |         |         |         |         |         |
-----------------------------------------------------------------------

=end
