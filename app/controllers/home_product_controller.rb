class HomeProductController < ApplicationController
  def index

  end

  def top
    @top_home_product = HomeProduct.where('top = "t"').order('title ASC')
  end

  def new

  end

  def home_products_by_type
    @product_type = params[:type]
    @home_product_by_type = HomeProduct.where('type = ?', @product_type).order('title ASC')
  end

  def products_by_room
    @room = params[:room]
    @home_product_by_room = HomeProduct.where('room = ?', @room).order('title ASC')

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
