# app/controllers/owner/properties_controller.rb
class Owner::PropertiesController < ApplicationController
  before_action :set_property, only: [:show, :edit, :update, :destroy]

  def index
    @properties = Property.all
  end

  def new
    @property = Property.new
  end

  def create
    @property = Property.new(property_params)
    if @property.save
      redirect_to owner_properties_path, notice: "Property created successfully"
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @property.update(property_params)
      redirect_to owner_properties_path, notice: "Property updated successfully"
    else
      render :edit
    end
  end

  def destroy
    @property.destroy
    redirect_to owner_properties_path, notice: "Property deleted successfully"
  end

  private

  def set_property
    @property = Property.find(params[:id])
  end

  def property_params
    params.require(:property).permit(:property_type_id, :address_line_1, :address_line_2, :city, :state, :country, :postal_code, :owner_id, :description)
  end
end
