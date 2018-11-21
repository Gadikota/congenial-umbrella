class ProductsController < ApplicationController
  def edit
    @product = Product.find_by id: params[:id]
    @categories = Category.all
  end

  def create
    @product = Product.create(product_params)
    @categories = Category.all
    if @product.new_record?
      flash.now[:error] = "Error saving product"
      render :new
      return
    end
    flash[:success] = "Created new product"
    redirect_to product_path(id: @product.id)
  end

  def new
    @product = Product.new
    @categories = Category.all
  end

  def show
    @product = Product.find params[:id]
  end

  def destroy
    @product = Product.find params[:id]
    @product.destroy
    if @product.persisted?
      flash[:error] = "Cannot delete '#{@product.name}'"
    end
    redirect_to products_path
  end

  def update
    @product = Product.find_by id: params[:id]
    if @product.update_attributes(product_params)
      flash[:success] = "Updated product"
      redirect_to products_path
    else
      @categories = Category.all
      flash.now[:error] = "Cannot update"
      render :edit
    end
  end

  def index
    @products = Product.all
  end


  private
    def product_params
      params.require(:product).permit(:name, :price, :category_id)
    end
end
