Rails.application.config.middleware.use OmniAuth::Builder do
  # provider :github, ENV['GITHUB_KEY'], ENV['GITHUB_SECRET']
  provider :github, '67d73c22a839dba9b858', 'a05a846a703a25a4d0330c210e3075961c2bc588'
end