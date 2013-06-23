class TopClientsController < ApplicationController
  def show

    @top_client = Top_client.find(params[:id])

    @name =  params[:name]
    @surname = params[:surname]
    @img = params[:img_url]
    @about = params[:about]
    @function = params[:function]
    @factory = params[:factory]


  end

  def all_top_clients




  end
end
class Top_client

end