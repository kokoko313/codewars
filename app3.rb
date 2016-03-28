def createPhoneNumber(numbers)
  return numbers.join('').replace(/(...)(...)(.*)/, '($1) $2-$3');


end

createPhoneNumber([1, 2, 3, 4, 5, 6, 7, 8, 9, 0])