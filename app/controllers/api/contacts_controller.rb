class Api::ContactsController < ApplicationController
  def index
    @contacts = Contact.all
    render "index.json.jbuilder"
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
      email: params[:input_email],
      phone_number: params[:phone_number]
      )

    render "create.json.jbuilder"

    @contact_new.save
  end

  def update
    contact_id = params[:id]
    @contact_update = Contact.find_by(id: contact_id)
    @contact_update.first_name = params[:input_first_name] || @contact_update.first_name
    @contact_update.last_name = params[:input_last_name] || @ contact_update.last_name
    @contact_update.email = params[:input_email] || @contact_update.phone_number 
    @contact_update.save

    render "update.json.jbuilder"
  end
end
