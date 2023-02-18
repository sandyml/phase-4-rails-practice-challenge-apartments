class ApartmentsController < ApplicationController

 def index
  render json: Apartment.all, status: :ok
 end

 def show
  render json: Apartment.find_by(id: params[:id]), status: :ok
 end

 def create
  ap = Apartment.create(apartment_params)
  render json: ap, status: :created
 end

 def update
  a = Apartment.find_by(id: params[:id])
  render json: a.update(apartment_params), status: :ok 
 end

 def destroy
  Apartment.find_by(id: params[:id]).destroy
  render head: :no_content
 end

 private 

 def apartment_params
  params.permit(:number)
 end

end
