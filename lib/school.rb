class School
  def initialize(name)
    @name = name
    @roster = {}
  end

  def roster
    @roster
  end

  def add_student(name, grade)
    if @roster.keys.include?(grade)
      @roster[grade] << name
    else
      @roster[grade] = [name]
    end
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    grades_sorted = {}

    @roster.each do |grade, students|
      sorted_students = students.sort
      grades_sorted[grade] = sorted_students
    end
    grades_sorted
  end
end
