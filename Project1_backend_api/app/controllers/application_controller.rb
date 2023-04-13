class ApplicationController < ActionController::API
  def encode_token(payload)
    JWT.encode(payload, "secret", algorithm: 'HS256')
  end

  def decode_token(token)
    JWT.decode(token, "secret", true, algorithm: 'HS256')
  end
end
