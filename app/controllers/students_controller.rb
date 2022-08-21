class StudentsController < ApplicationController
    def index
        s = Student.all
        render json: s
    end

    def grades
        s = Student.order(grade: :desc)
        render json: s
    end

    def highest_grade
        s = Student.order(grade: :desc).first
        render json: s
    end
end
