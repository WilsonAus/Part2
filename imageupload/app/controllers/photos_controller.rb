class PhotosController < ApplicationController
  before_filter :authenticate_user!

  def new
    @photo = Photo.new(:user_id => params[:user_id])
    authorize! :new, @photo
  end

  def create
    @photo = Photo.new(params[:photo])
    if @photo.save
      flash[:notice] = "Successfully created photo."
      redirect_to @photo.user
    else
      render :action => 'new'
    end
    authorize! :create, @photo
  end

  def edit
    @photo = Photo.find(params[:id])
    @size = :thumb
  end

  def update
    @photo = Photo.find(params[:id])
    if @photo.update_attributes(params[:photo])
      flash[:notice] = "Successfully updated photo."
      redirect_to @photo.user
    else
      render :action => 'edit'
    end
  end

  def destroy
    @photo = Photo.find(params[:id])
    @photo.destroy
    flash[:notice] = "Successfully destroyed photo."
    redirect_to @photo.user
  end
end
