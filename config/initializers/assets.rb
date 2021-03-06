# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path
# Rails.application.config.assets.paths << Emoji.images_path

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
Rails.application.config.assets.precompile += %w( parents.css )
Rails.application.config.assets.precompile += %w( tutors.css )
Rails.application.config.assets.precompile += %w( static_pages.css )
Rails.application.config.assets.precompile += %w( users.css )
Rails.application.config.assets.precompile += %w( parents.js )
Rails.application.config.assets.precompile += %w( tutors.js )
Rails.application.config.assets.precompile += %w( static_pages.js )
Rails.application.config.assets.precompile += %w( users.js)
Rails.application.config.assets.precompile += %w( multiselect.css )
Rails.application.config.assets.precompile += %w( multiselect.js )
Rails.application.config.assets.precompile += %w( calendar.js )
Rails.application.config.assets.precompile += %w( calendar.css )
