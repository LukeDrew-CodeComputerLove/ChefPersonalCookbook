gem install librarian-chef
ruby win_fetch_cacerts.rb
set SSL_CERT_FILE=C:\cacert.pem
librarian-chef install
chef-solo -c solo.rb