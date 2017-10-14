
class School
  attr_accessor :name, :roster

  def initialize(name)
    @argument = name
    @roster = {}
  end

  def add_student(student_name,grade)
    @roster[grade] ||= []
    @roster[grade] << student_name
    @roster
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.sort
  end

end

Bayside = School.new("Bayside")
Bayside.add_student("Zach",9)
