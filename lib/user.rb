class User
  attr_accessor :firstname, :email, :age
  @@user_count = 0
  @@all_users = []

  #Function initialize in order to save the user email and age // and put them in a tab of hashes
  def initialize(firstname_to_save, email_to_save, age_to_save)
    @firstname = firstname_to_save
    @email = email_to_save
    @age = age_to_save
    @@user_count = @@user_count + 1
    @@all_users << {:user_id => self, :firstname => firstname_to_save, :email => @email, :age => @age}
  end

  def self.all
    return @@all_users
  end

  def self.find_by_email(email_to_search)
    users_founded = []
    @@all_users.each {|my_user|
      if my_user[:email] == email_to_search #if the user is founded
        users_founded << my_user
      end
    }
    return users_founded
  end

end
