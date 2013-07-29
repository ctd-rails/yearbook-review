class Student
  attr_accessor :first_name, :last_name, :picture_url

  # define a method that returns a student's full name
  def full_name
    return "#{@first_name} #{@last_name}"
  end
end
