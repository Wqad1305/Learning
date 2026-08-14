40\. Type Hinting in Python 3.5+



* Type Hinting = ghi chú kiểu dữ liệu cho biến, tham số và giá trị trả về.



* Không ép kiểu dữ liệu khi chạy chương trình.



* : = khai báo kiểu dữ liệu.



* \-> = kiểu dữ liệu trả về của hàm.





def add(a: int, b: int) -> int:

&#x20;   return a + b



name: str = "Hoang"

age: int = 20

print(add(5, 3))

\--------------------------------------------



41\. Imports in Python



* Import = lấy code từ file/module khác.



* Có thể import cả module hoặc một hàm cụ thể.



* as dùng để đặt tên ngắn hơn.

\-------------------------------------------

import math



print(math.sqrt(25))



from math import sqrt



print(sqrt(25))

\-----------------------------------------------



42\. Relative Imports in Python



* Relative Import = import dựa trên vị trí của file hiện tại.



* . = package hiện tại.



* .. = package cha.

\----------------------------------------------

43\. Errors in Python



* Error (Exception) = lỗi xảy ra khi chương trình chạy.



* try = đoạn code có thể gây lỗi.



* except = xử lý lỗi.



* else = chạy khi không có lỗi.



* finally = luôn chạy.



try:

&#x20;   x = 10 / 0





except ZeroDivisionError:

&#x20;   print("Không thể chia cho 0")

try:

&#x20;   number = int(input("Nhập số: "))





except ValueError:

&#x20;   print("Bạn phải nhập số")

\------------------------------------------------

44\. Custom Error Classes



* Custom Error = tự tạo loại lỗi riêng.
* 
* Kế thừa từ Exception.
* 
* raise dùng để chủ động phát sinh lỗi.

\----------------------------------------------

class AgeError(Exception):

&#x20;   pass

age = 16



try:

&#x20;   if age < 18:

&#x20;       raise AgeError("Chưa đủ 18 tuổi")



except AgeError as e:

&#x20;   print(e)

\------------------------------------------------

45\. First-Class Functions



* Function là một object.



* Có thể gán cho biến.



* Có thể truyền vào hàm khác.



* Có thể trả về từ hàm khác.



* Là nền tảng của callback, decorator và lambda.

\-------------------------------------------------

def hello():

&#x20;   print("Hello")





def run(func):

&#x20;   func()





run(hello)

\---------------------------------------------------

Bài 1 — Type Hinting trong LeetCode



class Solution:

&#x20;   def twoSum(self, nums: list\[int], target: int) -> list\[int]:

&#x20;       seen = {}



&#x20;       for i, num in enumerate(nums):

&#x20;           diff = target - num



&#x20;           if diff in seen:

&#x20;               return \[seen\[diff], i]



&#x20;           seen\[num] = i

\-----------------------------------------------------



* nums: list\[int] → danh sách số nguyên → target: int → tìm số còn thiếu bằng diff = target - num → nếu đã gặp thì trả về hai vị trí → -> list\[int] nghĩa là kết quả là danh sách chỉ số.

