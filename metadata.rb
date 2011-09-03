maintainer       "Alastair Brunton"
maintainer_email "info@simplyexcited.co.uk"
license          "MIT"
description      "Installs/Configures locales"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.rdoc'))
version          "0.0.1"
recipe           "locales - Sets up locales on the server and sets a server time zone."


%w{ubuntu debian}.each do |os|
  supports os
end
