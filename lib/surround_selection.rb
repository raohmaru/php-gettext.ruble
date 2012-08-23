# A helper class that surrounds a string with PHP tags and methods.
module SurroundSelection
  module_function
  
  QUOTE = "'"
  
  # Surround string with a PHP method
  def with_method(method, selection, plural=false)
    selection = '' if selection.nil?
    selection.gsub!('/', '\/')
    
    quote = QUOTE
    quotes = selection.match(/^('|").*('|")$/)
    if !quotes.nil? && quotes.length == 3 && quotes[1] == quotes[2]
      quote = quotes[1]
      selection.sub!(quote, '')
      selection.chomp!(quote)
    end
    
    selection = selection.length > 0 ? "${1:#{selection}}" : "$0"
    extra = add_plural_params(selection, plural, quote)
    
    "#{method}(#{quote}#{selection}#{quote}#{extra})"
  end

  # Surround string with PHP tags and a method
  def with_method_tag(method, selection, plural=false)
    selection = '' if selection.nil?
    selection.gsub!('/', '\/')
    selection.gsub!(QUOTE, '\\\\'+QUOTE)  # \\' means $'
    selection = selection.length > 0 ? "${1:#{selection}}" : "$0"
    extra = add_plural_params(selection, plural)
    
    "<?php #{method}(#{QUOTE}#{selection}#{QUOTE}#{extra}); ?>"
  end
  
  # Add extra params to the gettext plural method
  def add_plural_params(str, is_plural, quote=QUOTE)
    if is_plural
      i = str =~ /\$\{\d/.nil?
      str = str.sub(/\$\{\d/, '${2') unless i.nil?
      ", #{quote}#{str}#{quote}, ${3:count}"
    else
      ""
    end
  end
  
end