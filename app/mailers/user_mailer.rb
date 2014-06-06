class UserMailer < ActionMailer::Base
  default from: "from@example.com"
  default_url_options[:host] = "http://localhost:3000/answers/new"



def welcome_email(user)
    @user = user
    @url  = "http://example.com/login"
    mail(:to => user.email,
         :subject => "Welcome to My Awesome Site")
  end

  def test_welcome_email
    user = users(:some_user_in_your_fixtures)

    # Send the email, then test that it got queued
    email = UserMailer.welcome_email(user).deliver
    assert !ActionMailer::Base.deliveries.empty?

    # Test the body of the sent email contains what we expect it to
    assert_equal [user.email], email.to
    assert_equal "Welcome to My Awesome Site", email.subject
    assert_match(/<h1>Welcome to example.com, #{user.name}<\/h1>/, email.encoded)
    assert_match(/Welcome to example.com, #{user.name}/, email.encoded)
  end

end
