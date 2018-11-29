class ContactsController < ApplicationController
  before_action :set_contact, only: [:show, :edit, :update, :destroy]

  def index
    @contacts = Contact.all
  end

  def show
    byebug
  end

  def new
    @contacts = Contact.new
  end

  def create
    @contacts = Contact.new(contact_params)
    if @contact.save
      redirect_to contacts_path
    else
      render :new, notice: "Não foi possível criar um novo contato"
  end

  def edit
  end

  def update
    if @contact.update
      redirect_to contacts_path
    else
      render :new, notice: "Não foi possível atualizar o contato"
  end

  def destroy
    @contact.destroy
    redirect_to contact_path
  end

  private

  def set_contact
    @contact = Contact.find(params[:id])
  end

  def contact_params
    params.require(:contac).permit(:name)
  end

end
