require 'navigation_helper.rb'

module ApplicationHelper
  include NavigationHelper
  include PostsHelper
  include UsersHelper

  def base_title
    @base_title = "WerqBook"
  end

end
