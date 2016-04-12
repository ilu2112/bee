Recaptcha.configure do |config|
  if Rails.env.production?
    config.public_key  = ENV['repatcha_public_key']
    config.private_key = ENV['repatcha_private_key']
  else
    config.public_key  = 'dummy'
    config.private_key = 'dummy'
  end
end