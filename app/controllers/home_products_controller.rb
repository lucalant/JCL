class HomeProductsController < ApplicationController



  def by_partners
    @partners_prod = HomeProduct.where('partner = "t"')
  end
  def products_by_room
    @room = params[:room]
    @home_product_by_room = HomeProduct.where('room = ?', @room)
    if @home_product_by_room == nil
      format.html { redirect_to admin_home_product_path, :notice => "We are sorry, but there isn't any product" }
    end

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
    @home_product = HomeProduct.find(params[:id])

    @name =  params[:name]
    @img = params[:images]
    @txt = params[:text]
    @int = params[:introduction]
    @top = params[:top]
    @cat = params[:category]

    if @cat
      @par = HomeProduct.find(@cat)
      @procat = @par.category
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

    when @home_product.id >1
    :id => @home_product.id-1



  end

  def all_rooms


  end



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
end

def home_products_params
  params.require(:name,:introduction,:images,:text,:home_product_id,:room,:top,:type).permit(:eid, :did,:top_client_id,:pid)
end

def orientation_links
  if @home_product_by_room.id >1
end

<% if @designer.id > 1 %>
<%= link_to 'Previous', designer_about_path(:id => @designer.id-1), {:class => "asc-button small gray"} %>&nbsp;<strong>……</strong>&nbsp;
              <% end %>
            <% if @designer.id<@all_designers.size%>
                <%= link_to 'Next', designer_about_path(:id => @designer.id+1), {:class => "asc-button small gray"} %>
    <% end %>
[24/06/13 00:23:31] Julia: e devi mettere @all_designers = Designer.all