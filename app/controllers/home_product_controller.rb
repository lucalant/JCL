class HomeProductController < ApplicationController
  def index
  end

  def top
  end

  def new

  end

  def types
  end

  def products_by_room
    @room = params[:room]
    @home_product_byroom = HomeProduct.where('room = ?', @room).order('title ASC')

  end
  def create
    image_io = params[:home_product][:image_url]
    File.open(Rails.root.join('assets','images','homeproduct' image_io.original_filename), 'wb') do |file|
      file.write(image_io.read)
    end
    params[:home_product][:image_url] = image_io.original_filename
    HomeProduct.create(params[:home_product])
    redirect_to admins_path
  end
end
