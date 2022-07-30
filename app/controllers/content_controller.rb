class ContentController < ApplicationController

    def index 
        @content = TimeInterval.all
        render json: @content
    end
end
