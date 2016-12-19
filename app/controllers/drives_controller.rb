class DrivesController < ApplicationController


before_action :find_drive, only: [:show, :update, :edit, :destroy]
def index
@drives=Drive.all.order("created_at DESC")
end
def show 
end 
def new
@drive=Drive.new
end
def create
@drive=Drive.new(drive_params) 
if @drive.save
	redirect_to @drive
else
	render 'new'
end 
end 
def edit
	end 

def update
	if @drive.update(drive_params)
		redirect_to @drive
	else 
		render 'edit'
	end
	end 
def destroy
if @drive.destroy
redirect_to drives_path
else 
render @drive
end 	
end

private 
def drive_params

params.require(:drive).permit(:date_of, :lorry_id, :driver_id)

	end 
def find_drive

@drive=Drive.find(params[:id])

end 







end
