class MaxHeap:

&#x20;   def \_\_init\_\_(self):

&#x20;       self.heap = \[]



&#x20;   def \_left\_child(self, index):

&#x20;       return 2 \* index + 1



&#x20;   def \_right\_child(self, index):

&#x20;       return 2 \* index + 2



&#x20;   def \_parent(self, index):

&#x20;       return (index - 1) // 2



&#x20;   def \_swap(self, index1, index2):

&#x20;       self.heap\[index1], self.heap\[index2] = self.heap\[index2], self.heap\[index1]



&#x20;   def insert(self, value):

&#x20;       self.heap.append(value)

&#x20;       current = len(self.heap) - 1



&#x20;       while current > 0 and self.heap\[current] > self.heap\[self.\_parent(current)]:

&#x20;           self.\_swap(current, self.\_parent(current))

&#x20;           current = self.\_parent(current)



&#x20;   def \_sink\_down(self, index):

&#x20;       max\_index = index

&#x20;       while True:

&#x20;           left\_index = self.\_left\_child(index)

&#x20;           right\_index = self.\_right\_child(index)



&#x20;           if (left\_index < len(self.heap) and 

&#x20;                   self.heap\[left\_index] > self.heap\[max\_index]):

&#x20;               max\_index = left\_index



&#x20;           if (right\_index < len(self.heap) and 

&#x20;                   self.heap\[right\_index] > self.heap\[max\_index]):

&#x20;               max\_index = right\_index



&#x20;           if max\_index != index:

&#x20;               self.\_swap(index, max\_index)

&#x20;               index = max\_index

&#x20;           else:

&#x20;               return

&#x20;                      

&#x20;   def remove(self):

&#x20;       if len(self.heap) == 0:

&#x20;           return None



&#x20;       if len(self.heap) == 1:

&#x20;           return self.heap.pop()



&#x20;       max\_value = self.heap\[0]

&#x20;       self.heap\[0] = self.heap.pop()

&#x20;       self.\_sink\_down(0)



&#x20;       return max\_value

&#x20;       



def stream\_max(nums):

&#x20;   max\_heap=MaxHeap()

&#x20;   result=\[]

&#x20;   for num in nums:

&#x20;       max\_heap.insert(num)

&#x20;       result.append(max\_heap.heap\[0])

&#x20;   return result







test\_cases = \[

&#x20;   (\[], \[]),

&#x20;   (\[1], \[1]),

&#x20;   (\[1, 2, 3, 4, 5], \[1, 2, 3, 4, 5]),

&#x20;   (\[1, 2, 2, 1, 3, 3, 3, 2, 2], \[1, 2, 2, 2, 3, 3, 3, 3, 3]),

&#x20;   (\[-1, -2, -3, -4, -5], \[-1, -1, -1, -1, -1])

]



for i, (nums, expected) in enumerate(test\_cases):

&#x20;   result = stream\_max(nums)

&#x20;   print(f'\\nTest {i+1}')

&#x20;   print(f'Input: {nums}')

&#x20;   print(f'Expected Output: {expected}')

&#x20;   print(f'Actual Output: {result}')

&#x20;   if result == expected:

&#x20;       print('Status: Passed')

&#x20;   else:

&#x20;       print('Status: Failed')



\--------------------------------------------------------

import heapq

class MaxHeap:

&#x20;   def \_\_init\_\_(self):

&#x20;       self.heap = \[]



&#x20;   def \_left\_child(self, index):

&#x20;       return 2 \* index + 1



&#x20;   def \_right\_child(self, index):

&#x20;       return 2 \* index + 2



&#x20;   def \_parent(self, index):

&#x20;       return (index - 1) // 2



&#x20;   def \_swap(self, index1, index2):

&#x20;       self.heap\[index1], self.heap\[index2] = self.heap\[index2], self.heap\[index1]



&#x20;   def insert(self, value):

&#x20;       self.heap.append(value)

&#x20;       current = len(self.heap) - 1



&#x20;       while current > 0 and self.heap\[current] > self.heap\[self.\_parent(current)]:

&#x20;           self.\_swap(current, self.\_parent(current))

&#x20;           current = self.\_parent(current)



&#x20;   def \_sink\_down(self, index):

&#x20;       max\_index = index

&#x20;       while True:

&#x20;           left\_index = self.\_left\_child(index)

&#x20;           right\_index = self.\_right\_child(index)



&#x20;           if (left\_index < len(self.heap) and 

&#x20;                   self.heap\[left\_index] > self.heap\[max\_index]):

&#x20;               max\_index = left\_index



&#x20;           if (right\_index < len(self.heap) and 

&#x20;                   self.heap\[right\_index] > self.heap\[max\_index]):

&#x20;               max\_index = right\_index



&#x20;           if max\_index != index:

&#x20;               self.\_swap(index, max\_index)

&#x20;               index = max\_index

&#x20;           else:

&#x20;               return

&#x20;                      

&#x20;   def remove(self):

&#x20;       if len(self.heap) == 0:

&#x20;           return None



&#x20;       if len(self.heap) == 1:

&#x20;           return self.heap.pop()



&#x20;       max\_value = self.heap\[0]

&#x20;       self.heap\[0] = self.heap.pop()

&#x20;       self.\_sink\_down(0)



&#x20;       return max\_value



def find\_kth\_smallest(nums,k):

&#x20;   max\_heap=\[]

&#x20;   for num in nums:    

&#x20;   

&#x20;       if len (max\_heap)<k:

&#x20;           heapq.heappush(max\_heap,-num)

&#x20;       elif num<-max\_heap\[0]:

&#x20;           heapq.heappop(max\_heap)

&#x20;           heapq.heappush(max\_heap,-num)

&#x20;   return -max\_heap\[0]









\# Test cases

nums = \[\[3,2,1,5,6,4], \[6,5,4,3,2,1], \[1,2,3,4,5,6], \[3,2,3,1,2,4,5,5,6]]

ks = \[2, 3, 4, 7]

expected\_outputs = \[2, 3, 4, 5]



for i in range(len(nums)):

&#x20;   print(f'Test case {i+1}...')

&#x20;   print(f'Input: {nums\[i]} with k = {ks\[i]}')

&#x20;   result = find\_kth\_smallest(nums\[i], ks\[i])

&#x20;   print(f'Output: {result}')

&#x20;   print(f'Expected output: {expected\_outputs\[i]}')

&#x20;   print(f'Test passed: {result == expected\_outputs\[i]}')

&#x20;   print('---------------------------------------')

========================================================

1\. Recursion: Chia bài toán lớn thành bài toán nhỏ hơn cùng dạng bằng cách hàm tự gọi lại chính nó cho đến khi gặp Base Case để dừng.

2\. Call Stack: Mỗi lần hàm tự gọi, Python lưu lời gọi đó vào Stack; khi gặp Base Case, các hàm sẽ lần lượt return theo thứ tự ngược lại để tạo ra kết quả cuối cùng.

========================================================

def \_\_r\_contains(self, current\_node, value):

&#x20;   if current\_node == None:

&#x20;       return False



&#x20;   if value == current\_node.value:

&#x20;       return True



&#x20;   if value < current\_node.value:

&#x20;       return self.\_\_r\_contains(current\_node.left, value)



&#x20;   if value > current\_node.value:

&#x20;       return self.\_\_r\_contains(current\_node.right, value)





def r\_contains(self, value):

&#x20;   return self.\_\_r\_contains(self.root, value)



\-------------------------------------------------------

&#x20;   def \_\_r\_insert(self,current\_node,value):

&#x20;       if current\_node==None:

&#x20;           return Node(value)

&#x20;       if current\_node.value>value:

&#x20;           current\_node.left=self.\_\_r\_insert(current\_node.left,value)

&#x20;       if current\_node.value<value:

&#x20;           current\_node.right=self.\_\_r\_insert(current\_node.right,value)

&#x20;       return current\_node

&#x20;   def r\_insert(self,value):

&#x20;       if self.root==None:

&#x20;           self.root=Node(value)

&#x20;       self.\_\_r\_insert(self.root,value)

\--------------------------------------------------------

def min\_value(self,current\_node):

&#x20;       if current\_node.left is not None:

&#x20;           current\_node=current\_node.left

&#x20;       return current\_node.value

&#x20;       

\--------------------------------------------------------

def \_\_delete\_node(self, current\_node, value):



&#x20;   if current\_node is None:

&#x20;       return None



&#x20;   if value < current\_node.value:

&#x20;       current\_node.left = self.\_\_delete\_node(current\_node.left, value)



&#x20;   elif value > current\_node.value:

&#x20;       current\_node.right = self.\_\_delete\_node(current\_node.right, value)



&#x20;   else:

&#x20;       if current\_node.left is None:

&#x20;           return current\_node.right



&#x20;       if current\_node.right is None:

&#x20;           return current\_node.left



&#x20;       current\_node.value = self.minimum\_value(current\_node.right)

&#x20;       current\_node.right = self.\_\_delete\_node(

&#x20;           current\_node.right,

&#x20;           current\_node.value

&#x20;       )



&#x20;   return current\_node

\--------------------------------------------------------

1. BST: Luôn có quy tắc Trái < Gốc < Phải.
2. Recursion: Mỗi cây con cũng là một BST, nên dùng cùng một hàm để xử lý cây con.
3. Base Case: Gặp None thì dừng và return.
4. Contains: So sánh → nhỏ đi trái → lớn đi phải → bằng trả True → None trả False.
5. Insert: So sánh → đi trái/phải → gặp None thì tạo node mới → return node để nối lại cây.
6. Delete: Đầu tiên tìm đúng node cần xóa, sau đó mới xử lý việc xóa.
7. Delete có 3 trường hợp: Không có con → None; có 1 con → trả node con; có 2 con → thay bằng giá trị nhỏ nhất của cây con bên phải rồi xóa node đó.
8. Minimum Value: Muốn tìm giá trị nhỏ nhất thì đi sang trái liên tục đến khi không còn node trái.
9. Hai hàm trong Recursion: Hàm ngoài (ví dụ r\_contains, delete\_node) để người dùng gọi và bắt đầu từ root; hàm trong (ví dụ \_\_r\_contains, \_\_delete\_node) là hàm đệ quy thực sự dùng current\_node.
10. Mẫu chung của mọi bài rBST: Bắt đầu từ root → So sánh → Đi trái hoặc phải → Đệ quy → Gặp Base Case hoặc node cần xử lý → return node khi quay ngược lên.

