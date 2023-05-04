class Api::V2::ContentController < ApplicationController
    def index 
        # @content = TimeInterval.all
        # availableTimes = AvailableTime.all
        # @content = {timeIntervals:@content, availableTimes: availableTimes }
        initialize
        # pp alo
        render json: {hey: 'ola'}
    end

    def schedule
        # @schedule = Schedule.all;
        # newSchedule = @schedule.is_after(Date.today)
        # render json: newSchedule, only: [:date, :id, :start, :end]
        render json: {hey: 'ola'}
    end
end
