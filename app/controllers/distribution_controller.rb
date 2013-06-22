class DistributionController < ApplicationController
  def retail_shops
  end

  def showrooms
    @distribution = Distribution.find(params[:id])
    @distributionImage = "/distribution/"+ @distribution.img_url

  end

  def assistance_points
  end

  def index
  end

  def map
  end

  def types
  end
end
