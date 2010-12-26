class WomenController < ApplicationController
  # GET /women
  # GET /women.xml
  def index
    @women = Woman.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @women }
    end
  end

  # GET /women/1
  # GET /women/1.xml
  def show
    @woman = Woman.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @woman }
    end
  end

  # GET /women/new
  # GET /women/new.xml
  def new
    @woman = Woman.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @woman }
    end
  end

  # GET /women/1/edit
  def edit
    @woman = Woman.find(params[:id])
  end

  # POST /women
  # POST /women.xml
  def create
    @woman = Woman.new(params[:woman])

    respond_to do |format|
      if @woman.save
        format.html { redirect_to(@woman, :notice => 'Woman was successfully created.') }
        format.xml  { render :xml => @woman, :status => :created, :location => @woman }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @woman.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /women/1
  # PUT /women/1.xml
  def update
    @woman = Woman.find(params[:id])

    respond_to do |format|
      if @woman.update_attributes(params[:woman])
        format.html { redirect_to(@woman, :notice => 'Woman was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @woman.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /women/1
  # DELETE /women/1.xml
  def destroy
    @woman = Woman.find(params[:id])
    @woman.destroy

    respond_to do |format|
      format.html { redirect_to(women_url) }
      format.xml  { head :ok }
    end
  end
end
