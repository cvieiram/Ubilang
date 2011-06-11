class AssistancesController < ApplicationController
  respond_to :html, :xml, :json
  
  def index
    @countries = Country.all
    @sites = Site.all
    @languages = Language.all
    @search = Assistance.includes(:translations).search(params[:search])
    @assistances = @search.all
  end

  def show
    @assistances = Assistance.includes(:translations).where(:country_id => params[:country], :site_id => params[:site])

  end

  def new
  end

  def edit
  end

end
