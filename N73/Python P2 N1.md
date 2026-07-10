\# Create two variables, var1 and var2, both with the same value.

var1=15

var2=var1

print(var1,var2)



\# Create two variables, num1 and num2, which multiply together to give 16.

num1=4

num2=num1

print(num1\*num2)

\--------------------------------------------------------

name = 'Bob'

my\_string = f'Hello {name}!'

name = 'Rolf'

print(my\_string)

\--------------------------------------------------------

size\_input = input("How big is your house (in square feet): ")

square\_feet = int(size\_input)

square\_metres = square\_feet / 10.8



print(f"{square\_feet} square feet is {square\_metres:.2f} square metres.")



\--------------------------------------------------------

1. Variables in Python: Biến dùng để lưu trữ dữ liệu, gán bằng dấu =, Python tự xác định kiểu dữ liệu (int, float, str, bool) và có thể dùng print() để hiển thị giá trị.
2. String Formatting in Python: Dùng f-string (f"...") để chèn giá trị của biến vào chuỗi, có thể định dạng dữ liệu như .2f để hiển thị số thực với 2 chữ số sau dấu thập phân.
3. Getting User Input: Dùng input() để nhận dữ liệu từ bàn phím (luôn là kiểu str), sau đó dùng int() hoặc float() để chuyển sang kiểu số nếu cần tính toán và print() để xuất kết quả.

