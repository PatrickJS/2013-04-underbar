# A sample Guardfile
# More info at https://github.com/guard/guard#readme

guard 'livereload' do
  watch(%r{src/.+\.js$})
  watch(%r{spec/.+\.js$})
end

guard :jasmine do
  watch(%r{spec/.+\.js$})
end

guard 'coffeescript', :input => 'lib/coffee', :output => 'src'
