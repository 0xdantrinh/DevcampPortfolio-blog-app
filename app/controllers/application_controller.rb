class ApplicationController < ActionController::Base
  protect_from_forgery with: :null_session
  include SetSource
  include DeviseWhitelist
  include CurrentUserConcern
  include DefaultPageContent

end
