Rails.application.config.middleware.use OmniAuth::Builder do  
  provider :twitter, 'Pv0wbzPy2vE2Uj1AZBORg', 'TKT3XR26X2ur3Rkjd3B6S6JnBFYmx9CxpkICogI7s', client_options: {authorize_path: '/oauth/authorize'}  
  provider :openid, name: 'openid'
end
