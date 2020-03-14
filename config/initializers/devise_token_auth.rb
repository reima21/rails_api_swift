DeviseTokenAuth.setup do |config|

  config.change_headers_on_each_request = false# tokenの使い回し出来るようにする
  config.token_lifespan = 1.month# tokenの有効期限、短いとセキュリティーが良い

  config.headers_names = {:'access-token' => 'access-token',
                          :'client' => 'client',
                          :'expiry' => 'expiry',
                          :'uid' => 'uid',
                          :'token-type' => 'token-type' }
end