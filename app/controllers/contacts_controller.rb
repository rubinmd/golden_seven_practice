class ContactsController < ApplicationController
  def index
    @contacts=Contact.all
  end

  def new_form
  end

  def submit_new
    c=Contact.new
    c.first_name=params["first_name"]
    c.last_name=params["last_name"]
    c.last_contact_date=params["last_contact_date"]
    c.last_contact_notes=params["last_contact_notes"]
    c.bio=params["bio"]
    c.photo_url=params["photo_url"]
    c.save
    redirect_to("/contacts")
  end

  def delete
    c=Contact.find(params[:id])
    c.destroy
    redirect_to("/contacts")
  end

  def view
    @contact=Contact.find(params[:id])
  end

  def update_form
    @contact=Contact.find(params[:id])
  end

  def update_contact
    c=Contact.find(params[:id])
    c.first_name=params["first_name"]
    c.last_name=params["last_name"]
    c.last_contact_date=params["last_contact_date"]
    c.last_contact_notes=params["last_contact_notes"]
    c.bio=params["bio"]
    c.photo_url=params["photo_url"]
    c.save
    redirect_to("/contacts")
  end

end
