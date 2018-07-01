#
#  Be sure to run `pod spec lint TrolleyAPI.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|


  s.ios.deployment_target = '8.0'
 
  s.requires_arc = true
  s.name         = "TrolleyAPI"
  s.version      = "0.3.0"
  s.summary      = "TrolleyAPI - Library"



  s.description  = "Access Api library Communicate with our server and updates the data "

  s.homepage     = "https://github.com/Vinsi/OmarAPILibrary"


  s.license      = { :type => 'Apache License, Version 2.0', :text => <<-LICENSE
    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
    LICENSE
  }


  s.author             = { "Vinsi" => "vinsimon.thulaseedha@maqta.ae" }

 
  s.source       = { :git => "https://github.com/Vinsi/OmarAPILibrary.git" , :tag => "#{s.version}"}


  s.source_files = "TrolleyAPI/**/*.{swift}"


  s.exclude_files = "Classes/Exclude"


  s.dependency 'CocoaLumberjack/Swift' , '~> 3.4.2'

  s.dependency 'Alamofire', '~> 4.7'

  s.dependency 'SwiftHash', '~> 2.0.1'

  s.dependency 'Fakery'   , '~> 3.3.0'



end
