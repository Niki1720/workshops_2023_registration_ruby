class ValidatePassword
  def initialize(password)
    @password = password
  end

  def perform
    return false if @password.length < 6 || @password.length > 24
    return false unless @password =~ /[A-Z]/
    return false unless @password =~ /[a-z]/
    return false unless @password =~ /\d/
    return false unless @password =~ /[!@#$%&*+=:;?<>\[\]{}()|]/
    return false if has_repeating_characters?(2)
    true
  end

  private

  def has_repeating_characters?(max_repeats)
    regex = /(.).*\1{#{max_repeats},}/
    !(@password =~ regex).nil?
  end
end
