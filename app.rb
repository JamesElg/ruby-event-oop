# lignes très pratiques qui appellent les gems du Gemfile. On verra plus tard comment s'en servir ;) - ça évite juste les "require" partout
require 'bundler'
Bundler.require

# lignes qui appellent les fichiers lib/user.rb et lib/event.rb
# comme ça, tu peux faire User.new dans ce fichier d'application. Top.
require_relative 'lib/user'
require_relative 'lib/event'
require_relative 'lib/event_creator'
require_relative 'lib/calendar_displayer'


# Maintenant c'est open bar pour tester ton application. Tous les fichiers importants sont chargés
# Tu peux faire User.new, Event.new, binding.pry, User.all, etc.
julie = User.new("julie","julie@dupont.fr",32)
jean = User.new("jean","jean@fabre.fr",31)
colin = User.new("colin","colin@limace.fr",30)
jacques = User.new("jacques","jacques@limace.fr",30)
james = User.new("jacques","jacques@limace.fr",30)

#Using the class event_creator in order to create an event
#datas = EventCreator.new.get_information
#standup_quotidien = Event.new(datas[:start_date], datas[:duration], datas[:title], datas[:attendees])

standup_quotidien = Event.new("2019-10-14 13:45", 10, "standup quotidien", [julie, jean])
marche_quotidienne = Event.new("2019-10-15 13:45", 10, "standup quotidien", [colin,jacques,jean])
autre = WorkEvent.new("2019-10-21 13:45", 10, "standup quotidien", [james], "paris")
test = WorkEvent.new("2019-10-14 13:59", 10, "standup quotidien", [julie, colin,james],"marseille")

#calendar = CalendarDisplayer.new(Event.all)

#calendar.print_calendar

binding.pry
