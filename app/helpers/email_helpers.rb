
def send_simple_message
  RestClient.post "https://api:key-6f1149dafd10422d2a064356de609477"\
  "@api.mailgun.net/v3/sandbox8a291072cd9b4f8faa38d1c4fccd606e.mailgun.org/messages",
  :from => "Excited User <mailgun@sandbox8a291072cd9b4f8faa38d1c4fccd606e.mailgun.org>",
  :to => "danielkrzyzanowskiphoto@gmail.com",
  :subject => "Hello",
  :text => "Testing some Mailgun awesomness!"
end