
************************************************//Methods for time
2.6.3 :040 > time1=Time.new
 => 2019-12-18 12:14:41 +0530 
2.6.3 :041 > time1.methods
 => [:tv_usec, :tv_sec, :subsec, :tv_nsec, :<=>, :strftime, :eql?, :min, :inspect, :+, :-, :succ, :to_a, :to_s, :to_i, :to_f, :to_r, :zone, :nsec, :usec, :year, :round, :mday, :hour, :sec, :isdst, :mon, :utc, :localtime, :gmtime, :hash, :getgm, :getutc, :getlocal, :day, :month, :asctime, :yday, :ctime, :wday, :gmtoff, :dst?, :utc_offset, :gmt_offset, :sunday?, :monday?, :gmt?, :tuesday?, :utc?, :thursday?, :wednesday?, :saturday?, :friday?, :between?, :<=, :>=, :==, :clamp, :<, :>, :instance_variable_defined?, :remove_instance_variable, :instance_of?, :kind_of?, :is_a?, :tap, :instance_variable_set, :protected_methods, :instance_variables, :instance_variable_get, :private_methods, :public_methods, :public_send, :method, :public_method, :singleton_method, :define_singleton_method, :extend, :to_enum, :enum_for, :===, :=~, :!~, :respond_to?, :freeze, :object_id, :send, :display, :nil?, :class, :singleton_class, :clone, :dup, :itself, :yield_self, :then, :taint, :tainted?, :untaint, :untrust, :untrusted?, :trust, :frozen?, :methods, :singleton_methods, :equal?, :!, :instance_exec, :!=, :instance_eval, :__id__, :__send__] 
2.6.3 :042 > time1.methods.sort
 => [:!, :!=, :!~, :+, :-, :<, :<=, :<=>, :==, :===, :=~, :>, :>=, :__id__, :__send__, :asctime, :between?, :clamp, :class, :clone, :ctime, :day, :define_singleton_method, :display, :dst?, :dup, :enum_for, :eql?, :equal?, :extend, :freeze, :friday?, :frozen?, :getgm, :getlocal, :getutc, :gmt?, :gmt_offset, :gmtime, :gmtoff, :hash, :hour, :inspect, :instance_eval, :instance_exec, :instance_of?, :instance_variable_defined?, :instance_variable_get, :instance_variable_set, :instance_variables, :is_a?, :isdst, :itself, :kind_of?, :localtime, :mday, :method, :methods, :min, :mon, :monday?, :month, :nil?, :nsec, :object_id, :private_methods, :protected_methods, :public_method, :public_methods, :public_send, :remove_instance_variable, :respond_to?, :round, :saturday?, :sec, :send, :singleton_class, :singleton_method, :singleton_methods, :strftime, :subsec, :succ, :sunday?, :taint, :tainted?, :tap, :then, :thursday?, :to_a, :to_enum, :to_f, :to_i, :to_r, :to_s, :trust, :tuesday?, :tv_nsec, :tv_sec, :tv_usec, :untaint, :untrust, :untrusted?, :usec, :utc, :utc?, :utc_offset, :wday, :wednesday?, :yday, :year, :yield_self, :zone] 
2.6.3 :043 > puts time1.sec
41
 => nil 
2.6.3 :044 > puts time1.min
14
 => nil 
2.6.3 :045 > time1.day
 => 18 
2.6.3 :046 > time1.hour
 => 12 
2.6.3 :047 > time1.zone
 => "IST" 
2.6.3 :048 > time1.saturday?
 => false 
2.6.3 :049 > time1.wednesday?
 => true 
2.6.3 :050 > 
2.6.3 :052 > time1.inspect
 => "2019-12-18 12:14:41 +0530"
Time.new(2018)
 => 2018-01-01 00:00:00 +0530 
2.6.3 :059 > time1=Time.new(2018)
 => 2018-01-01 00:00:00 +0530 
2.6.3 :060 > time2=Time.new(2017)
 => 2017-01-01 00:00:00 +0530 
2.6.3 :061 > time1==time2
 => false 
2.6.3 :062 > time1>time2
 => true 
2.6.3 :063 > time1<time2
 => false 
 2.6.3 :070 > t=Time.now
 => 2019-12-18 12:39:41 +0530 
2.6.3 :071 > t.mday
 => 18 
2.6.3 :072 > t.mon
 => 12 
2.6.3 :073 > t.min
 => 39 
*********************************************
class and object related data

Ruby is purely oo lang.
in which everything is object
even a class itself is a object

declaring class 
class ClassName
-------------
-----------
end


creating object of class
objName=ClassName.new

initialize method (jst like constructor in oop)
will provide the  no of arguments to it

def initialize()
________
__________
end 

instance variable 
will using @ for instance variable	

*********************
class Add
def initialize(a,b)
@a=a
@b=b
puts "Result===>#{a+b}"
end
**************************************************

getter and setter

class Add1
public 
def initialize(a,b)
@a=a
@b=b
puts "#{a+b}"
end

def getfirst
	@a
end

def getsecond
	@b
end

def setfirst=(value)
	@a=value
end

def setsecond=(value)
	@b=value
end
end
ob=Add1.new(2,3)

*******************************
instance method(normal method)

class P
public 
def initialize(a,b)
@a=a
@b=b
end
def getMul
puts "Multiplication is #{@a*@b}"
end
end


********************************
classs variable
defined within class 
with @@ and sheared by all the object
*************************************
Attribute reader(only creates reader)
class Stud
attr_reader :a,:b
public 
def initialize(a,b,c)
@a=a
@b=b
@c=c
end
end
***************************************
2.6.3 :489 > class Dev
2.6.3 :490?>   def initialize(age)
2.6.3 :491?>     @age=age
2.6.3 :492?>     end
2.6.3 :493?>   def age
2.6.3 :494?>     @age
2.6.3 :495?>     end
2.6.3 :496?>   end
 => :age 
2.6.3 :497 > op=Dev.new(10)
 => #<Dev:0x000055a63bd8b6e8 @age=10> 
2.6.3 :498 > op.age
 => 10 
*******************************************
2.6.3 :499 > class Stud
2.6.3 :500?>   def initialize(age)
2.6.3 :501?>     @age=age
2.6.3 :502?>     end
2.6.3 :503?>   def age
2.6.3 :504?>     @age
2.6.3 :505?>     end
2.6.3 :506?>   def age=(value)
2.6.3 :507?>     @age=value
2.6.3 :508?>     end
2.6.3 :509?>   end
 => :age= 
2.6.3 :510 > op=Stud.new(21)
 => #<Stud:0x000055a63bdd7b10 @age=21> 
2.6.3 :511 > op.age
 => 21 
2.6.3 :512 > op.age=31
 => 31 
2.6.3 :513 > op.age
 => 31 
***************************************
attr_accessor 
(writer+reader)
2.6.3 :514 > class Y
2.6.3 :515?>   attr_accessor :p
2.6.3 :516?>   def initialize(age)
2.6.3 :517?>     @p=p
2.6.3 :518?>     end
2.6.3 :519?>   end
 => :initialize 
2.6.3 :529 > pop=Y.new(21)
 => #<Z:0x000055a63bd14138 @p=21> 
2.6.3 :530 > pop.p=31
 => 31 


***********************


2.6.3 :238 > ob.setfirst=3
 => 3 
2.6.3 :239 > ob.setsecond=3
 => 3 
2.6.3 :240 > x=ob.getfirst()
 => 3 
2.6.3 :241 > y=ob.getsecond
 => 3 
2.6.3 :243 > puts "#{x+y}"
6
 => nil 





















