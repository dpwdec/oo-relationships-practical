class User
  def initialize(name, bio, age, password)
    @name = name
    @bio = bio
    @age = age
    @password = password
    @authenticator = Authenticator.new
  end

  def profile
    raise "Unauthorised acces" if !authenticator.authenticate(@password)
    "#{@name}, born in #{birth_year}: #{@bio}"
  end

  private

  def birth_year
    Time.new.year - @age
  end
end

class Authenticator
  def authenticate(candidate_password)
    return true if candidate_password == @password
    false
  end
end
