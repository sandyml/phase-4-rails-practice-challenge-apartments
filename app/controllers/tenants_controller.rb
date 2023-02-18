class TenantsController < ApplicationController

 def index
  render json: Tenant.all, status: :ok
end

def show
  render json: Tenant.find_by(id: params[:id]), status: :ok
end

def create
  tenant = Tenant.create(tenant_params)
  if tenant.valid?
      render json: tenant, status: :ok
  else
      render json: { error: tenant.errors.full_messages }, status: :unprocessable_entity
  end
end


 def update
  t = Tenant.find_by(id: params[:id])
  if t
   t.update(tenant_params)
    if t.valid?
     render json: t, status: :ok
    else 
     render json: { error: t.errors.full_messages }
    end
  else
   render json: { error: "Tenant not found" }, status: :not_found
  end
 end

 def destroy
  
 end

 private

 def tenant_params
  params.permit(:name, :age)
 end

end
