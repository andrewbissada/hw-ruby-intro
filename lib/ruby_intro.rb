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
# For an empty array it should return zero. For an array with just one element, it should return that element.
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
        
        #sum = 0
        if sub_array[0] + sub_array[1] == n
            answer = true
        end
    end
    return answer
end

##############
# PART 2

def hello(name)
  # YOUR CODE HERE
end

def starts_with_consonant? s
  # YOUR CODE HERE
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
end


###############
# PART 3

class BookInStock
# YOUR CODE HERE
end
