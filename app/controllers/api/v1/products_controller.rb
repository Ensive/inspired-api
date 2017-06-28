class Api::V1::ProductsController < Api::V1::BaseController

  # GET /products.json
  def index
    respond_with Product.all
  end

  # GET /products/1.json
  def show
    respond_with Product.find(params[:id])
  end

end
