num1 = int(input("Enter num1 ="))
num2 = int(input("Enter num2 ="))
operator = input("Enter operator =")
if(operator == "+"):
    print(num1 + num2)
elif(operator == "-"):
    print(num1 - num2)
elif(operator == "*"):
    print(num1 * num2)
elif(operator == "/"):
    print(num1 / num2)
elif(operator == "//"):
    print(num1 // num2)
elif(operator == "%"):
    print(num1 % num2)
elif(operator == "**"):
    print(num1 ** num2)
else:
    print("Invalid opetrator")