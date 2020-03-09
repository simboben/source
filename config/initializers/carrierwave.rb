CarrierWave.configure do |config|
  config.fog_provider = 'fog/aws'
  config.fog_credentials = {
    provider:              'AWS',                        # required
    aws_access_key_id:     Rails.application.credentials.aws[Rails.env.to_sym][:aws_key],                        # required unless using use_iam_profile
    aws_secret_access_key: Rails.application.credentials.aws[Rails.env.to_sym][:aws_password],                        # required unless using use_iam_profile
  }
  config.fog_directory  = Rails.application.credentials.aws[Rails.env.to_sym][:aws_bucket]                                   # required
  config.fog_public     = false                                                 # optional, defaults to true
  config.fog_attributes = { cache_control: "public, max-age=#{365.days.to_i}" } # optional, defaults to {}
end
