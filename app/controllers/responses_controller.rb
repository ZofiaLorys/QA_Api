class ResponsesController < ApplicationController
    def create
        @Response = Response.new
        @Response.question_id = params[:question_id]
        @Response.message = params[:message]
        @Response.created_by = params[:created_by]
        @Response.save
    end
end
