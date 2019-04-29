class QuestionsController < ApplicationController
    def index
        @Questions = Question.all
        render json: {message: "ok", data: @Questions}
    end
    def show
        @Question = Question.find(params[:id])
        @Response = Question.find(params[:id]).responses
        render json: {message: "ok", Question: @Question, Response: @Response}
    end
    def create
        @Question = Question.new
        @Question.title = params[:title]
        @Question.created_by = params[:created_by]
        @Question.save
  end

end
