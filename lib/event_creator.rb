class EventCreator

  def get_information
    p "Salut Salut, tu veux créer un événement ? Cool !"
    p "Commençons. Quel est le nom de l'événement ?"
    print "> "
    title = gets.chomp
    puts "\nSuper. Quand aura-t-il lieu ?"
    print "> "
    start_date = gets.chomp
    puts "\nAu top. Combien de temps va-t-il durer (en minutes) ?"
    print "> "
    duration = gets.chomp.to_i
    puts "\nGénial. Qui va participer ? Balance leurs e-mails(séparés par ,)"
    print "> "
    attendees = gets.chomp.gsub(" ", "").split(/\s|,|;/)

    return {:title => title, :start_date => start_date, :duration => duration, :attendees => attendees}

  end


end
