class CalendarsController < ApplicationController
  # GET /calendars
  # GET /calendars.json
  def view

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @calendars }
    end
  end

end
