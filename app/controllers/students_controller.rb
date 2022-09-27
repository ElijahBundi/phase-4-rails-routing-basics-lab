class StudentsController < ApplicationController

    def index
        students = Student.all 
        render json: students
    end

    def grades
        students_order = Student.order('grade DESC')
        render json: students_order
    end

    def highest_grade
        highest_student = Student.order('grade DESC').first
        render json: highest_student
    end

end
