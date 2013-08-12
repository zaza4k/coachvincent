class RegistrationsController < Devise::RegistrationsController
    def update

    if params[resource_name][:avatar].blank?
            super
    else
            @admin=resource
       respond_to do |format|
         if resource.update_attributes(params[resource_name])
            flash[:notice]='Avatar successfully uploaded.'
            format.html {
                    render :action => 'crop'
            }
           format.xml  { head :ok }
          else
            format.html { render :action => "editpicture" }
            format.xml  { render :xml => @demotivator.errors, :status => :unprocessable_entity }
          end
       end
    end
    end

end