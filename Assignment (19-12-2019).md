********************************
Inheritance in Ruby
1.it is the one of the important aspect of the ruby
2.it is easy to use,create and maintain an application
3.it provides the Reusability to code
4.it supports the single and multilevel inheritance 
5. for extending the class '<' symbol is used.
  Syntax :==
	class Baseclass_name < Superclass_name
  e.g:==
	class Children < Parent

###################################################


=======================================================
simple cal by using inheritance

class Super_Calculator
 public
 #def initialize(a,b)
 		@a=a
 		@b=b
 #end
 def Add_public
  print "hiii"
	print "Enter value for A and B"

  a=gets.chomp.to_i
  b=gets.chomp.to_i
 
  p a+b
 end

 private
 def Sub_private
 		print "Enter value for A and B"
 a=gets.chomp.to_i
 b=gets.chomp.to_i
 
 	p a-b 
end
protected
 def Mul_protected
	print "Enter value for A and B" 
 a=gets.chomp.to_i
 b=gets.chomp.to_i
 
 	p a*b 
end 
def Div
	print "Enter value for A and B"
 a=gets.chomp.to_i
 b=gets.chomp.to_i
 
 	p a/b 
end
end

class Base_Cal <Super_Calculator

def Base_cal_method
	Add_public()
	Sub_private()
	Mul_protected()
	Div()
end
end


c_obj=Base_Cal.new() 
c_obj.Base_cal_method()

