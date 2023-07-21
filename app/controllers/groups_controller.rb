# frozen_string_literal: true
require 'httparty'

class GroupsController < ApplicationController
  

  def test_user
    current_customer_endpoint = 'get_current_customer'
    customer = set_connexion(current_customer_endpoint)
    # current_customer = customer.parsed_response
    render json: {customer: customer}
  end
end
