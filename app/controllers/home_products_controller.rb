class HomeProductsController < ApplicationController



  def by_partners
    @partners_prod = HomeProduct.where('partner = "t"')
  end
  def products_by_room
    @room = params[:room]
    @home_product_by_room = HomeProduct.where('room = ?', @room)
    if @home_product_by_room == nil
      format.html { redirect_to room_home_products_path, :notice => "We are sorry, but there isn't any product in this room" }
    end

  end

  def home_products_by_type
    @category = params[:category]
    @home_product_by_type = HomeProduct.where('type = ?', @category).order('title ASC')
    if @home_product_by_room == nil
      format.html { redirect_to type_home_products_path, :notice => "We are sorry, but there isn't any product in this category" }
    end

  end

  def new_home_products
    @home_product = HomeProduct.new(params[:home_product])
    respond_to do |format|
    if @home_product.save
      format.html { redirect_to pages_admin_path, :notice => 'Product was successfully created.' }
    else
      format.html { render :action => "new_home" }
    end
    end
  end


  def top_home_products
    @top_home_product = HomeProduct.where('top = "t"').order('title ASC')
  end

  def index
    @home_product = HomeProduct.find(params[:id])

    @name =  params[:name]
    @img = params[:images]
    @txt = params[:text]
    @int = params[:introduction]
    @top = params[:top]
    @cat = params[:category]
    @room = params[:room]

    #@designerId = hash[@designer]

    if @designer
      @par = HomeProduct.find(@designer)
      @prodesigner = @par.name
    end


    if @name
      @par = HomeProduct.find(@name)
      @proname = @par.name
    end

    if @img
      @par =HomeProduct.find(@img)
      @proimg = @par.images
    end

    if @txt
      @par = HomeProduct.find(@txt)
      @prodescr = @par.text
    end

    if @int
      @par = HomeProduct.find(@int)
      @prointro = @par.introduction
    end

    if @top
      @par = HomeProduct.find(@top)
      @protop = @par.top
    end


    @right = case
               when @room
                @p = HomeProduct.where('room =?', @room)
                hash = Hash[@p.map.with_index.to_a]
                @i = hash[@home_product]
                @m = @p.count

              if (@i == @m-1 )
                 @p[0].id
              else
                 @p[@i.to_i + 1].id

              end

               when @category
                 @p = HomeProduct.where('category =?', @category)
                 hash = Hash[@p.map.with_index.to_a]
                 @i = hash[@home_product]
                 @m = @p.count

                 if (@i == @m-1 )
                   @p[0].id
                 else
                   @p[@i.to_i + 1].id

                 end
             else
             end




    @left =  case
                when @room
                  @p = HomeProduct.where('room =?', @room)
                  hash = Hash[@p.map.with_index.to_a]
                  @i = hash[@home_product]
                  @m = @p.count

                  if  (@i == 1 )
                     @p[@m - 2].id
                  else
                     @p[@i.to_i - 1].id
                  end

               when @category
                 @p = HomeProduct.where('category =?', @category)
                 hash = Hash[@p.map.with_index.to_a]
                 @i = hash[@home_product]
                 @m = @p.count

                 if  (@i == 1 )
                   @p[@m - 2].id
                 else
                   @p[@i.to_i - 1].id
                 end
              else
             end



  end


  #per eventuale implementazione di group links anche tra le stanze



  def all_types
  end

  def home_distribution
    @id =params[:id]
    @home_product = HomeProduct.find(@id)
    @home_product_distr_list = home_distribution.where("home_product = ?", @id )
    if @home_product_distr_list !=nil
      @distributions = Array.new
      @home_product_distr_list.each do |homep_distr|
        @distribution = Distribution.find(homep_distr.distribution_id)
        @distributions.push @distribution
      end


  end
end

def home_products_params
  params.require(:name,:introduction,:images,:text,:home_product_id,:room,:top,:type).permit(:eid, :did,:top_client_id,:pid)
end
end




