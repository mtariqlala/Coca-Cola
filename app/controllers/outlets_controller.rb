class OutletsController < ApplicationController



before_action :find_outlet, only: [:show, :edit, :update, :destroy]
def index 
	      @outlets=Outlet.all
end
def show

end 
def new 
          @outlet=Outlet.new
end 
def create
          @outlet=Outlet.new(outlet_params)
       if @outlet.save
       	  redirect_to @outlet
       else
        flash[:danger] = 'there is a error.' 
       	  render 'new'
       end
end
def edit


end
def update

	if @outlet.update(outlet_params)
		redirect_to @outlet
	else
	render 'edit'	
end 
end
def destroy
      if @outlet.destroy
      redirect_to root_path
      else 
      render @outlet 
  end
end

private 
def outlet_params

params.require(:outlet).permit(:outlet_Name, :location, :manager_id)
end 

def find_outlet
	@outlet=Outlet.find(params[:id])
end 


end
