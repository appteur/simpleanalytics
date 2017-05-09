Pod::Spec.new do |s|
  s.name             = 'SimpleAnalytics'
  s.version          = '0.1.0'
  s.summary      	 = "Simple Analytics Library"
  s.description      = "Provides one location to handle passing analytics to any desired analytics platform."

  s.homepage     	 = "https://github.com/appteur/simpleanalytics"
  # s.screenshots    = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = "Seth Arnott"
  s.platform    	 = :ios, "9.0"
  s.source      	 = { :git => "https://github.com/appteur/simpleanalytics.git", :branch => 'master', :tag => "#{s.version}" }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'

  s.source_files = 'SimpleAnalytics/Source/**/*'

end
