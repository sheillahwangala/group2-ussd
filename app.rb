def ussd_app
    puts "Input ussd"
    ussd= gets.chomp
    if ussd == "*555#"
    puts "Welcome to moringa school"
    puts "Do you want to register as \n 1.Student \n 2.Staff "
    title = gets.chomp.to_i
    if title == 1
        puts "Choose a Cohort \n 1.Cohort 64-68A \n 2.Cohort 64-68B \n 3.Cohort 64-68C"
        cohort_chosen = gets.chomp.to_i
        if cohort_chosen == 1
            puts "Choose a TM \n 1. Faith \n 2. Mwikali \n 3. Sam"
            tm_selected = gets.chomp.to_i
            puts "Enter Amount"
            amount = gets.chomp.to_i
            puts "We have received #{amount} shillings for your fees"
            leave
        else
            puts "Cohort details not available"
            leave
        end
    elsif title == 2
        puts "Choose between \n 1. Classroom Staff \n 2. General Staff"   
        puts "Enter Amount"
        amount = gets.chomp.to_i
        puts "We have received #{amount} shillings "
        leave
    else
        puts "inavlid"
        leave
    end 
   else
    puts "Invalid ussd"
    leave
   end
     

end

class App
    def initialize
        @running = true
    end

    def leave
        @running= false
    end

    def main

       while @running== true
          ussd_app
        end
    end

end

app = App.new()
app.main


