require 'ruble'

bundle do |bundle|
  
  bundle.author = 'Raohmaru'
  bundle.display_name = 'PHP gettext'
  bundle.copyright = '(C) Copyright 2012 Raul Parralejo. Distributed under the MIT license.'
  bundle.description = 'Replaces arbitrary strings with PHP GNU gettext functions.'
  bundle.repository = 'git://github.com/raohmaru/php-gettext.ruble.git'

  bundle.menu 'PHP gettext' do |main_menu|
    main_menu.scope = "text.html, source.php"
    
    main_menu.menu 'Methods' do |methods|
      methods.command '_()'
      methods.command '__()'
      methods.command '_n()'
      methods.command '_e()'
    end
    main_menu.separator
    main_menu.menu 'Tag Methods' do |tag|
      tag.command '<? _() ?>'
      tag.command '<? __() ?>'
      tag.command '<? _n() ?>'
      tag.command '<? _e() ?>'
    end
  end
  
end