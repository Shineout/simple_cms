class SectionsController < ApplicationController

     layout "admin"
     
  def index
    @sections = Section.order("position ASC")
  end

  def show
    @section = Section.find(params[:id])
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def delete
  end

  def destroy
  end
end
