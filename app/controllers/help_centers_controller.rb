class HelpCentersController < ApplicationController
  
  before_filter :set_event

  # GET /help_centers
  # GET /help_centers.json
  def index
    @help_centers = @event.help_centers.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @help_centers }
    end
  end

  # GET /help_centers/1
  # GET /help_centers/1.json
  def show
    @help_center = @event.help_centers.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @help_center }
    end
  end

  # GET /help_centers/new
  # GET /help_centers/new.json
  def new
    @help_center = @event.help_centers.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @help_center }
    end
  end

  # GET /help_centers/1/edit
  def edit
    @help_center = @event.help_centers.find(params[:id])
  end

  # POST /help_centers
  # POST /help_centers.json
  def create
    @help_center = @event.help_centers.new(params[:help_center])

    respond_to do |format|
      if @help_center.save
        format.html { redirect_to @event, notice: 'Help center was successfully created.' }
        format.json { render json: @help_center, status: :created, location: @help_center }
      else
        format.html { render action: "new" }
        format.json { render json: @help_center.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /help_centers/1
  # PUT /help_centers/1.json
  def update
    @help_center = @event.help_centers.find(params[:id])

    respond_to do |format|
      if @help_center.update_attributes(params[:help_center])
        format.html { redirect_to @event, notice: 'Help center was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @help_center.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /help_centers/1
  # DELETE /help_centers/1.json
  def destroy
    @help_center = @event.help_centers.find(params[:id])
    @help_center.destroy

    respond_to do |format|
      format.html { redirect_to event_url(@event) }
      format.json { head :no_content }
    end
  end


  private
  def set_event
    @event = Event.find(params[:event_id])
  end
end
