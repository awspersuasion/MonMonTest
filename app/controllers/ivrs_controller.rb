class IvrsController < ApplicationController
  # PUT /ivrs/1
  # PUT /ivrs/1.json
  def create
    ivr = Ivr.find_by_customer_id_and_level(params[:ivr][:customer_id], params[:ivr][:level])
    ivr.description = params[:ivr][:description]
    ivr.call_type = params[:ivr][:call_type]
    ivr.save

    redirect_to :controller => "customers", :action => "show", :id => params[:ivr][:customer_id]
#    @ivr = Customer.find(params[:id])
#
#    respond_to do |format|
#      if @customer.update_attributes(params[:ivr_group])
#        format.html { redirect_to @customer, notice: 'Customer was successfully updated.' }
#        format.json { head :no_content }
#      else
#        format.html { render action: "edit" }
#        format.json { render json: @customer.errors, status: :unprocessable_entity }
#      end
#    end
  end
end

