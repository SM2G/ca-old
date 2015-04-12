class PapersController < ApplicationController
  before_action :set_paper, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @papers = Paper.all
    respond_with(@papers)
  end

  def show
    respond_with(@paper)
  end

  def new
    @paper = Paper.new
    respond_with(@paper)
  end

  def edit
  end


  #def create @invoice = Invoice.new(params[:invoice]) @invoice.order_id = @session["order_id"] 
  #  for item_id in params[:invoice_item][:item_id] do 
  #    @invoice.invoice_items << InvoiceItem.new(:item_id => item_id) 
  #  end if @invoice.save flash[:notice] = 'Invoice was successfully created.' 
  #  redirect_to :action => 'list' else render :action => 'new' 
  #  end 
  #end 


  def create
    @paper = Paper.new(paper_params)
    @paper.save
    respond_with(@paper)
  end

  def update
    @paper.update(paper_params)
    respond_with(@paper)
  end

  def destroy
    @paper.destroy
    respond_with(@paper)
  end

  private
    def set_paper
      @paper = Paper.find(params[:id])
    end

    def paper_params
      params.require(:paper).permit(:document_id, :expiration_date)
    end
end
