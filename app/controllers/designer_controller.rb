class DesignerController < ApplicationController
  def index
    @all_designers = Designer.all


  end

  def works

  end

  def about
    @designer = params[:id]
    @designerName = @designer.name
    @designerSurname = @designer.surname
    @designerDescription= @designer.description
    @designeImage = @designer.img_url

  end

  def full_string
    "#{name} #{lastname}"
  end
end
