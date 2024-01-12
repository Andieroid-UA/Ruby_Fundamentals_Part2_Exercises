class Student
  attr_accessor :name, :grades

  def initialize(name)
    @name = name
    @grades = []
  end

  def add_grade(grade)
    @grades << grade
  end

  def average_grade
    return 0 if @grades.empty?

    total = @grades.sum
    total.to_f / @grades.length
  end

  def letter_grade
    average = average_grade

    case average
    when 90..100 then 'A'
    when 80..89  then 'B'
    when 70..79  then 'C'
    when 60..69  then 'D'
    else              'F'
    end
  end
end

student = Student.new("John Doe")