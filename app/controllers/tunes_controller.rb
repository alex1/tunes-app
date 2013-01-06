class TunesController < ApplicationController

  ## can add: , except: [:index, :show]
  before_filter :authenticate_user! 

  # GET /tunes
  # GET /tunes.json
  def index
    #Makes a user only see their tunes
    @tunes = current_user.tunes

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @tunes }
    end
  end

  # GET /tunes/1
  # GET /tunes/1.json
  def show
    @tune = Tune.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @tune }
    end
  end

  # GET /tunes/new
  # GET /tunes/new.json
  def new
    @tune = Tune.new
    @tune.attachments.build
    Rails.logger.debug @tune
    Rails.logger.debug @tune.attachments

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @tune }
    end
  end

  # GET /tunes/1/edit
  def edit
    @tune = Tune.find(params[:id])
    #@tune = nil if @tune.user != current_user
    #should redirect somewhere nice
  end

  # POST /tunes
  # POST /tunes.json
  def create
    # @tune = Tune.new(params[:tune])
    @tune = current_user.tunes.create(params[:tune])

    respond_to do |format|
      if @tune.save
        format.html { redirect_to @tune, :notice => 'Tune was successfully created.' }
        format.json { render :json => @tune, :status => :created, :location => @tune }
      else
        format.html { render :action => "new" }
        format.json { render :json => @tune.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /tunes/1
  # PUT /tunes/1.json
  def update
    @tune = Tune.find(params[:id])

    respond_to do |format|
      if @tune.update_attributes(params[:tune])
        format.html { redirect_to @tune, :notice => 'Tune was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @tune.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /tunes/1
  # DELETE /tunes/1.json
  def destroy
    @tune = Tune.find(params[:id])
    @tune.destroy

    respond_to do |format|
      format.html { redirect_to tunes_url }
      format.json { head :no_content }
    end
  end

 # DELETE /tunes/1
  # DELETE /tunes/1.json
  def destroy_all
    @tunes = current_user.tunes
    @tunes.destroy_all

    respond_to do |format|
      format.html { redirect_to tunes_url }
      format.json { head :no_content }
    end
  end


  def to_param
    "#{id}-#{name.parameterize}"
  end

end
