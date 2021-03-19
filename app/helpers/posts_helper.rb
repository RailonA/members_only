module PostsHelper
    def current_user_link(user)
        link_to current_user.name, edit_user_registration_path, class: "button is-info" if user_signed_in?
    end
    
      def user_new_post
        link_to "New Post", root_path, class: "button is-info is-inverted" if user_signed_in?
      end
    
      def user_logout
        link_to "Logout", destroy_user_session_path, method: :delete, class: "button is-info" if user_signed_in?
      end
    
      def user_sign_up
        link_to 'Sign Up', new_user_registration_path, class: "button is_info" unless user_signed_in?
      end
    
      def user_sign_in
        link_to 'Sign In', new_user_session_path, class: "button is_info" unless user_signed_in?
      end
end
