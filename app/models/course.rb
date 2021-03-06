class Course < ApplicationRecord

  belongs_to :school

  validates :title, presence: true, length: { in: 4..60 }
  validates :description, presence: true, length: { minimum: 20 }

  def enroll(student)
    Enrollment.create(course: self, student: student)
  end
end
