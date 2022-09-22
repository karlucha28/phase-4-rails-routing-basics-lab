class StudentsController < ApplicationController
    def index
        # byebug
        students = Student.all
        render json: students
    end

    def grades 
        # byebug
        studentsHighToLow = Student.all.sort{|a,b| b[:grade] <=> a[:grade]}
        render json: studentsHighToLow
    end


    def highest_grade
        studentsHigh = Student.all.sort{|a,b| b[:grade] <=> a[:grade]}[0]
        render json: studentsHigh
    end

end
