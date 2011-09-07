# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "jsonh/version"

Gem::Specification.new do |s|
  s.name        = "jsonh"
  s.version     = JSONH::VERSION
  s.authors     = ["Sean Brewer"]
  s.email       = ["seabre986@gmail.com"]
  s.homepage    = ""
  s.summary     = %q{JSON Homogeneous Collections Compressor}
  s.description = %q{JSONH is one of the most performant, yet safe, cross programming language, way to pack and unpack generic homogenous collections. Based on native or shimmed JSON implementation, JSONH is nothing different than a procedure performed right before JSON.stringify(data) or right after JSON.parse(data)

It is demonstrated that overall performances of JSONH are up to 3 times faster in compression and 2 times in parsing thanks to smaller and simplified nature of the collection/string.

It is also demonstrated that resulting bandwidth size will be incrementally smaller than equivalent JSON operation reaching, in certain cases, down to 30% of original size and without gzip/deflate compression in place.

JSONH is the latest version of json.hpack project and based on JSONDB concept.}

  s.rubyforge_project = "jsonh"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_dependency('json')

end
