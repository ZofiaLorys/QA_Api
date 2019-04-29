class QuestionsController < ApplicationController
    def index
        @Questions = Question.all
        render json: {message: "ok", data: @Questions}
    end
    def show
        @Question = Question.find(params[:id])
        render json: {message: "ok", data: @Question}
    end
    
end
