class FilterBoxesController < ApplicationController
  before_action :set_filter_box, only: [:show, :edit, :update, :destroy]

  # GET /filter_boxes
  # GET /filter_boxes.json
  def index
    @filter_boxes = FilterBox.all
  end

  # GET /filter_boxes/1
  # GET /filter_boxes/1.json
  def show
  end

  # GET /filter_boxes/new
  def new
    @filter_box = FilterBox.new
  end

  # GET /filter_boxes/1/edit
  def edit
  end

  # POST /filter_boxes
  # POST /filter_boxes.json
  def create
    @filter_box = FilterBox.new(filter_box_params)

    respond_to do |format|
      if @filter_box.save
        format.html { redirect_to @filter_box, notice: 'Filter box was successfully created.' }
        format.json { render :show, status: :created, location: @filter_box }
      else
        format.html { render :new }
        format.json { render json: @filter_box.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /filter_boxes/1
  # PATCH/PUT /filter_boxes/1.json
  def update
    respond_to do |format|
      if @filter_box.update(filter_box_params)
        format.html { redirect_to @filter_box, notice: 'Filter box was successfully updated.' }
        format.json { render :show, status: :ok, location: @filter_box }
      else
        format.html { render :edit }
        format.json { render json: @filter_box.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /filter_boxes/1
  # DELETE /filter_boxes/1.json
  def destroy
    @filter_box.destroy
    respond_to do |format|
      format.html { redirect_to filter_boxes_url, notice: 'Filter box was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_filter_box
      @filter_box = FilterBox.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def filter_box_params
      params[:filter_box]
    end
end
