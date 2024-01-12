require_relative = 'student'

class Gradebook
  attr_accessor :students

  def initialize
    @students = []
  end

  def add_student(student)
    @students << student
  end

  def remove_student_by_name(name)
    @students.reject! { |student| student.name == name }
  end

  def find_student_average(name)
    student = find_student_by_name(name)
    student&.calculate_average
  end

  def find_student_letter_grade(name)
    student = find_student_by_name(name)
    student&.determine_letter_grade
  end

  private

  def find_student_by_name(name)
    @students.find { |student| student.name == name }
  end
end