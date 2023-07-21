class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception
    skip_before_action :verify_authenticity_token

    helper_method :set_connexion

    @@mstags_url = "http://localhost:3000"
    @@session_id = '977d55e2094c94267eb6900cac623532'

    def set_connexion(endpoint_route)
        headers = {'Cookie' => "_qualipso_session=#{@@session_id}"}
        api_url = "#{@@mstags_url}/#{endpoint_route}"

        customer_json = HTTParty.get(api_url, headers: headers)
        customer = Customer.find(customer_json['id'])
        return customer
    end
end
