###
# Page options, layouts, aliases and proxies
###

# Per-page layout changes:
#
# With no layout
page '/*.xml', layout: false
page '/*.json', layout: false
page '/*.txt', layout: false

# With alternative layout
# page "/path/to/file.html", layout: :otherlayout

# Proxy pages (http://middlemanapp.com/basics/dynamic-pages/)
# proxy "/this-page-has-no-template.html", "/template-file.html", locals: {
#  which_fake_page: "Rendering a fake page with a local variable" }

# General configuration

###
# Helpers
###

# Methods defined in the helpers block are available in templates
helpers do
  def share_on_google_plus_url(share_url)
    "https://plus.google.com/share?url=#{share_url}"
  end

  def share_on_google_plus_link(share_url)
    link_to 'Share on Google+', share_on_google_plus_url(share_url)
  end

  def share_on_facebook_url(share_url)
    "https://www.facebook.com/sharer/sharer.php?u=#{share_url}"
  end

  def share_on_facebook_link(share_url)
    link_to 'Share on Facebook', share_on_facebook_url(share_url)
  end

  def share_on_twitter_url(share_url)
    "https://twitter.com/home?status=#{share_url}"
  end

  def share_on_twitter_link(share_url)
    link_to 'Share on Twitter', "https://twitter.com/home?status=#{share_url}"
  end


end

# Build-specific configuration
configure :build do
  # Minify CSS on build
  # activate :minify_css

  # Minify Javascript on build
  # activate :minify_javascript
end
