class TemperaturesController < ApplicationController
def index
    @temperatures = Temperature.all
end
    
    def edit
    @temperature = Temperature.find(params[:id])
     end    
     
  def update
    @temperature = Temperature.find(params[:id]) 
    
  if @temperature.edit(temperature_params)
  redirect_to @temperature
  else
    render 'edit'
  end
  end  
    
    
     def show
    @temperature = Temperature.find(params[:id])
     end    
     
    def new
        @temperature = Temperature.new
    end
    
def create
  @temperature = Temperature.new(temperature_params)
  
  if @temperature.save
  redirect_to @temperature
  else
    render 'new'
  end
  end
  
  
  
def destroy
   @temperature = Temperature.find(params[:id])
   @temperature.destroy
 
  redirect_to temperatures_path
end
  
  
private
  def temperature_params
    params.require(:temperature).permit(:title, :text)
  end  
  
end
