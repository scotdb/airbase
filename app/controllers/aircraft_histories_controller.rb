class AircraftHistoriesController < ApplicationController
  # GET /aircraft_histories
  # GET /aircraft_histories.xml
  def index
    @aircraft_histories = AircraftHistory.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @aircraft_histories }
    end
  end

  # GET /aircraft_histories/1
  # GET /aircraft_histories/1.xml
  def show
    @aircraft_history = AircraftHistory.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @aircraft_history }
    end
  end

  # GET /aircraft_histories/new
  # GET /aircraft_histories/new.xml
  def new
    @aircraft_history = AircraftHistory.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @aircraft_history }
    end
  end

  # GET /aircraft_histories/1/edit
  def edit
    @aircraft_history = AircraftHistory.find(params[:id])
  end

  # POST /aircraft_histories
  # POST /aircraft_histories.xml

  def create
    @aircraft = Aircraft.find(params[:aircraft_id])
    @aircraft_history = @aircraft.aircraft_histories.create(params[:aircraft_history])
    redirect_to aircraft_path(@aircraft)
  end

  # PUT /aircraft_histories/1
  # PUT /aircraft_histories/1.xml
  def update
    @aircraft_history = AircraftHistory.find(params[:id])

    respond_to do |format|
      if @aircraft_history.update_attributes(params[:aircraft_history])
        format.html { redirect_to(@aircraft_history, :notice => 'Aircraft history was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @aircraft_history.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /aircraft_histories/1
  # DELETE /aircraft_histories/1.xml
  def destroy
    @aircraft_history = AircraftHistory.find(params[:id])
    @aircraft_history.destroy

    respond_to do |format|
      format.html { redirect_to(aircraft_histories_url) }
      format.xml  { head :ok }
    end
  end
end
