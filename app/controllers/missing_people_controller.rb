class MissingPeopleController < ApplicationController

  before_filter :set_event

  # GET /missing_people
  # GET /missing_people.json
  def index
    @missing_people = @event.missing_people.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @missing_people }
    end
  end

  # GET /missing_people/1
  # GET /missing_people/1.json
  def show
    @missing_person = @event.missing_people.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @missing_person }
    end
  end

  # GET /missing_people/new
  # GET /missing_people/new.json
  def new
    @missing_person = @event.missing_people.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @missing_person }
    end
  end

  # GET /missing_people/1/edit
  def edit
    @missing_person = @event.missing_people.find(params[:id])
  end

  # POST /missing_people
  # POST /missing_people.json
  def create
    @missing_person = @event.missing_people.new(params[:missing_person])

    respond_to do |format|
      if @missing_person.save
        format.html { redirect_to @event, notice: 'Missing person was successfully created.' }
        format.json { render json: @missing_person, status: :created, location: @missing_person }
      else
        format.html { render action: "new" }
        format.json { render json: @missing_person.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /missing_people/1
  # PUT /missing_people/1.json
  def update
    @missing_person = @event.missing_people.find(params[:id])

    respond_to do |format|
      if @missing_person.update_attributes(params[:missing_person])
        format.html { redirect_to @event, notice: 'Missing person was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @missing_person.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /missing_people/1
  # DELETE /missing_people/1.json
  def destroy
    @missing_person = @event.missing_people.find(params[:id])
    @missing_person.destroy

    respond_to do |format|
      format.html { redirect_to event_url(@event) }
      format.json { head :no_content }
    end
  end

  private
  def set_event
    @event = Event.find params[:event_id]
  end
end
