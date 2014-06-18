class people::qnm {
  $home     = "/Users/robsharp"
  $my       = "${home}/Projects"
  $dotfiles = "${my}/dotfiles"

  file { $my:
    ensure  => directory
  }

  repository { $dotfiles:
    source  => 'qnm/dotfiles',
    require => File[$my]
  }

  include iterm2::dev
  include iterm2::colors::solarized_dark

  include minecraft
  include adium
  include alfred
  include caffeine
  include chrome
  include clojure
  include firefox
  include flux
  include gitx
  include heroku
  include imagemagick
  include java
  include ohmyzsh
  include rdio
  include skype
  include vagrant
  include zsh
  include postgresapp
}

include projects::all
