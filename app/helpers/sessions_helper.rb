module SessionsHelper
  # For the purpose of this assignment, there is no real login
  # and you are assumed to be signed in
  def current_user
    @user ||= User.first || raise('Run rails db:seed to seed the database')
  end
end
