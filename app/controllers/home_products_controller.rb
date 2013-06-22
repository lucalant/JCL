class HomeProductsController < ApplicationController



  def by_partners
    @partners_prod = HomeProduct.where('partner = "t"')
  end
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
    @home_product = home_product.find(params[:id])

    @name =  params[:name]
    @img = params [:images]
    @txt = params [:text]
    @int = params [:introduction]
    @top = params [:top]
    @cat = params [:category]

    if @cat
      @par = home_product.find(@cat)
      @procat = @par.category
    end

    if @name
      @par = home_product.find(@name)
      @proname = @par.name
    end

    if @img
      @par = home_product.find(@img)
      @proimg = @par.images
    end

    if @txt
      @par = home_product.find(@txt)
      @prodescr = @par.text
    end

    if @int
      @par = home_product.find(@int)
      @prointro = @par.introduction
    end

    if @top
      @par = home_product.find(@top)
      @protop = @par.top
    end

  end

  def all_rooms


  end



  def all_types
  end

  def home_distribution
  end
 end

