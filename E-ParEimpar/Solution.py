def validate(number):
  if(number%2==0):
    return "par"
  else:
    return "impar"

number = int(input())
print(validate(number))
