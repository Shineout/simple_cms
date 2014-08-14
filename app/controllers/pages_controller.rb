class PagesController < ApplicationController

   layout "admin"
  
  def index
    @pages = Page.order('position ASC')
  end

  def show
    @page = Page.find(params[:id])
  end

  def new
    @page = Page.new(:name => "Default page")
  end

  def create
    @page = Page.new(page_params)
    if @page.save
      flash[:notice] = "Создана страница #{@page.name}"
      redirect_to(:action => "index")
    else
      render('new')
    end

  end

  def edit
    @page = Page.find(params[:id])
  end

  def update
    @page = Page.find(params[:id])
    if @page.update_attributes(page_params)
      flash[:notice] = "Обновлена страница #{@page.name}"
      redirect_to(:action => "show", :id => @page.id)
    else
      render('edit')
    end
  end

  def delete
    @page = Page.find(params[:id])
  end

  def destroy
    @page = Page.find(params[:id]).destroy
    flash[:notice] = "Страница '#{page.name}' успешно удалена!"
    redirect_to(:action => 'index')
  end

  def page_params
    params.require(:page).permit(:name, :permalink, :position, :visible)
  end
end
