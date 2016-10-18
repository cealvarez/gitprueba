class ApiController < ApplicationController
  protect_from_forgery with: :exception
  skip_before_filter  :verify_authenticity_token
  respond_to :json
  def index
  	response = []
  	Schedule.all.each do |horario|
      resp_json = {:id => horario.id, :timestamp => horario.timestamp}.to_json  
      response.push(JSON.parse(resp_json))
    end
  	respond_to do |format|    
      format.html {}
      format.json { render :json => response}
      format.js
    end
  end

  def show
  	
  end
end
