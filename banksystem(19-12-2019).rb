
#all_acc=[]
class Account
	
	@@count=1
		def initialize 
			@acc_no=@@count
			@@count+=1
		end	 
protected
		def open_new_account
			puts "Enter your Mobile number "
			mob=gets.chomp.to_i
			puts "Enter your Name "
			name=gets.chomp
			@@account_no=1
			p "Ples Enter the Amount to be Deposite (above 500)"
			@amt=gets.chomp.to_i
			puts " Amount deposited ==>#{@amt}"
					if @amt >= 500
						p "account is created Successfully...!"
						p "Ur ACCOUNT NUMBER IS ==============> #{@acc_no}"

					else
						p "ples deposite the money upto 500:("
						exit 	
					end
					p"================================================================"
		end


		def Widraw 
			p "ples enter the Amount u want to widraw"
			wid_amt=gets.chomp.to_i
			@amt=@amt - wid_amt
				p "amount remaining #{@amt}"
				if @amt < 500
					p "u have no Sufficient Balance"
				else
					p "amount widrawn Successfully...!"
				end
			p"================================================ "	
		end

		def deposite
			p "enter the amt which u want to deposite"
			depo_amt=gets.chomp.to_i
			p @amt=@amt+depo_amt
			puts "amount deposited successfully"
		end
    p "==================================================="
		def Bal
			p "Current Balance is  #{@amt}"
			p "=================================================="
		end
end	

class Saving <Account
	public 
	def Saving_Details
		open_new_account()
		 p "rate of interest for saving account is 9%"
		 
		 p "1.Widrawn"
		 p "2.deposite"
     p "3.get Balance"
		 p "4.rate of interest"
		 c = gets.chomp.to_i
			case  c 
				when 1
					Widraw()
				when 2	  
					deposite()
        when 3    
          Bal()
				when 4
					p "for how many month u want to deposied this amt"
					@month=gets.chomp.to_i
					@rate_of_interest=(@amt * 9 * @month)/100
					p "Balance after applying rate of interest ===> #{@rate_of_interest}"	 
	
				else
					p "wrong choice"
				end

	end
end

class Current < Account
	public
	def Current_Details
		open_new_account()
				 p "1.Widrawn"
				 p "2.deposite"
         p "3.get Balance"
				 p "3.rate of interest"
				 c = gets.chomp.to_i
			case  c 
				when 1
					Widraw()
				when 2	  
					deposite()
        when 3    
          Bal()
				when 4
					p "rate of interest for Current account is 11%"
					p "for how many month u want to deposied this amt"
					@month=gets.chomp.to_i
					@rate_of_interest=(@amt * 11 * @month)/100
					p "Balance after applying rate of interest ===> #{@rate_of_interest}"	
				else
					p "wrong choice"
				end
			
	end	
end		
loop do
	p "====================Bank System =============================="
	p "Menu for bank System"
	p "1.Open new account"
	p "2.exit"
	p"ples Enter ur choice"
	choice=gets.chomp.to_i
	p "==============================================================="

	case choice
		when 1
			p "which account you want to open 1. Saving  2. Current "
			@acc_type=gets.chomp.to_i
			 if @acc_type == 1
				obj=Saving.new 
				obj.Saving_Details()
			 else
				obj=Current.new  
				obj.Current_Details()
			 end	
		when 2
				exit 
			
		else
			p "wrong choice"
		end

			puts "u want to continue(0/1)"
			ch=gets.chomp.to_i
		if ch == 0
			break
		end
end