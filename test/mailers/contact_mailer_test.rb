require 'test_helper'

class ContactMailerTest < ActionMailer::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "should return contact email" do
mail = ContactMailer.contact_email("matthew@me.com",
"Matthew Casey", "1234567890", @message = "Hello")
assert_equal ['customer@feedback.com'], mail.to
assert_equal ['parking@feedback.com'], mail.from
end

test "should fail email" do
mail = ContactMailer.contact_email("matthew@me.com",
"Matthew Casey", "1234567890", @message = "Hello")
assert_equal ['customer@feedback.com'], mail.to
assert_not_equal [''], mail.from
end
end
