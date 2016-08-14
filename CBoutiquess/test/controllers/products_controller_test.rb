require 'test_helper'

class ProductsControllerTest < ActionController::TestCase
  setup do
    @product = products(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:products)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create product" do
    assert_difference('Product.count') do
      post :create, product: { brand_product: @product.brand_product, code_product: @product.code_product, description_product: @product.description_product, image_product: @product.image_product, price_product: @product.price_product, size_product: @product.size_product, status_product: @product.status_product, supplier_product: @product.supplier_product, type_product: @product.type_product }
    end

    assert_redirected_to product_path(assigns(:product))
  end

  test "should show product" do
    get :show, id: @product
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @product
    assert_response :success
  end

  test "should update product" do
    patch :update, id: @product, product: { brand_product: @product.brand_product, code_product: @product.code_product, description_product: @product.description_product, image_product: @product.image_product, price_product: @product.price_product, size_product: @product.size_product, status_product: @product.status_product, supplier_product: @product.supplier_product, type_product: @product.type_product }
    assert_redirected_to product_path(assigns(:product))
  end

  test "should destroy product" do
    assert_difference('Product.count', -1) do
      delete :destroy, id: @product
    end

    assert_redirected_to products_path
  end
end
