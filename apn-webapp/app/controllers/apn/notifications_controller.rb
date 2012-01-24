class Apn::NotificationsController < ApplicationController
  # GET /apn/notifications
  # GET /apn/notifications.xml
  def index
    @apn_notifications = APN::Notification.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @apn_notifications }
    end
  end

  # GET /apn/notifications/1
  # GET /apn/notifications/1.xml
  def show
    @apn_notification = APN::Notification.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @apn_notification }
    end
  end

  # GET /apn/notifications/new
  # GET /apn/notifications/new.xml
  def new
    @apn_notification = APN::Notification.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @apn_notification }
    end
  end

  # GET /apn/notifications/1/edit
  def edit
    @apn_notification = APN::Notification.find(params[:id])
  end

  # POST /apn/notifications
  # POST /apn/notifications.xml
  def create
    @apn_notification = APN::Notification.new(params[:apn_notification])

    respond_to do |format|
      if @apn_notification.save
        format.html { redirect_to(@apn_notification, :notice => 'Notification was successfully created.') }
        format.xml  { render :xml => @apn_notification, :status => :created, :location => @apn_notification }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @apn_notification.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /apn/notifications/1
  # PUT /apn/notifications/1.xml
  def update
    @apn_notification = APN::Notification.find(params[:id])

    respond_to do |format|
      if @apn_notification.update_attributes(params[:apn_notification])
        format.html { redirect_to(@apn_notification, :notice => 'Notification was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @apn_notification.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /apn/notifications/1
  # DELETE /apn/notifications/1.xml
  def destroy
    @apn_notification = APN::Notification.find(params[:id])
    @apn_notification.destroy

    respond_to do |format|
      format.html { redirect_to(apn_notifications_url) }
      format.xml  { head :ok }
    end
  end
end
