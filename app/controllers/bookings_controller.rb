class BookingsController < ApplicationController
load_and_authorize_resource
skip_authorize_resource :only => [:new]

def index
  @puppy = Puppy.find(params[:puppy_id])
  @bookings = @puppy.bookings.all
end

def show
  @puppy = Puppy.find(params[:puppy_id])
  @booking = @puppy.bookings.find(params[:id])
end

def new
  @puppy = Puppy.find(params[:puppy_id])
  @booking = @puppy.bookings.new
end

def create
  @puppy = Puppy.find(params[:puppy_id])
  @booking = @puppy.bookings.new(booking_params)
  if @booking.save
    flash[:notice] = "booking was successfull"
    redirect_to root_path
 else
   flash[:alert] = "booking was not successfull!, Kindly fix the highligted areas and try again"
   render :new
  end
end

def edit
  @puppy = Puppy.find(params[:puppy_id])
end
  def update
    if @puppy.bookings.update(booking_params)
      flash[:notice] = "booking updated successfully"
      redirect_to root_path(@booking.puppy)
    else
      flash[:alert] = "booking was not updated!"
      render :edit
    end
  end

  def destroy
    @booking.destroy
    redirect_to root_path(@booking.puppy)
  end

  private
    def booking_params
      params.require(:booking).permit(:full_name, :mobile, :email, :asking_price)
    end

end
