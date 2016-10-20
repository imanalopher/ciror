class User < ActiveRecord::Base
  def self.create_with_omniauth(auth)
    create! do |user|
      user.provider = auth["provider"]
      user.uid = auth["uid"]
      user.name = auth["info"]["name"]
      user.login = auth["extra"]["raw_info"]["login"]
      user.avatar_id =    auth["extra"]["raw_info"]["avatar_url"]
      user.url =          auth["extra"]["raw_info"]["url"]
      user.html_url =     auth["extra"]["raw_info"]["html_url"]
      user.repos_url =    auth["extra"]["raw_info"]["repos_url"]
      user.site_admin =   auth["extra"]["raw_info"]["site_admin"]
      user.name =         auth["extra"]["raw_info"]["name"]
      user.company =      auth["extra"]["raw_info"]["company"]
      user.blog =         auth["extra"]["raw_info"]["blog"]
      user.email =        auth["extra"]["raw_info"]["email"]
      user.bio =          auth["extra"]["raw_info"]["bio"]
      user.public_repos = auth["extra"]["raw_info"]["public_repos"]
      user.public_gists = auth["extra"]["raw_info"]["public_gists"]
      user.followers =    auth["extra"]["raw_info"]["followers"]
    end
  end
end