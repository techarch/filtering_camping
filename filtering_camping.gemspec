require 'rubygems' 

SPEC = Gem::Specification.new do |s| 
  s.name = "filtering_camping" 
  s.version = "1.0.0" 
  s.authors = ["Magnus Holm"]
  s.email = ["judofyr@gmail.com"]
  s.homepage = "http://github.com/judofyr/filtering_camping/" 
  s.platform = Gem::Platform::RUBY 
  s.summary = "Controller filters for Camping web applications" 
  s.description = <<-EOF
This is an plugin for the Ruby Camping framework, providing a filtering mechanism for controllers, i.e. the ability to specify code to be executed before and/or after a controller request.
  EOF
  s.rubyforge_project = "filtering_camping"
  candidates = Dir.glob("{bin,doc,lib,test}/**/*") 
  s.files = candidates.delete_if do |item| 
    item.include?("git") || item.include?("rdoc") 
  end 
  s.require_path = "lib" 
  s.autorequire = "filtering_camping" 
  s.has_rdoc = false 
  s.extra_rdoc_files = ["README"] 
end 
