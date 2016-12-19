class GetsController < ApplicationController

before_action :find_get, only: [:show, :edit, :update, :destroy]

def index
	@gets=Get.all
end 

def new

	@get=Get.new
end 

def create
    @get=Get.new(get_params)
    if @get.save
    	redirect_to @get
    else
    render 'new'	
end

end 

def show
end 

def edit
end 

def update
	if @get.update(get_params)
		redirect_to @get
	else
	render 'edit'	
end 
end 

def destroy
	  if @get.destroy
      redirect_to root_path
      else 
      render @get
  end

end 


private 

def get_params
	params.require(:get).permit(:outlet_id, :delivery_id)
end
def find_get

@get= Get.find(params[:id])

	end








end
