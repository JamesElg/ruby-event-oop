require 'time'

class Event

  #For an event, get all the information needed
  attr_accessor :start_date, :duration, :title, :attendees
  @@event_count = 0
  @@all_events = []

  #Function initialize in order to save the user email and age // and put them in a tab of hashes
  def initialize(start_date_to_save, duration_to_save, title_to_save, attendees_to_save)
    @start_date = Time.parse(start_date_to_save)
    @duration = duration_to_save.to_i #The duration in minutes
    @title = title_to_save
    @attendees = attendees_to_save
    @@event_count = @@event_count + 1
    @@all_events << {:start_date => @start_date, :duration => @duration, :title => @title, :attendees => attendees}
  end

  def self.all
    return @@all_events
  end

  def postpone_24h
    @start_date = @start_date + 60*60*24 #postpone the event 24h later
  end

  def end_date
    return @start_date + @duration*60 #The duration is in minutes, we need it in seconds
  end

  def is_past?
    return Time.now > @start_date
  end

  def is_future?
    return !is_past?
  end

  def is_soon?
    return (@start_date - Time.now).between?(0, 30*60)  # Is the start date in less than 30 minutes?
  end

  def to_s
    #Display the event with a pretty format
    p ">Titre : #{@title}"
    p ">Date de début : #{@start_date}"
    p ">Durée : #{@duration}"
    p "Invités : #{@attendees.join(' ,')}"
    return nil
  end

end
