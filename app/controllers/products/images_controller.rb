class Products::ImagesController < ApplicationController
  def create
    @product = Product.find params[:product_id]
    @image = @product.images.build(image_params)
    if @image.save
      flash[:success] = "Saved Image"
      redirect_to product_path(@product)
      return
    end
    flash.now[:error] = "Cannot save image......"
    render :new
  end

  def new
    @product = Product.find params[:product_id]
    @image = @product.images.build
  end

  def destroy
  end

  def show
  end

  def index
    @product = Product.find params[:product_id]
    @images = @product.images
  end

  private
    def image_params
      params.require(:image).permit(:file)
    end
end
