require "pry"

class School
  attr_accessor :name
  attr_reader :roster

  ROSTER = {}

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(new_student, grade)
    roster[grade] ||= []
    roster[grade] << new_student
  end

  def grade(grade_year)
    roster[grade_year]
  end

  def sort
    sorted_hash = {}
    roster.each do |grade, names|
      sorted_hash[grade] = names.sort
    end
    sorted_hash
  end

end
