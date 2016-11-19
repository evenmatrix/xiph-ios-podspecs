Pod::Spec.new do |s|
  s.name = "libopus-ios"
  s.version = "1.1.3"
  s.summary = "Opus is a totally open, royalty-free, highly versatile audio codec."
  s.homepage = "http://www.opus-codec.org"
  s.license = 'BSD'
  s.authors = { "Tyrone Trevorrow" => "tyrone@sudeium.com", "Xiph.org" => "opus@xiph.org","Onyemaechi Okafor"=>"evenmatrix@gmail.com"}
  s.source = { :git => "https://github.com/evenmatrix/libopus-ios.git", :tag => '1.1.3'}
  s.ios.deployment_target = '6.0' # We're compiling arm64, so I think 6.0 minimum is needed
  s.source_files = 'config.h', 'libopus/{celt,silk,src,include}/*.{h,c}',
                   'libopus/**/{arm,float,x86}/*.{h,c}'
  s.exclude_files = 'libopus/src/opus_demo.c'
  s.public_header_files = 'libopus/include/*.h'
  s.header_mappings_dir = 'libopus'
  s.xcconfig = { 'GCC_PREPROCESSOR_DEFINITIONS' => 'HAVE_CONFIG_H=1' }
end
