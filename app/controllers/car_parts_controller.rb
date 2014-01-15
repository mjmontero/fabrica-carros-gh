class CarPartsController < ApplicationController
  # GET /car_parts
  # GET /car_parts.json
  def index
    @car_parts = CarPart.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @car_parts }
    end
  end

  # GET /car_parts/1
  # GET /car_parts/1.json
  def show
    @car_part = CarPart.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @car_part }
    end
  end

  # GET /car_parts/new
  # GET /car_parts/new.json
  def new
    @car_part = CarPart.new
    @car_part.picture = Picture.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @car_part }
    end
  end

  # GET /car_parts/1/edit
  def edit
    @car_part = CarPart.find(params[:id])
    @car_part.picture = Picture.new unless @car_part.picture != nil
  end

  # POST /car_parts
  # POST /car_parts.json
  def create
    @car_part = CarPart.new(params[:car_part])
    @car_part.picture = Picture.new(params[:picture])

    respond_to do |format|
      if @car_part.save
        format.html { redirect_to @car_part, notice: 'Car part was successfully created.' }
        format.json { render json: @car_part, status: :created, location: @car_part }
      else
        format.html { render action: "new" }
        format.json { render json: @car_part.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /car_parts/1
  # PUT /car_parts/1.json
  def update
    @car_part = CarPart.find(params[:id])

    respond_to do |format|
      if @car_part.update_attributes(params[:car_part])
        @car_part.picture.update_attributes(params[:picture])
        format.html { redirect_to @car_part, notice: 'Car part was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @car_part.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /car_parts/1
  # DELETE /car_parts/1.json
  def destroy
    @car_part = CarPart.find(params[:id])
    @car_part.destroy

    respond_to do |format|
      format.html { redirect_to car_parts_url }
      format.json { head :no_content }
    end
  end
end
