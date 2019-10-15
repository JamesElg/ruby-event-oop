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

  def age_analysis
    age_array = [] #On initialise un array qui va contenir les âges de tous les participants à un évènement
    average = 0 #On initialise une variable pour calculer la moyenne d'âge à l'évènement

    @attendees.each do |attendee| #On parcourt tous les participants (objets de type User)
      age_array << attendee.age #leur âge est stocké dans l'array des âges
      average = average + attendee.age #leur âge est additionné pour préparer le calcul de la moyenne
    end

    average = average / @attendees.length #on divise la somme des âges pour avoir la moyenne

    puts "Voici les âges des participants :"
    puts age_array.join(", ")
    puts "La moyenne d'âge est de #{average} ans"
  end

end

class WorkEvent < Event

  attr_accessor :location

  def initialize(start_date, duration, title, attendees, location)
    @location = location # j'ai rajouté cette ligne
    super(start_date, duration, title, attendees) #fait appel au initialize de la classe Event
  end

  def is_event_acceptable?

    if @attendees.length > 3 || @duration > 60
      puts "Cette réunion ne respecte pas nos bonnes pratiques !"
      return false
    else
      puts "Cette réunion est OK."
      return true
    end
  end
end
