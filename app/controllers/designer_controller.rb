class DesignerController < ApplicationController
  def index
    @all_designers = Designer.all
  end

  def works

  end

  def about
    @designer = Designer.find(params[:id]).description

  end

  def full_string
    "#{name} #{lastname}"
  end

  # to check the inserted parameters for the designer
  def designer_params
    params.require(:name,:surname,:img_url).permit(:description, :did,:designer_id)
  end

end
