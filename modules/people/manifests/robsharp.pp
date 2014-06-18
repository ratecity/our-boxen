class people::jbarnette {
  $home     = "/Users/${::boxen_user}"
  $my       = "${home}/Projects"
  $dotfiles = "${my}/dotfiles"

  file { $my:
    ensure  => directory
  }

  repository { $dotfiles:
    source  => 'qnm/dotfiles',
    require => File[$my]
  }
}
