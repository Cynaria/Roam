class SessionsController < Devise::SessionsController
	respond_to :json
  def create
    self.resource = warden.authenticate!(auth_options)
    sign_in(resource_name, resource)
    data = {
      token: self.resource.access_token,
      email: self.resource.email
    }
    render json: data, status: 201
  end

  def destroy
    sign_out(resource_name)
  end
end
