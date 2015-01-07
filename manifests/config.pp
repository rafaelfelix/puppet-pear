define pear::config ($property = $title, $value) {
  exec { "pear-config-${property}":
    command => "pear config-set ${property} \"${value}\"",
    path    => ["/bin","/usr/bin","/usr/local/bin"],
    unless  => "[ \"$(pear config-get ${property})\" = \"${value}\" ]"
  }
}
