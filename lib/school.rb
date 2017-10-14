
require 'pry'
class School
  attr_accessor :name, :roster

  def initialize(name)
    @argument = name
    @roster = {}
  end

  def add_student(student_name,grade)
    @roster[grade] ||= []
    @roster[grade] << student_name

  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    sorted = {}
    @roster.each do |grade, student|
    sorted[grade] = student.sort
    end
    sorted
  end

end

Bayside = School.new("Bayside")
Bayside.add_student("Zach",9)
