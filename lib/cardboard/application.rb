require 'cardboard/helpers/settings'

module Cardboard
  class Application
    include Settings

    # The default namespace to put controllers and routes inside. Set this
    # in config/initializers/cardboard.rb using:
    #
    #   config.default_namespace = :admin
    setting :default_namespace, :cardboard

    # The default site title (can be overwritten by user)
    setting :site_title, "Cardboard"

    # The user class that will be using cardboard
    setting :user_class, nil

    # The default number of resources to display on index pages
    setting :default_per_page, 30

    # The method to call in controllers to get the current user
    setting :current_admin_user_method, false

    # The method to call in the controllers to ensure that there
    # is a currently authenticated admin user
    setting :authentication_method, false

    # The path to log user's out with. If set to a symbol, we assume
    # that it's a method to call which returns the path
    setting :logout_link_path, :destroy_admin_user_session_path

    # The method to use when generating the link for user logout
    setting :logout_link_method, :get

    # Cardboard makes educated guesses when displaying objects, this is
    # the list of methods it tries calling in order
    setting :display_name_methods, [ :display_name,
                                      :full_name,
                                      :name,
                                      :username,
                                      :login,
                                      :title,
                                      :email,
                                      :to_s ]
  end
end
