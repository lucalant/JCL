class DistributionController < ApplicationController
  def retail_shops
  end

  def showrooms

  end

  def assistance_points
  end

  def home_products_of_distribution
    @distribution = Distribution.find(params[:id])
    @home_product_distribution_list = HomeProductsDistributions.where("distribution_id = ?", params[:id])
    if @home_product_distribution_list != nil
      @home_products = Array.new
      @home_product_distribution_list.each do |home_product_distribution|
        @home_product = HomeProduct.find(home_product_distribution.home_product_id)
        @home_products.push @home_product
      end
    end
  end

  def workspaces_of_distribution
    @distribution = Distribution.find(params[:id])
    @workspace_distribution_list = WorkspacesDistributions.where("distribution_id = ?", params[:id])
    if @workspace_distribution_list != nil
      @workspaces = Array.new
      @workspace_distribution_list.each do |workspace_distribution|
        @workspace = Workspace.find(workspace_distribution.workspace_id)
        @workspaces.push @workspace
      end
    end
  end

  def index
    @distribution = Distribution.find(params[:id])
    @distributionImage = @distribution.img_url
    @all_distributions = Distribution.all

  end

  def map
    @distribution = Distribution.find(params[:id])
    @all_distributions = Distribution.all
  end

  def types

  end
end
