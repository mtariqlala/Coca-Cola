class MakesController < ApplicationController
before_action :find_make, only: [:show, :update, :edit, :destroy]
def index
@make=Make.all.order("created_at DESC")
end
def show 
end 
def new
@make=Make.new
end
def create
@make=Make.new(make_params) 
if @make.save
	redirect_to @make
else
	render 'new'
end 
end 
def edit
	end 

def update
	if @make.update(make_params)
		redirect_to @make
	else 
		render 'edit'
	end
	end 
def destroy
if @make.destroy
redirect_to makes_path
else 
render @make
end 	
end

private 
def make_params

params.require(:make).permit(:delivery_id, :lorry_id)

	end 
def find_make

@make=Make.find(params[:id])

end 


end
