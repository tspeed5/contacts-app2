class Api::ContactsController < ApplicationController
  def index
    @contacts = Contact.all
    render "index.json.jbuilder"
    p @contacts
  end

  def show
    contact_id = params[:id]
    @contact1 = Contact.find_by(id: contact_id)

    render "show.json.jbuilder"
  end

  def create
    @contact_new = Contact.new(
      first_name: params[:input_first_name],
      last_name: params[:input_last_name],
      middle_name: params[:input_middle_name],
      email: params[:input_email],
      phone_number: params[:input_phone_number],
      bio: params[:input_bio], 
      user_id: current_user.id
      )

    @contact_new.save
    render "create.json.jbuilder"

  end

  def update
    contact_id = params[:id]
    @contact_update = Contact.find_by(id: contact_id)
    @contact_update.first_name = params[:input_first_name] || @contact_update.first_name
    @contact_update.last_name = params[:input_last_name] || @contact_update.last_name
    @contact_update.email = params[:input_email] || @contact_update.phone_number 
    @contact_update.save

    render "update.json.jbuilder"
  end
end
