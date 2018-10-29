class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]


  def new
    @product = Product.new
  end

  def index
    @products = Product.all
    @clients = Client.all
  end

  def show
  end

  def edit
  end

  def destroy
    @product.destroy
    #ProductMailer.erased(@product).deliver_now
    redirect_to root_path
  end

  def create
    @product = Product.new(product_params)
      if Client.last.nil?
        client = Client.new(name:"Kauê" , email:"kauefm@gmail.com")
      else
        client = Client.last
      end
    @product.client = client
    if @product.save
        #ProductMailer.created(@product).deliver_now
       redirect_to products_path
    else
      render 'new'
    end
  end

  def update
    @product.update(product_params)
    #ProductMailer.edited(@product).deliver_now
    redirect_to products_path
  end

  private

    def product_params
      params.require(:product).permit(:description,:price,:quantity)
    end

    def set_product
      @product = Product.find(params[:id])
    end
end
