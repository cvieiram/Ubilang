class TranslationsController < ApplicationController
  respond_to :html, :xml, :json
  
  def index
    @translations = Translation.all
    respond_with @translations
  end

  def show
  end

  def new
  end

  def edit
  end

end
