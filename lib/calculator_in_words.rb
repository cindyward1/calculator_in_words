def calculator_in_words (input_math_string)

	math_operation_dictionary = ["divided","minus","plus","power","times"]
	input_math_array = input_math_string.split
	math_operations = []
	numbers = []
	result_array = []

	input_math_array.each do |word|

		if word.slice(-1,1) == "?"
			word = word.slice(0,word.length-1)
		end # strip off '?' at the end (needed for power); for some reason slice! wasn't working correctly

		if math_operation_dictionary.include?(word)
			math_operations.push(word)
		elsif word == "0"
			numbers.push(word)
		elsif word.to_f != 0.0
			numbers.push(word.to_f)
		end # skip any words that aren't numbers or math operations

	end

	index = 0
	math_operations.each do |math_operation|
		if numbers.length >= index + 2
			if math_operation == "plus"
				result = numbers[index].to_i + numbers[index+1].to_i
			elsif math_operation =="minus"
				result = numbers[index].to_i - numbers[index+1].to_i
			elsif math_operation == "times"
				result = numbers[index].to_i * numbers[index+1].to_i
			elsif math_operation == "divided"
				result = numbers[index] / numbers[index+1]
			elsif math_operation == "power"
				result = numbers[index].to_i ** numbers[index+1].to_i
			end
		elsif numbers.length < index + 2
			result = result_array.pop # get back the last value pushed for more calculation
	# note that this algorithm does NOT obey operator precedence rules; it simply evaluates each operator in turn
			if math_operation == "plus"
				result = result + numbers[index].to_i 
			elsif math_operation =="minus"
				result = result - numbers[index].to_i
			elsif math_operation == "times"
				result = result * numbers[index].to_i
			elsif math_operation == "divided"
				result = result / numbers[index].to_i
			elsif math_operation == "power"
				result = result ** numbers[index].to_i
			end
		end
		result_array.push(result)
		index += 2
	end

	return result_array

	end

# calculator_in_words("What is 5 plus 3?")
# calculator_in_words("What is 5 minus 3?")
# calculator_in_words("What is 6 divided by 3?")
# calculator_in_words("What is 5 divided by 2?")
# calculator_in_words("What is 5 times 2?")
# calculator_in_words("What is 4 to the 3rd power?")
# calculator_in_words("What is 4 plus 6 divided by 2?")
# calculator_in_words("What is 2 plus 3? What is 7 divided by 4?")
