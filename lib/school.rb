# code here!
class School

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade)
    unless @roster[grade]
      @roster[grade] = []
    end 
    @roster[grade] << name
  end
end
