require "test_helper"

describe User do
  describe "name" do
    it "needs a name of more than 3 characters to save" do
      user = User.new 
      user.save

      refute user.valid?, "invalid with out name"
    end
  end

  describe "passwords" do 
    it "need a password and confirmation to save" do
      user = User.new(name: 'miles', email: 'miles@example.com')

      user.save
      refute user.valid?, "invalid with out password"

      user.password = 'password'
      user.password_confirmation = ""
      user.save

      refute user.valid?, "invalid with password and w/o pass confirmation"

      user.password_confirmation = 'password'
      user.save

      assert user.valid?, "Valid user"

    end

    it "needs password and confirmation to match" do
      user = User.create( 
        name: 'miles', 
        password: 'secret', 
        password_confirmation: 'secret1')

      refute user.valid?, "invalid user with pass and pass conf not matching"
    end
  end

  describe "authentication" do
    let(:user) {User.create(
      name: 'miles', 
      password: 'password',
      password_confirmation: 'password') }

    it "authenticate with correct password" do
      assert user.authenticate('password')
    end

    it "does not authenticate with an incorrect password" do
      refute user.authenticate('password1')
    end
  end
end
