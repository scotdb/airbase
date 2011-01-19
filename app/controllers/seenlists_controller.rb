class SeenlistsController < ApplicationController
  # GET /seenlists
  # GET /seenlists.xml
  def index
    @seenlists = Seenlist.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @seenlists }
    end
  end

  # GET /seenlists/1
  # GET /seenlists/1.xml
  def show
    @seenlist = Seenlist.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @seenlist }
    end
  end

  # GET /seenlists/new
  # GET /seenlists/new.xml
  def new
    @seenlist = Seenlist.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @seenlist }
    end
  end

  # GET /seenlists/1/edit
  def edit
    @seenlist = Seenlist.find(params[:id])
  end

  # POST /seenlists
  # POST /seenlists.xml
  def create
    @seenlist = Seenlist.new(params[:seenlist])

    respond_to do |format|
      if @seenlist.save
        format.html { redirect_to(@seenlist, :notice => 'Seenlist was successfully created.') }
        format.xml  { render :xml => @seenlist, :status => :created, :location => @seenlist }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @seenlist.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /seenlists/1
  # PUT /seenlists/1.xml
  def update
    @seenlist = Seenlist.find(params[:id])

    respond_to do |format|
      if @seenlist.update_attributes(params[:seenlist])
        format.html { redirect_to(@seenlist, :notice => 'Seenlist was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @seenlist.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /seenlists/1
  # DELETE /seenlists/1.xml
  def destroy
    @seenlist = Seenlist.find(params[:id])
    @seenlist.destroy

    respond_to do |format|
      format.html { redirect_to(seenlists_url) }
      format.xml  { head :ok }
    end
  end
end
