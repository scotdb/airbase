class AircraftStatusesController < ApplicationController
  # GET /aircraft_statuses
  # GET /aircraft_statuses.xml
  def index
    @aircraft_statuses = AircraftStatus.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @aircraft_statuses }
    end
  end

  # GET /aircraft_statuses/1
  # GET /aircraft_statuses/1.xml
  def show
    @aircraft_status = AircraftStatus.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @aircraft_status }
    end
  end

  # GET /aircraft_statuses/new
  # GET /aircraft_statuses/new.xml
  def new
    @aircraft_status = AircraftStatus.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @aircraft_status }
    end
  end

  # GET /aircraft_statuses/1/edit
  def edit
    @aircraft_status = AircraftStatus.find(params[:id])
  end

  # POST /aircraft_statuses
  # POST /aircraft_statuses.xml
  def create
    @aircraft_status = AircraftStatus.new(params[:aircraft_status])

    respond_to do |format|
      if @aircraft_status.save
        format.html { redirect_to(@aircraft_status, :notice => 'Aircraft status was successfully created.') }
        format.xml  { render :xml => @aircraft_status, :status => :created, :location => @aircraft_status }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @aircraft_status.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /aircraft_statuses/1
  # PUT /aircraft_statuses/1.xml
  def update
    @aircraft_status = AircraftStatus.find(params[:id])

    respond_to do |format|
      if @aircraft_status.update_attributes(params[:aircraft_status])
        format.html { redirect_to(@aircraft_status, :notice => 'Aircraft status was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @aircraft_status.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /aircraft_statuses/1
  # DELETE /aircraft_statuses/1.xml
  def destroy
    @aircraft_status = AircraftStatus.find(params[:id])
    @aircraft_status.destroy

    respond_to do |format|
      format.html { redirect_to(aircraft_statuses_url) }
      format.xml  { head :ok }
    end
  end
end
