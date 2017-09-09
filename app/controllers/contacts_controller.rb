class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      flash[:notice] = "Success!! We'll get back to you"
      redirect_to root_path
    else
      flash[:notice] = 'error! Kindly fix the highligted issues first'
      render :new
    end
  end

  private

  def contact_params
    params.require(:contact).permit(:full_name, :mobile, :email, :message)
  end
end
