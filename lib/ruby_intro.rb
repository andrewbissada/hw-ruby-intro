#Author: Andrew Bissada
#Class: CSCI-602
#HW: Ruby-Assignment 1
##
# When done, submit this entire file to the autograder.

# PART 1

# Takes an array of integers as an argument and returns the sum of its elements. For an empty array it should return zero.
def sum (arr)
    sum = 0
    x=arr.each do |n| 
        # increment some SUM
        sum = sum + n
    end
    
    if arr.empty?
        sum = 0
    end
    
    return sum
end


# Takes an array of integers as an argument and returns the sum of its two largest elements. 
# For an empty array, return zero. For an array with just one element, return that element.
def max_2_sum (arr)
   
   if arr.empty?
       sum = 0
   elsif arr.length == 1
       sum = arr[0]
   else
       arr.sort!.reverse!
       sum = arr[0]+arr[1]
   end
   return sum
end


# Takes an array of integers and an additional integer, n, as arguments and returns true if any two elements in the array of integers sum to n. 
# An empty array should sum to zero by definition
def sum_to_n? (arr,n)
    
    a2 = arr.combination(2).to_a
        answer = false #this is not static so value will be changed from forEach loop
    a2.each do |sub_array| 
        
        if sub_array[0] + sub_array[1] == n
            answer = true
        end
    end
    
    return answer
end

#######################
# PART 2

#Returns a string greeting
def hello(name)
    return "Hello, #{name}"
end


# Takes a string and returns true if it starts with a consonant and false otherwise. (For our purposes, a consonant is any letter other than A, E, I, O, U.)
def starts_with_consonant?(s)
    # if not AEIOU
    
    answer = false
    
    if s =~ /\A(?=[a-z])(?=[^aeiou])/i
        answer = true
    end
    return answer
end


#Takes a string and returns true if the string represents a binary number that is a multiple of 4. 
def binary_multiple_of_4?(s)
    
    answer = false
    if s=="0"
        answer = true
    elsif s =~ /^[10]*00$/
        answer = true
    end
    return answer
end


##########################
# PART 3

class BookInStock
    # should reject invalid ISBN number,  should reject zero price, should reject negative price  
    #should raise ArgumentError if the ISBN number is the empty string or if the price is less than or equal to zero. 
    def initialize(isbn, price)
        if isbn.empty? || price <= 0
            raise ArgumentError, "Your input is invalid"
        else
        @isbn = isbn
        @price = price
        end
    end
    

    
    #GETTERS
    def isbn
        @isbn #don't have to type return here because it returns last executed line
    end
    
    def price
        @price
    end
    
    #SETTERS
    def isbn=(new_isbn)
        @isbn = new_isbn
    end
        
    def price=(new_price)
        @price = new_price
    end
    

#Returns the price of the book formatted with a leading dollar sign and two decimal places, that is, a price of 20 should format as "$20.00" and a price of 33.8 should format as "$33.80".
def price_as_string
    newprice = "$"+ "#{'%.02f' % price}"
    
    return newprice
end

end #end of class
