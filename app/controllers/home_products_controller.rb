class HomeProductsController < ApplicationController




  def products_by_room
    @room = params[:room]
    @home_product_by_room = HomeProduct.where('room = ?', @room).order('title ASC')

  end

  def home_products_by_type
    @product_type = params[:type]
    @home_product_by_type = HomeProduct.where('type = ?', @product_type).order('title ASC')

  end

  def new_home_products
  end

  def top_home_products
    @top_home_product = HomeProduct.where('top = "t"').order('title ASC')
  end

  def index
  end

  def all_rooms


  end



  def all_types
  end

  def home_distribution
  end

