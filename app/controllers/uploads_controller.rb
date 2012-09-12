class UploadsController < ApplicationController

  def index
    @uploads = Upload.all
    @upload = Upload.new

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @uploads }
    end
  end

  def edit
    @upload = Upload.find(params[:id])
  end

  def create
    @upload = Upload.new(params[:upload])

    respond_to do |format|
      if @upload.save
        format.html { redirect_to root_path, notice: 'Upload was successfully uploaded.' }
        format.json { render json: @upload, status: :created, location: @upload }
      else
        format.html { render action: "new", notice: "something went wrong" }
        format.json { render json: @upload.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @upload = Upload.find(params[:id])

    respond_to do |format|
      if @upload.update_attributes(params[:upload])
        format.html { redirect_to root_path, notice: 'Upload was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit", notice: "something went wrong" }
        format.json { render json: @upload.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @upload = Upload.find(params[:id])
    @upload.destroy

    respond_to do |format|
      format.html { redirect_to uploads_url, notice: "bye, bye file!" }
      format.json { head :no_content }
    end
  end
end
