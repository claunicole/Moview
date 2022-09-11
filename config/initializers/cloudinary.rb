Cloudinary.config_from_url(ENV['URL_KEY'])
Cloudinary.config do |config|
  config.secure = true
end
