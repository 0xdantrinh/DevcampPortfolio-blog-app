class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SetSource
  include DeviseWhitelist
  include CurrentUserConcern

end
