class DesignerController < ApplicationController
  def index
    @all_designers = Designer.all
  end

  def works

  end

  def about
    @designer = Designer.find(params[:id])
    @designerImage = "/designer/"+ @designer.img_url
  end

  def full_string
    "#{name} #{lastname}"
  end
end
