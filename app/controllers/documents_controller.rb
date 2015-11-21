class DocumentsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_document, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @documents = current_user.documents.order(:name)
    respond_with(@documents)
  end

  def show
    respond_with(@document)
  end

  def new
    @document = Document.new
    respond_with(@document)
  end

  def edit
  end

  def create
    @document = current_user.documents.new(document_params)
    @document.save
    respond_with(@document)
  end

  def update
    @document.update(document_params)
    respond_with(@document)
  end

  def destroy
    Documents::DestroyService.new(@document).call
    respond_with(@document)
  end
  
  private

  def set_document
    @document = current_user.documents.find(params[:id])
  end

  def document_params
    params.require(:document).permit(
    :critical_days,
    :expire_days,
    :name,
    :warning_days
    )
  end
end
