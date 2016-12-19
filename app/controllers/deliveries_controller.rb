class DeliveriesController < ApplicationController
before_action :find_delivery, only: [:show, :edit, :update, :destoy]

def index
	@deliveries=Delivery.all
end 

def new

	@delivery=Delivery.new
end 

def create
    @delivery=Delivery.new(delivery_params)
    if @delivery.save
    	redirect_to @delivery
    else
    render 'new'	
end

end 

def show
end 

def edit
end 

def update
	if @delivery.update(delivery_params)
		redirect_to @manager
	else
	render 'edit'	
end 
end 

def destroy
	  if @delivery.destroy
      redirect_to root_path
      else 
      render @delivery
  end

end 


private 

def delivery_params
	params.require(:delivery).permit(:delivery_date, :distance_covered)
end
def find_delivery

@delivery= Delivery.find(params[:id])

	end


end
