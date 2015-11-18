class PapersController < ApplicationController
  before_action :authenticate_user!
  before_action :set_paper, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @papers = current_user.papers.order(:expiration_date)
    respond_with(@papers)
  end

  def show
    respond_with(@paper)
  end

  def edit
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
    @paper = current_user.papers.find(params[:id])
  end

  def paper_params
    params.require(:paper).permit(:expiration_date, :document_file)
  end
end
