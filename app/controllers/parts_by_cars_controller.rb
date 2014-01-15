class PartsByCarsController < ApplicationController
  # GET /parts_by_cars
  # GET /parts_by_cars.json
  def index
    @parts_by_cars = PartsByCar.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @parts_by_cars }
    end
  end

  # GET /parts_by_cars/1
  # GET /parts_by_cars/1.json
  def show
    @parts_by_car = PartsByCar.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @parts_by_car }
    end
  end

  # GET /parts_by_cars/new
  # GET /parts_by_cars/new.json
  def new
    @parts_by_car = PartsByCar.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @parts_by_car }
    end
  end

  # GET /parts_by_cars/1/edit
  def edit
    @parts_by_car = PartsByCar.find(params[:id])
  end

  # POST /parts_by_cars
  # POST /parts_by_cars.json
  def create
    @parts_by_car = PartsByCar.new(params[:parts_by_car])

    respond_to do |format|
      if @parts_by_car.save
        format.html { redirect_to @parts_by_car, notice: 'Parts by car was successfully created.' }
        format.json { render json: @parts_by_car, status: :created, location: @parts_by_car }
      else
        format.html { render action: "new" }
        format.json { render json: @parts_by_car.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /parts_by_cars/1
  # PUT /parts_by_cars/1.json
  def update
    @parts_by_car = PartsByCar.find(params[:id])

    respond_to do |format|
      if @parts_by_car.update_attributes(params[:parts_by_car])
        format.html { redirect_to @parts_by_car, notice: 'Parts by car was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @parts_by_car.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /parts_by_cars/1
  # DELETE /parts_by_cars/1.json
  def destroy
    @parts_by_car = PartsByCar.find(params[:id])
    @parts_by_car.destroy

    respond_to do |format|
      format.html { redirect_to parts_by_cars_url }
      format.json { head :no_content }
    end
  end
end
