class Cohort < ActiveRecord::Base
  has_many :students

  def add_student(name, age)
    Student.create(name: name, age: age, cohort_id: self.id)
  end

  def average_age
    self.students.all.average(:age).to_i
  end

  def total_students
    self.students.all.length
  end

  def self.biggest
    Cohort.all.sort_by {|c| c.students.size}.last
  end

  def self.sort_by_mod
    Cohort.all.sort_by{|c| c.current_mod}
  end

end