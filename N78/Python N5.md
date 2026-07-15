1. If statements: Dùng để kiểm tra điều kiện và thực hiện câu lệnh nếu điều kiện đúng.

2. in keyword: Kiểm tra một phần tử có tồn tại trong một đối tượng hay không.

3. Loops (for, while): Dùng để lặp lại một khối lệnh nhiều lần.

4. break: Kết thúc vòng lặp ngay lập tức.

5. continue: Bỏ qua lần lặp hiện tại và chuyển sang lần lặp tiếp theo.

6. List Comprehensions: Tạo List mới bằng cú pháp ngắn gọn.



\-----------------------------------------------

fruits = \["apple", "banana", "orange"]



if "banana" in fruits:

&#x20;   print("Có banana")

\----------------------------------------------

for i in range(5):

&#x20;   print(i)



count = 0

while count < 3:

&#x20;   print(count)

&#x20;   count += 1

for i in range(10):

&#x20;   if i == 5:

&#x20;       break

&#x20;   print(i)

for i in range(5):

&#x20;   if i == 2:

&#x20;       continue

&#x20;   print(i)

\---------------------------------------------

scores = \[8, -1, 7, -1, 9, 6]

total = 0



for score in scores:

&#x20;   if score == -1:

&#x20;       continue

&#x20;   total += score



print(total)

\--------------------------------------------

numbers = \[i for i in range(10)]

print(numbers)



even = \[i for i in range(10) if i % 2 == 0]

print(even)



square = \[i \* i for i in range(5)]

print(square)

\---------------------------------------------

numbers = \[1, 2, 3, 4, 5, 6, 7, 8, 9, 10]



result = \[num \* 2 for num in numbers if num % 2 == 0]



print(result)



