class AssistancesController < ApplicationController
  respond_to :html, :xml, :json
  
  def index
    @assistances = Assistance.includes(:translations).where(:country_id => params[:country], :site_id => params[:site])
    respond_with @assistances
  end

  def show
        @assistances = Assistance.all
    respond_with @assistances

  end

  def new
  end

  def edit
  end

end
