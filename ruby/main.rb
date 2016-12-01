require_relative 'printer_module'
class Array
	include Printer
end
class String
	include Printer
end
[4,6,7].print_each_element
"hola".print_each_element