class LeasesController < ApplicationController

 def index
  render json: Tenant.all, status: :ok
 end

 def create
  lease = Lease.create(lease_params)
  if lease.valid?
   render json: lease, status: :ok
  else
   render json: {errors: lease.errors.full_messages }, status: :unprocessable_entity
  end
 end

 def destroy
  lease = Lease.find_by(id: params[:id])
   if lease
    lease.destroy
    render head :no_content
   else
    render json: { error: ["Lease not found"] }, status: :not_found
   end
 end

 private

 def lease_params
  params.permit(:rent, :tenant_id, :apartment_id)
 end

end