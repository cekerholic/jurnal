###
# Blog Settings
###
Time.zone = 'Jakarta'
activate :blog do |blog|
  blog.permalink = ':title'
  blog.sources = 'posts/:year-:month-:day-:title'
  blog.layout = 'article'
  blog.default_extension = '.md.erb'
  blog.paginate = true
  blog.per_page = 5
  blog.page_link = ':num'
end

###
# Path Settings
###
set :css_dir, 'assets/css'
set :js_dir, 'assets/js'
set :images_dir, 'assets/img'
set :layouts_dir, 'assets/templates/layouts'
set :partials_dir, 'assets/templates/components'

###
# pretty URLs
###
activate :directory_indexes

###
# HAML Setting
###
set :haml, {
  :attr_wrapper => "\"",
  :ugly => true,
  :format => :html5
}

###
# sass-media_query_combiner
###
require 'sass-media_query_combiner'

###
# Autoprefixer
###
activate :autoprefixer

###
# Livereload
###
activate :livereload

###
# Bower Integration
###
after_configuration do
  sprockets.append_path File.join '#{root}', 'bower_components'
end

###
# Build Settings
###
configure :build do
  activate :minify_css
  activate :minify_javascript
  activate :relative_assets
end

###
#Deploy Settings
###
# activate :deploy do |deploy|
#   deploy.method = :git
#   deploy.branch = "master" # default: gh-pages
#   deploy.build_before = true
#   deploy.remote = "custom-remote" # remote name or git url, default: origin
# end