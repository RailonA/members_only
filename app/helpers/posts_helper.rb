module PostsHelper

  # Navbar 

  def navbar_current_user_link
    link_to current_user.name, edit_user_registration_path, class: 'text-white nav-item nav-link' if user_signed_in?
  end

  def navbar_user_new_post
    link_to 'New Post', root_path, class: 'text-white nav-item nav-link' if user_signed_in?
  end

  def navbar_user_logout
    link_to 'Logout', destroy_user_session_path, method: :delete, class: 'text-white nav-item nav-link' if user_signed_in?
  end

  def navbar_user_sign_up
    link_to 'Sign Up', new_user_registration_path, class: 'text-white nav-item nav-link' unless user_signed_in?
    
  end

  def navbar_user_sign_in
    link_to 'Sign In', new_user_session_path, class: 'text-white nav-item nav-link' unless user_signed_in?
  end

  def current_user_link
    link_to current_user.name, edit_user_registration_path, class: 'button is-info' if user_signed_in?
  end

  def user_new_post
    link_to 'New Post', root_path, class: 'button is-info ' if user_signed_in?
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
    render partial: 'profile' if user_signed_in?
  end


  def signed_in_only!
    # current_user in ApplicationController must be defined as helper method to make it work
    redirect_to new_user_session_path unless current_user

    ## alternative solution:
    # if signed_in? is defined in ApplicationController (see stretch requirements)
    redirect_to new_user_session_path unless signed_in?
  end

  def body_gravatar_image_tag
    render partial: 'gravater' if user_signed_in?
  end  

  def render_form
    render partial: 'form' if user_signed_in?
  end

  def render_user_information
    render partial: 'userinformation' if user_signed_in?
  end
  
  def body_current_user
    format(current_user.name) if user_signed_in?
  end 
  
  def body_current_username
    format(current_user.username) if user_signed_in?
  end 

  # def render_icon
  #   render partial: 'icon' if user_signed_in?
  # end


  def icon_post
    link_to fa_icon 'circle', new_user_session_path, class: '' if user_signed_in?
  end

end
