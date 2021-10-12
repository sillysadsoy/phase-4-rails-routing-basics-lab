class StudentsController < ApplicationController

    def index
        students = Student.all
        render json: students
    end

    def grades 
        student_grades = Student.all.order(grade: :desc)
        render json: student_grades
    end

    def highest_grade
        student = Student.all.order(grade: :desc).first
        render json: student, only: [:first_name, :last_name, :grade]
    end

end
