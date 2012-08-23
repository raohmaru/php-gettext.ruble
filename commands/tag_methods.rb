require 'ruble'
require 'surround_selection'

command "<? _() ?>" do |cmd|
  cmd.scope = "text.html, source.php"
  cmd.input = :selection
  cmd.output = :insert_as_snippet
  cmd.invoke do |context|    
    SurroundSelection.with_method_tag '_', ENV['TM_SELECTED_TEXT']
  end  
end

command "<? __() ?>" do |cmd|
  cmd.scope = "text.html, source.php"
  cmd.input = :selection
  cmd.output = :insert_as_snippet
  cmd.invoke do |context|    
    SurroundSelection.with_method_tag '__', ENV['TM_SELECTED_TEXT']
  end  
end

command "<? _n() ?>" do |cmd|
  cmd.scope = "text.html, source.php"
  cmd.input = :selection
  cmd.output = :insert_as_snippet
  cmd.invoke do |context|    
    SurroundSelection.with_method_tag '_n', ENV['TM_SELECTED_TEXT'], true
  end  
end

command "<? _e() ?>" do |cmd|
  cmd.key_binding = 'M1+<'  # Ctrl + <
  cmd.scope = "text.html, source.php"
  cmd.input = :selection
  cmd.output = :insert_as_snippet
  cmd.invoke do |context|    
    SurroundSelection.with_method_tag '_e', ENV['TM_SELECTED_TEXT']
  end  
end