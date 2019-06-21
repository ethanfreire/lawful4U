class ClientsController < ApplicationController
  before_action :authorized, except: [:index, :show]

  # layout "client"

  before_action :find_client, only: [:edit, :show, :update, :destroy]
  before_action :authorized, except: [:index]


  def index

    @clients = Client.all


  end

  def show

  end

  def new
    @client =  Client.new
  end

  def edit

  end

  def create
    @client = Client.new(client_params)
    if @client.valid?
      @client.save
      redirect_to client_path(@client)
    else
      render :new
    end
  end


  def update
    if @client.update(client_params)
      redirect_to client_path(@client)
    else
      render :edit
    end
  end

  def destroy
    user = User.find(find_client[:user_id])
    user.client.destroy
    user.destroy
    redirect_to login_path
  end

  private

  def find_client
    @client = Client.find(params[:id])
  end

  def client_params
    params.require(:client).permit(:name, :phone, :address, :user_id)
  end
end
