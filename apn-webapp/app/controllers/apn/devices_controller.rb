class Apn::DevicesController < ApplicationController
  # GET /apn/devices
  # GET /apn/devices.xml
  def index
    @apn_devices = APN::Device.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @apn_devices }
    end
  end

  # GET /apn/devices/1
  # GET /apn/devices/1.xml
  def show
    @apn_device = APN::Device.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @apn_device }
    end
  end

  # GET /apn/devices/new
  # GET /apn/devices/new.xml
  def new
    @apn_device = APN::Device.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @apn_device }
    end
  end

  # GET /apn/devices/1/edit
  def edit
    @apn_device = APN::Device.find(params[:id])
  end

  # POST /apn/devices
  # POST /apn/devices.xml
  def create
    @apn_device = APN::Device.new(params[:apn_device])

    respond_to do |format|
      if @apn_device.save
        format.html { redirect_to(@apn_device, :notice => 'Device was successfully created.') }
        format.xml  { render :xml => @apn_device, :status => :created, :location => @apn_device }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @apn_device.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /apn/devices/1
  # PUT /apn/devices/1.xml
  def update
    @apn_device = APN::Device.find(params[:id])

    respond_to do |format|
      if @apn_device.update_attributes(params[:apn_device])
        format.html { redirect_to(@apn_device, :notice => 'Device was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @apn_device.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /apn/devices/1
  # DELETE /apn/devices/1.xml
  def destroy
    @apn_device = APN::Device.find(params[:id])
    @apn_device.destroy

    respond_to do |format|
      format.html { redirect_to(apn_devices_url) }
      format.xml  { head :ok }
    end
  end
end
