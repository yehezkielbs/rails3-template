class PartialsController < ApplicationController

  def index
    render :template => "partials/#{params[:path]}", :layout => false
  end

end