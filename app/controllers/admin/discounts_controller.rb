class Admin::DiscountsController < ApplicationController
  before_action :set_admin_discount, only: [:show, :edit, :update, :destroy]

  # GET /admin/discounts
  # GET /admin/discounts.json
  def index
    @admin_discounts = Admin::Discount.all
  end

  # GET /admin/discounts/1
  # GET /admin/discounts/1.json
  def show
  end

  # GET /admin/discounts/new
  def new
    @admin_discount = Admin::Discount.new
  end

  # GET /admin/discounts/1/edit
  def edit
  end

  # POST /admin/discounts
  # POST /admin/discounts.json
  def create
    @admin_discount = Admin::Discount.new(admin_discount_params)

    respond_to do |format|
      if @admin_discount.save
        format.html { redirect_to @admin_discount, notice: 'Discount was successfully created.' }
        format.json { render :show, status: :created, location: @admin_discount }
      else
        format.html { render :new }
        format.json { render json: @admin_discount.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/discounts/1
  # PATCH/PUT /admin/discounts/1.json
  def update
    respond_to do |format|
      if @admin_discount.update(admin_discount_params)
        format.html { redirect_to @admin_discount, notice: 'Discount was successfully updated.' }
        format.json { render :show, status: :ok, location: @admin_discount }
      else
        format.html { render :edit }
        format.json { render json: @admin_discount.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/discounts/1
  # DELETE /admin/discounts/1.json
  def destroy
    @admin_discount.destroy
    respond_to do |format|
      format.html { redirect_to admin_discounts_url, notice: 'Discount was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_discount
      @admin_discount = Admin::Discount.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_discount_params
      params.require(:admin_discount).permit(:started_at, :ended_at, :title, :description, :variant, :amount, :step, :discounted_product)
    end
end
