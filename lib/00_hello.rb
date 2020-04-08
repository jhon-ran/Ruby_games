#Programme qui dit bonjour

def ask_first_name
    puts "Comment tu t'appelles?"
    first_name = gets.chomp
    return first_name
end

def say_hello
    first_name = ask_first_name
    puts "Bonjour #{first_name} !"
end

say_hello