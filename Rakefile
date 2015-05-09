require 'html/proofer'

task :test do
  sh 'jekyll build'
  HTML::Proofer.new('./_site', {:href_ignore => [/kaffe.abakus.no/, /hurrdurr/]}).run
end
