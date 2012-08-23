PHP gettext bundle for Aptana Studio
====================================

A bundle to fast replace arbitrary strings with [PHP GNU gettext](http://php.net/manual/es/book.gettext.php) functions through key shortcuts.

    "Lorem ipsum dolor sit amet"
  
Becomes

	__("Lorem ipsum dolor sit amet")
	
after pressing a key shortcut.

It also can automatic add the PHP open `<?php` and close `?>` tags.

Available replacements methods (the last three are specific from WordPress):

* _("string")
* __("string")
* _n("string", "strings", $count)
* _e("string")

License
-------

This bundle is licensed under MIT.<br>
[http://www.opensource.org/licenses/mit-license.php](http://www.opensource.org/licenses/mit-license.php)