class StudentsController < ApplicationController
    def index
        students = Student.all
        render json: students
    end

    def grades
        ordered = Student.all.order(grade: :desc)
        render json: ordered
    end

    def highest_grade
        highest = Student.all.order(grade: :desc).first
        render json: highest
    end
end
