class School
attr_accessor :roster, :name
# @roster = {}

  def initialize(name)
    @roster = {}
    @name = name
  end

  def add_student(name, grade)
    @roster[grade] ||= []
    @roster[grade] << name
  end


  def grade(grade)
    new_roster = @roster.select do |g, students|
      g == grade
    end
    new_roster[grade]
  end

  def sort
    @roster.each_with_object({}) do |(grade, students), new_roster|
      new_roster[grade] = students.sort
    end
  end

end
