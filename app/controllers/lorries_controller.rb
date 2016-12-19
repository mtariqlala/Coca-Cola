class LorriesController < ApplicationController
before_action :find_lorry, only: [:show, :update, :edit, :destroy]
def index
@lorries=Lorry.all.order("created_at DESC")
end
def show 
end 
def new
@lorry=Lorry.new
end
def create
@lorry=Lorry.new(lorry_params) 
if @lorry.save
	redirect_to @lorry
else
	render 'new'
end 
end 
def edit
	end 

def update
	if @lorry.update(lorry_params)
		redirect_to @lorry
	else 
		render 'edit'
	end
	end 
def destroy
if @lorry.destroy
redirect_to lorries_path
else 
render @lorry
end 	
end

private 
def lorry_params

params.require(:lorry).permit(:Lorry_no, :made_in, :date_of_manufacturer)

	end 
def find_lorry

@lorry=Lorry.find(params[:id])

end 


end
