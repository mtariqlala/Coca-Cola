class DriversController < ApplicationController


before_action :find_driver, only: [:show, :edit, :update, :destroy]
def index 
	      @drivers=Driver.all
end
def show

end 
def new 
          @driver=Driver.new
end 
def create
          @driver=Driver.new(driver_params)
       if @driver.save
       	  redirect_to @driver
       else
       	  render 'new'
       end
end
def edit


end
def update

	if @driver.update(driver_params)
		redirect_to @driver
	else
	render 'edit'	
end 
end
def destroy
      if @driver.destroy
      redirect_to root_path
      else 
      render @driver
  end
end

private 

def driver_params

params.require(:driver).permit(:name, :contact_no, :salary, :address)
end 

def find_driver
	@driver=Driver.find(params[:id])
end 
end
