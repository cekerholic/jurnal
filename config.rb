###
# Blog Settings
###
Time.zone = 'Jakarta'
activate :blog do |blog|
  blog.permalink = ':title'
  blog.sources = 'articles/:year-:month-:day-:title'
  blog.layout = 'article'
  blog.default_extension = '.md'
  blog.paginate = true
  blog.per_page = 5
  blog.page_link = ':num'
  blog.tag_template = "tag.html"
  blog.taglink = "topik/{tag}.html"
end

###
# Path Settings
###
set :css_dir, 'assets/css'
set :js_dir, 'assets/js'
set :images_dir, 'assets/img'
set :fonts_dir, 'assets/fonts'
set :layouts_dir, 'assets/templates/layouts'
set :partials_dir, 'assets/templates/components'

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
# Normalize.css
###
require 'normalize-scss'

###
# Scut
###
require 'scut'

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
  set :relative_links, true
  activate :minify_css
  activate :minify_javascript
  activate :directory_indexes
  activate :gzip
end
