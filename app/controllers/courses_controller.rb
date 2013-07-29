require 'open-uri'
require 'json'

class CoursesController < ApplicationController
  def ctd
    url = "http://portal.starterleague.com/courses/47.json"
    raw_response = open(url).read
    processed_response = JSON.parse(raw_response)
    student_array_from_response = processed_response["students"]
    @students = []
    student_array_from_response.each do |student_hash|
      s = Student.new
      s.first_name = student_hash["first_name"]
      s.last_name = student_hash["last_name"]
      s.picture_url = student_hash["profile_pic_url"]
      @students << s
    end

    # use the processed_response to create student objects for each student in our class and save each object into a array called students
    # ex)
    # @student = Student.new
    # @student.first_name = "Rohan"
    # @student.last_name = "Sinha"

    render 'ctd'
  end
end
