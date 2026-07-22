1\. Function arguments và parameters



Hàm được tạo bằng từ khóa def để thực hiện một nhiệm vụ cụ thể và có thể tái sử dụng nhiều lần. Parameter là các biến được khai báo trong phần định nghĩa hàm để nhận dữ liệu đầu vào, còn

&#x20;

argument là các giá trị thực tế được truyền vào khi gọi hàm. Một hàm có thể nhận một hoặc nhiều tham số, giúp chương trình linh hoạt và tránh lặp lại mã nguồn.



2\. Default parameter values



Python cho phép gán giá trị mặc định cho tham số ngay khi định nghĩa hàm. Nếu khi gọi hàm không truyền đối số thì tham số sẽ tự động nhận giá trị mặc định, còn nếu truyền đối số mới thì giá 



trị đó sẽ thay thế giá trị mặc định. Điều này giúp hàm dễ sử dụng hơn và giảm số lượng đối số bắt buộc.



3\. Functions returning values



Từ khóa return được dùng để trả kết quả từ hàm về nơi gọi. Giá trị trả về có thể được lưu vào biến, in ra màn hình hoặc tiếp tục sử dụng trong các phép tính khác. Khi chương trình gặp 



return, hàm sẽ kết thúc ngay lập tức và mọi câu lệnh phía sau return sẽ không được thực thi.



4\. Coding Exercise: Functions



Thực hành xây dựng các hàm hoàn chỉnh bằng cách sử dụng def, truyền tham số, nhận đối số và trả về kết quả bằng return. Qua bài tập, học cách chia chương trình thành nhiều hàm nhỏ để mã 



nguồn rõ ràng, dễ đọc, dễ kiểm tra và có thể tái sử dụng trong nhiều tình huống khác nhau.



5\. Lambda functions



Lambda là hàm ẩn danh được viết trên một dòng với cú pháp lambda tham\_so: bieu\_thuc. Hàm lambda chỉ chứa một biểu thức và tự động trả về kết quả mà không cần dùng return. Lambda thường được



sử dụng khi cần tạo các hàm ngắn gọn, đặc biệt khi kết hợp với sorted(), map(), filter() hoặc các thao tác xử lý dữ liệu.



6\. Dictionary comprehensions



Dictionary comprehension là cách tạo dictionary nhanh bằng một dòng lệnh với cú pháp {key: value for item in iterable}. Có thể kết hợp thêm điều kiện if để chỉ thêm những phần tử thỏa mãn 



yêu cầu. Cách này giúp mã nguồn ngắn gọn, dễ đọc, hiệu quả và thường được dùng để chuyển đổi hoặc xử lý dữ liệu từ list, tuple hoặc các iterable khác.



\--------------------------------------------------------

def greet(name):

&#x20;   print("Hello", name)



greet("Hoang")

\--------------------------------------------------------

def greet(name="Guest"):

&#x20;   print("Hello", name)



greet()

greet("Hoang")

\--------------------------------------------------------

def add(a, b):

&#x20;   return a + b



result = add(5, 3)

print(result)

\--------------------------------------------------------

def square(number):

&#x20;   return number \* number



print(square(4))

\--------------------------------------------------------



numbers = \[5, 2, 8, 1]



numbers. Sort(key=lambda x: x)



print(numbers)

\--------------------------------------------------------



numbers = \[1, 2, 3, 4]



squares = {x: x \* x for x in numbers}



print(squares)

\--------------------------------------------------------

Code leetcode:

class Solution(object):

&#x20;   def findMaxAverage(self, nums, k):

&#x20;       window\_sum = sum(nums\[:k])

&#x20;       max\_sum = window\_sum



&#x20;       for i in range(k, len(nums)):

&#x20;           window\_sum += nums\[i]

&#x20;           window\_sum -= nums\[i - k]

&#x20;           max\_sum = max(max\_sum, window\_sum)



&#x20;       return float(max\_sum) / k

\--------------------------------------------------------



Tính tổng của k phần tử đầu tiên, sau đó mỗi lần cửa sổ dịch sang phải chỉ cần cộng phần tử mới, trừ phần tử cũ và cập nhật tổng lớn nhất để tìm giá trị trung bình lớn nhất.

\--------------------------------------------------------

class Solution(object):

&#x20;   def containsNearbyDuplicate(self, nums, k):

&#x20;       window = set()



&#x20;       for i in range(len(nums)):

&#x20;           if nums\[i] in window:

&#x20;               return True



&#x20;           window.add(nums\[i])



&#x20;           if len(window) > k:

&#x20;               window.remove(nums\[i - k])



&#x20;       return False

\--------------------------------------------------------

Thêm phần tử mới vào cửa sổ, nếu phần tử đã tồn tại thì trả về True, nếu cửa sổ vượt quá k phần tử thì xóa phần tử cũ để giữ đúng kích thước cửa sổ.

\--------------------------------------------------------

class Solution(object):

&#x20;   def decrypt(self, code, k):

&#x20;       n = len(code)

&#x20;       result = \[0] \* n



&#x20;       if k == 0:

&#x20;           return result



&#x20;       for i in range(n):

&#x20;           total = 0



&#x20;           if k > 0:

&#x20;               for j in range(1, k + 1):

&#x20;                   total += code\[(i + j) % n]

&#x20;           else:

&#x20;               for j in range(1, -k + 1):

&#x20;                   total += code\[(i - j) % n]



&#x20;           result\[i] = total



&#x20;       return result

\--------------------------------------------------------	

Tính tổng cửa sổ đầu tiên, sau đó mỗi lần dịch cửa sổ chỉ cần cộng phần tử mới, trừ phần tử cũ và dùng phép % (modulo) để xử lý việc quay vòng của mảng, giúp tránh tính lại tổng từ đầu.















