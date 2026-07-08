def merge(list1,list2):

&#x20;   combined=\[]

&#x20;   i=0

&#x20;   j=0

&#x20;   while i< len(list1) and j< len(list2):

&#x20;       if list1\[i]<list2\[j]:

&#x20;           combined.append(list1\[i])

&#x20;           i+=1 

&#x20;       else:

&#x20;           combined.append(list2\[j])

&#x20;           j+=1 

&#x20;   while i<len(list1):

&#x20;           combined.append(list1\[i])

&#x20;           i+=1

&#x20;   while j<len(list2):

&#x20;           combined.append(list2\[j])

&#x20;           j+=1

&#x20;   return combined





print(merge(\[1,2,7,8], \[3,4,5,6]))

\--------------------------------------------------------

def merge(array1, array2):

&#x20;   combined = \[]

&#x20;   i = 0

&#x20;   j = 0

&#x20;   while i < len(array1) and j < len(array2):

&#x20;       if array1\[i] < array2\[j]:

&#x20;           combined.append(array1\[i])

&#x20;           i += 1

&#x20;       else:

&#x20;           combined.append(array2\[j])

&#x20;           j += 1

&#x20;             

&#x20;   while i < len(array1):

&#x20;       combined.append(array1\[i])

&#x20;       i += 1



&#x20;   while j < len(array2):

&#x20;       combined.append(array2\[j])

&#x20;       j += 1



&#x20;   return combined





def merge\_sort(my\_list):

&#x20;   if len(my\_list) == 1:

&#x20;       return my\_list



&#x20;   mid\_index = int(len(my\_list) / 2)



&#x20;   left = merge\_sort(my\_list\[:mid\_index])

&#x20;   right = merge\_sort(my\_list\[mid\_index:])



&#x20;   return merge(left, right)









original\_list = \[3,1,4,2]



sorted\_list = merge\_sort(original\_list)



print('Original List:', original\_list)



print('\\nSorted List:', sorted\_list)



\--------------------------------------------------------

1\. Merge Sort: Overview

* Merge Sort là thuật toán chia để trị (Divide and Conquer).
* Chia mảng thành 2 nửa liên tục cho đến khi mỗi mảng chỉ còn 1 phần tử.
* Sau đó Merge (trộn) các mảng đã sắp xếp lại thành một mảng lớn theo thứ tự.
* Không sắp xếp trực tiếp mà sắp xếp trong lúc trộn.
* Độ phức tạp luôn ổn định O(n log n).

2\. Merge: Intro

* Merge dùng để gộp 2 mảng đã được sắp xếp thành 1 mảng cũng được sắp xếp.
* Dùng 2 con trỏ i và j để so sánh phần tử đầu của mỗi mảng.
* Phần tử nhỏ hơn được thêm vào mảng kết quả.
* Khi một mảng hết thì thêm toàn bộ phần còn lại của mảng kia.
* Đây là bước quan trọng nhất của Merge Sort.

\-------------------------------------------------------

class Node:

&#x20;   def \_\_init\_\_(self, value):

&#x20;       self.value = value

&#x20;       self.next = None

&#x20;       



class LinkedList:

&#x20;   def \_\_init\_\_(self, value):

&#x20;       new\_node = Node(value)

&#x20;       self.head = new\_node

&#x20;       self.tail = new\_node

&#x20;       self.length = 1



&#x20;   def print\_list(self):

&#x20;       temp = self.head

&#x20;       while temp is not None:

&#x20;           print(temp.value)

&#x20;           temp = temp.next

&#x20;       

&#x20;   def append(self, value):

&#x20;       new\_node = Node(value)

&#x20;       if self.head is None:

&#x20;           self.head = new\_node

&#x20;           self.tail = new\_node

&#x20;       else:

&#x20;           self.tail.next = new\_node

&#x20;           self.tail = new\_node

&#x20;       self.length += 1

&#x20;   def merge(self, other\_list):



&#x20;       dummy = Node(0)

&#x20;       current = dummy



&#x20;       current1 = self.head

&#x20;       current2 = other\_list.head



&#x20;       while current1 and current2:



&#x20;           if current1.value < current2.value:

&#x20;               current.next = current1

&#x20;               current1 = current1.next

&#x20;           else:

&#x20;               current.next = current2

&#x20;               current2 = current2.next



&#x20;           current = current.next



&#x20;       if current1:

&#x20;           current.next = current1



&#x20;       if current2:

&#x20;           current.next = current2



&#x20;       self.head = dummy.next



l1 = LinkedList(1)

l1.append(3)

l1.append(5)

l1.append(7)





l2 = LinkedList(2)

l2.append(4)

l2.append(6)

l2.append(8)



l1.merge(l2)



l1.print\_list()



\------------------------------------------------

1. Tạo dummy và current để xây dựng Linked List mới.
2. Dùng current1 = self.head và current2 = other\_list.head để duyệt hai Linked List.
3. So sánh current1.value và current2.value, nối node có giá trị nhỏ hơn vào current.next.
4. Di chuyển current và con trỏ (current1 hoặc current2) vừa được nối.
5. Khi một Linked List hết, nối toàn bộ phần còn lại của Linked List kia.
6. Cập nhật self.head = dummy.next để self trở thành danh sách đã merge.
7. Time Complexity: O(n + m).
8. Space Complexity: O(1) (chỉ nối lại các node, không tạo node dữ liệu mới ngoài dummy).

