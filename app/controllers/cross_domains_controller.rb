class CrossDomainsController < ApplicationController

  def options_request
    headers['Access-Control-Allow-Origin'] = '*'
    headers['Access-Control-Allow-Methods'] = 'POST, GET, OPTIONS'
    headers['Access-Control-Allow-Headers'] = 'X-CSRF-Token'
    headers['Access-Control-Max-Age'] = '1728000'
    render text: ''
  end
  
end
