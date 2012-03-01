class ToppingsController < ApplicationController
  # GET /toppings
  # GET /toppings.json
  def index
    @toppings = Topping.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @toppings }
    end
  end

  # GET /toppings/1
  # GET /toppings/1.json
  def show
    @topping = Topping.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @topping }
    end
  end

  # GET /toppings/new
  # GET /toppings/new.json
  def new
    @topping = Topping.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @topping }
    end
  end

  # GET /toppings/1/edit
  def edit
    @topping = Topping.find(params[:id])
  end

  # POST /toppings
  # POST /toppings.json
  def create
    @topping = Topping.new(params[:topping])

    respond_to do |format|
      if @topping.save
        format.html { redirect_to @topping, notice: 'Topping was successfully created.' }
        format.json { render json: @topping, status: :created, location: @topping }
      else
        format.html { render action: "new" }
        format.json { render json: @topping.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /toppings/1
  # PUT /toppings/1.json
  def update
    @topping = Topping.find(params[:id])

    respond_to do |format|
      if @topping.update_attributes(params[:topping])
        format.html { redirect_to @topping, notice: 'Topping was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @topping.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /toppings/1
  # DELETE /toppings/1.json
  def destroy
    @topping = Topping.find(params[:id])
    @topping.destroy

    respond_to do |format|
      format.html { redirect_to toppings_url }
      format.json { head :no_content }
    end
  end
end
