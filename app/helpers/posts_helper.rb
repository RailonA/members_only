module PostsHelper
  def current_user_link
    link_to current_user.name, edit_user_registration_path, class: 'button is-info' if user_signed_in?
  end

  def user_new_post
    link_to 'New Post', root_path, class: 'button is-info is-inverted' if user_signed_in?
  end

  def user_logout
    link_to 'Logout', destroy_user_session_path, method: :delete, class: 'button is-info' if user_signed_in?
  end

  def user_sign_up
    link_to 'Sign Up', new_user_registration_path, class: 'button is_info' unless user_signed_in?
  end

  def user_sign_in
    link_to 'Sign In', new_user_session_path, class: 'button is_info' unless user_signed_in?
  end

  def render_profile
    render partial: "profile"  if user_signed_in?
  end

  def signed_in_only!
    # current_user in ApplicationController must be defined as helper method to make it work
    redirect_to  new_user_session_path unless current_user
  
    ## alternative solution:
    # if signed_in? is defined in ApplicationController (see stretch requirements)
    redirect_to new_user_session_path unless signed_in?
  end



  

end
