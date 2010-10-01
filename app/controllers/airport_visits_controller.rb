class AirportVisitsController < ApplicationController
  # GET /airport_visits
  # GET /airport_visits.xml
  def index
    @airport_visits = AirportVisit.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @airport_visits }
    end
  end

  # GET /airport_visits/1
  # GET /airport_visits/1.xml
  def show
    @airport_visit = AirportVisit.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @airport_visit }
    end
  end

  # GET /airport_visits/new
  # GET /airport_visits/new.xml
  def new
    @airport_visit = AirportVisit.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @airport_visit }
    end
  end

  # GET /airport_visits/1/edit
  def edit
    @airport_visit = AirportVisit.find(params[:id])
  end

  # POST /airport_visits
  # POST /airport_visits.xml
  def create
    @airport = Airport.find(params[:airport_id])
    @airport_visit = @airport.airport_visits.create(params[:airport_visit])
    redirect_to airport_path(@airport)
  end

  # PUT /airport_visits/1
  # PUT /airport_visits/1.xml
  def update
    @airport_visit = AirportVisit.find(params[:id])

    respond_to do |format|
      if @airport_visit.update_attributes(params[:airport_visit])
        format.html { redirect_to(@airport_visit, :notice => 'Airport visit was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @airport_visit.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /airport_visits/1
  # DELETE /airport_visits/1.xml
  def destroy
    @airport = Airport.find(params[:airport_id])
    @airport_visit = @airport.airport_visits.find(params[:id])
    @airport_visit.destroy
    redirect_to airport_path(@airport)
  end
end
