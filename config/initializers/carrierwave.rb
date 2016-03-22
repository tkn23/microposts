CarrierWave.configure do |config|
  config.fog_credentials = {
    provider: 'AWS',
    aws_access_key_id: 'AKIAIIAGKPKVUSO5SL3Q',
    aws_secret_access_key: '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',
    region: 'ap-northeast-1'
  }

  case Rails.env
    when 'production'
      config.fog_directory = 'tkn23'
      config.asset_host = 'https://s3-ap-northeast-1.amazonaws.com/tkn23'

    when 'development'
      config.fog_directory = 'dev.tkn23'
      config.asset_host = 'https://s3-ap-northeast-1.amazonaws.com/dev.tkn23'

    when 'test'
      config.fog_directory = 'test.tkn23'
      config.asset_host = 'https://s3-ap-northeast-1.amazonaws.com/test.tkn23'
  end
end