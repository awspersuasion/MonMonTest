class ExtensionsController < ApplicationController
  def create
    ext = Extension.find_by_extension(params[:extension][:extension])
    if ext == nil
      ext = Extension.new(params[:extension])
    else
      ext.name = params[:extension][:name]
    end
    ext.save
    redirect_to :controller => "customers", :action => "show", :id => params[:extension][:customer_id]
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @ext = Extension.find(params[:id])
    @ext.destroy

    redirect_to :controller => "customers", :action => "show", :id => @ext.customer_id
  end
end

