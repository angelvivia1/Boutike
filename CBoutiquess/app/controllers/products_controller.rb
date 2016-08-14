
class ProductsController < ApplicationController

  before_action :set_product, only: [:show, :edit, :update, :destroy, :venta]
  require 'prawn/table'
  # GET /products
  # GET /products.json
  def index
    @proveedors = Proveedor.all
    @products = Product.all

    @products = Product.order(:code_product)

    respond_to do |format|
      format.html
      format.csv { render text: @products.to_csv }
      format.pdf do
        pdf = ReportPdf.new(@products)
        send_data pdf.render, filename: 'Productos.pdf'
      end
    end

  end


  # GET /products/1
  # GET /products/1.json
  def show
    @proveedors = Proveedor.all
  end

  # GET /products/new
  def new
    @proveedors = Proveedor.all
    @product = Product.new
  end


  # GET /products/1/edit
  def edit
    @proveedors = Proveedor.all
  end

  # POST /products
  # POST /products.json
  def create
    @product = Product.new(product_params)

    respond_to do |format|
      if @product.save
        format.html { redirect_to @product, notice: 'Product was successfully created.' }
        format.json { render :show, status: :created, location: @product }
      else
        format.html { render :new }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /products/1
  # PATCH/PUT /products/1.json
  def update
    respond_to do |format|
      if @product.update(product_params)
        format.html { redirect_to @product, notice: 'Product was successfully updated.' }
        format.json { render :show, status: :ok, location: @product }
      else
        format.html { render :edit }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /products/1
  # DELETE /products/1.json
  def destroy
    @product.destroy
    respond_to do |format|
      format.html { redirect_to products_url, notice: 'Product was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_params
      params.require(:product).permit(:code_product, :brand_product, :size_product, :type_product, :description_product, :supplier_product, :price_product, :image_product, :status_product, :stocks)
    end


  class ReportPdf < Prawn::Document

    def initialize(product)
      super()
      @products = Product.order("code_product desc").all
      header
      text_content
      table_content

    end

    def header
      #This inserts an image in the pdf file and sets the size of the image
      # image "#{Rails.root}/app/assets/images/header.png", width: 530, height: 150
      #image"#{Rails.root}/app/assets/images/header.png", height: 15

      y_position = cursor - 10

      # The bounding_box takes the x and y coordinates for positioning its content and some options to style it
      bounding_box([0, y_position], :width => 300, :height => 20) do
        text "Control Boutique Juanita", size: 17, style: :bold


    end

    def text_content
      # The cursor for inserting content starts on the top left of the page. Here we move it down a little to create more space between the text and the image inserted above
      y_position = cursor - 10

      # The bounding_box takes the x and y coordinates for positioning its content and some options to style it
      bounding_box([200, y_position], :width => 300, :height => 30) do
        text "Reporte de Inventario", size: 15, style: :bold

      end

      #bounding_box([200, y_position], :width => 300 , :height => 30) do
        #text "Reporte de Productos", size: 15, style: :bold
        #text "Contenido"
      #end

    end

    def table_content
      # This makes a call to product_rows and gets back an array of data that will populate the columns and rows of a table
      # I then included some styling to include a header and make its text bold. I made the row background colors alternate between grey and white
      # Then I set the table column widths
      table product_rows do
        row(0).font_style = :bold
        self.header = false
        self.row_colors = ['DDDDDD', 'FFFFFF']
        self.column_widths = [70, 70, 70, 80, 70, 85, 85]
      end
    end


    def product_rows
      [['Codigo', 'Nombre', 'Marca', 'Proveedor', 'Precio', 'Estatus', 'Existencias']] +
          @products.map do |product|
            [product.code_product,product.type_product,product.brand_product,product.supplier_product,
             product.price_product, product.status_product, product.stocks
            ]
          end


    end

  end

  end
end

