class DemoController < ApplicationController

	layout 'application'

  def index


  end

  def hello

  	@array = [1,2,3,4,55]

  	# @id = params [:id]
  	# @page = params [:page]



  end

  def other_hello
  	redirect_to ("http://www.ya.ru")
  end
end
