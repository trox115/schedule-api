require "test_helper"

class PostMailerTest < ActionMailer::TestCase
  test "payment_submited" do
    mail = PostMailer.payment_submited
    assert_equal "Payment submited", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
