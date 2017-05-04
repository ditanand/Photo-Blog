CarrierWave.configure do |config|
	config.fog_credentials = {
		:provider                   =>  "AWS",
        :aws_access_key_id        => ENV['Access Key ID'],
        :aws_secret_access_key => ENV['Secret Access Key'], 
        :region                => "your aws region",  
	}
	config.fog_directory         = ENV['AWS_BUCKET']
	config.asset_host = "https://#{ENV['AWS_BUCKET']}.cloudfront.net"
  config.fog_public = false
end