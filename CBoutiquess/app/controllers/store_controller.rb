class StoreController < ApplicationController
  def index
    @proveedors = Proveedor.all
    @products = Product.all
  end
end
