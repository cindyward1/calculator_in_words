def calculator_in_words (input_math_string)

	math_operation_dictionary = ["plus", "minus", "times", "divided", "power"]
	input_math_array = input_math_string.split
	math_operations = []
	numbers = []
	result = 0

	input_math_array.each do |word|

		if math_operation_dictionary.include?(word)
			math_operations.push(word)
		elsif word == "0"
			numbers.push(word)
		elsif word.to_f != 0.0
			numbers.push(word.to_f)
		end # skip any words that aren't numbers or math operations

	end

	if math_operations[0] == "plus"
		result = numbers[0].to_i + numbers[1].to_i
	elsif math_operations[0] =="minus"
		result = numbers[0].to_i - numbers[1].to_i
	elsif math_operations[0] == "times"
		result = numbers[0].to_i * numbers[1].to_i
	elsif math_operations[0] == "divided"
		result = numbers[0] / numbers[1]
	end

	return result

	end

# calculator_in_words("What is 5 plus 3?")
# calculator_in_words("What is 5 minus 3?")
# calculator_in_words("What is 6 divided by 3?")
# calculator_in_words("What is 5 divided by 2?")
# calculator_in_words("What is 5 times 2?")
