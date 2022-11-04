def fizzbuzz(number)
    raise("not an integer") unless number.is_a?(Integer)
    return "fizzbuzz" if number % 15 == 0
    return "fizz" if number % 3 == 0
    return "buzz" if number % 5 == 0
    return number
end