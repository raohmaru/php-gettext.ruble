require 'ruble'
require 'surround_selection'

command "_()" do |cmd| 
  cmd.scope = "text.html, source.php"
  cmd.input = :selection
  cmd.output = :insert_as_snippet
  cmd.invoke do |context|
    SurroundSelection.with_method '_', ENV['TM_SELECTED_TEXT']
  end 
end 

command "__()" do |cmd| 
  cmd.key_binding = 'M1+M2+<'  # Ctrl + Shift + <
  cmd.scope = "text.html, source.php"
  cmd.input = :selection
  cmd.output = :insert_as_snippet
  cmd.invoke do |context|
    SurroundSelection.with_method '__', ENV['TM_SELECTED_TEXT']
  end 
end

command "_n()" do |cmd| 
  cmd.scope = "text.html, source.php"
  cmd.input = :selection
  cmd.output = :insert_as_snippet
  cmd.invoke do |context|
    SurroundSelection.with_method '_n', ENV['TM_SELECTED_TEXT'], true
  end 
end 

command "_e()" do |cmd| 
  cmd.scope = "text.html, source.php"
  cmd.input = :selection
  cmd.output = :insert_as_snippet
  cmd.invoke do |context|
    SurroundSelection.with_method '_e', ENV['TM_SELECTED_TEXT']
  end 
end 