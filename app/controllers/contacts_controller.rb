class ContactsController < ApplicationController
  def index
    @contact = Contact.new
  end

  def new
    @contact = Contact.new
  end

  def create
    contact = Contact.new(params[:contact])
    if contact.save
      redirect_to root_path, :notice => "Success"
    else
      render "index"
    end
  end
end
