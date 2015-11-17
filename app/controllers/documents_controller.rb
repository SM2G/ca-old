class DocumentsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_document, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @documents = Document.order(:name)
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
    @document = Document.new(document_params)
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
    @document = Document.find(params[:id])
  end

  def document_params
    params.require(:document).permit(:name, :profile_id, :warning_days, :critical_days, :expire_days, :warning_months, :critical_months, :expire_months)
  end
end
