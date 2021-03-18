
# Members-Only
A rails Members Only project
> This is part of the Forms Project in The Odin Project’s Ruby on Rails Curriculum. Find it at https://www.theodinproject.com/courses/ruby-on-rails/lessons/authentication
## Built With
- RUBY
- Ruby On Rails
- Visual Code
## GET STARTED
#### Requirements
- At least one code editor installed (VS Code for example)
- Git installed
- Ruby installed
- At least one web browser
#### Clone the repository
- Click on the "code" button above on this page and copy the link to the repository
- Run `git@github.com:RailonA/members_only.git`
- Go to the cloned repository run `cd members_only`
#### Installe required Gem
- In the terminale, run `bundle install`
- [optional] Run `bundle update`
#### Set up the database tables
Run `rails db:migrate` and make sure the commande succeded
#### Test all in the browser
- Run `$ rails server`
- In the browser go to http://127.0.0.1:3000/users/sign_up
- This page should display :arrow_down:
- ![screenshot](./app/assets/images/twitter_sign_up_page.png)
- Create a new user by putting informations inside the text fields
#### Test the tables
- First run `rails c`
- In the rails console make sure all the tables are working correctly. Run `User`
- Then look at all User to make sure that information used to greate the user account was pushed successfully to the database.
1. `user = User`
2. `pp user.all` shows details of all the users
## :handshake: Contributing
Contributions, issues and feature requests are welcome!
## Author 1
:bust_in_silhouette: **Railon Acosta**
- GitHub: [@railonA](https://github.com/RailonA)
- Linkedin: [@railonAcosta](https://www.linkedin.com/in/railon-acosta-81265180/)
- Twitter: [@railonAcosta](https://twitter.com/RailonAcosta)

## Author 2

👤 **Iyunda Ismael Antonio**

- GitHub: [@ixboy](https://github.com/ixboy)
- Twitter: [@ismaelixboy](https://twitter.com/ismaelixboy)
- LinkedIn: [ismael-antonio](https://www.linkedin.com/in/ismaelantonio/)

## 🤝 Contributing

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page]().

## Acknowledgments

-  ![](https://img.shields.io/badge/Microverse-blueviolet)


## Show your support

Give a ⭐️ if you like this project!

## 📝 License

This project is MIT licensed.