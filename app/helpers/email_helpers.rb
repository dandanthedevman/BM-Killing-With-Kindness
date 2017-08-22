
def send_email(message)
  RestClient.post "https://#{ENV['MAILGUN_API_KEY']}"\
  "@api.mailgun.net/v3/sandbox8a291072cd9b4f8faa38d1c4fccd606e.mailgun.org/messages",
  :from => "<mailgun@sandbox8a291072cd9b4f8faa38d1c4fccd606e.mailgun.org>",
  :to => "danielkrzyzanowskiphoto@gmail.com", #hate group email goes here
  :subject => "Hey! Heres a reminder of all the good in the world.",
  :text => message
end