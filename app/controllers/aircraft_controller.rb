class AircraftController < ApplicationController
  # GET /aircraft
  # GET /aircraft.xml
  def index
    # @aircraft = Aircraft.all
    # @aircraft = Aircraft.paginate :page => params[:page] 
    @aircraft = Aircraft.search(params[:search], params[:page])

    # respond_to do |format|
    #   format.html # index.html.erb
    #   format.xml  { render :xml => @aircraft }
    # end
  end

  # GET /aircraft/1
  # GET /aircraft/1.xml
  def show
    @aircraft = Aircraft.find(params[:id])

    # respond_to do |format|
      # format.html # show.html.erb
      # format.xml  { render :xml => @aircraft }
    # end
  end

  # GET /aircraft/new
  # GET /aircraft/new.xml
  def new
    @aircraft = Aircraft.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @aircraft }
    end
  end

  # GET /aircraft/1/edit
  def edit
    @aircraft = Aircraft.find(params[:id])
  end

  # POST /aircraft
  # POST /aircraft.xml
  def create
    @aircraft = Aircraft.new(params[:aircraft])

    respond_to do |format|
      if @aircraft.save
        format.html { redirect_to(@aircraft, :notice => 'Aircraft was successfully created.') }
        format.xml  { render :xml => @aircraft, :status => :created, :location => @aircraft }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @aircraft.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /aircraft/1
  # PUT /aircraft/1.xml
  def update
    @aircraft = Aircraft.find(params[:id])

    respond_to do |format|
      if @aircraft.update_attributes(params[:aircraft])
        format.html { redirect_to(@aircraft, :notice => 'Aircraft was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @aircraft.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /aircraft/1
  # DELETE /aircraft/1.xml
  def destroy
    @aircraft = Aircraft.find(params[:id])
    @aircraft.destroy

    respond_to do |format|
      format.html { redirect_to(aircraft_index_url) }
      format.xml  { head :ok }
    end
  end

  def sort
    @aircraft = Aircraft.find(params[:id])
    @aircraft.aircraft_histories.each do |ah|
       ah.aircraft_sequence = params['ah-list' ].index(ah.id.to_s) + 1
       ah.save
    end
    render :nothing => true
  end
end
