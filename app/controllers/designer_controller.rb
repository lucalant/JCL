class DesignerController < ApplicationController
  def index
    @consoles = Console.order('name ASC').all
  end

  def works
  end

  def about
    @designer = Designer.find(params[:id])

  end
end
