1. BST khi duyệt In-Order (Left → Root → Right) sẽ cho dãy tăng dần.
2. Duyệt In-Order rồi lưu các giá trị vào list.
3. Phần tử nhỏ thứ k nằm ở vị trí k - 1 trong list.
4. Nếu k không hợp lệ thì trả về None hoặc xử lý theo yêu cầu bài toán.
5. Cách đơn giản có Time O(n) và Space O(n).
6. Có thể tối ưu bằng cách đếm khi duyệt In-Order và dừng ngay khi đến node thứ k, giảm bộ nhớ và có thể chạy nhanh hơn trong thực tế.



\--------------------------------------------

class Node:

&#x20;   def \_\_init\_\_(self, value):

&#x20;       self.value = value

&#x20;       self.left = None

&#x20;       self.right = None

&#x20;       



class BinarySearchTree:

&#x20;   def \_\_init\_\_(self):

&#x20;       self.root = None



&#x20;   def insert(self, value):

&#x20;       new\_node = Node(value)

&#x20;       if self.root is None:

&#x20;           self.root = new\_node

&#x20;           return True

&#x20;       temp = self.root

&#x20;       while (True):

&#x20;           if new\_node.value == temp.value:

&#x20;               return False

&#x20;           if new\_node.value < temp.value:

&#x20;               if temp.left is None:

&#x20;                   temp.left = new\_node

&#x20;                   return True

&#x20;               temp = temp.left

&#x20;           else: 

&#x20;               if temp.right is None:

&#x20;                   temp.right = new\_node

&#x20;                   return True

&#x20;               temp = temp.right



&#x20;   def dfs\_in\_order(self):

&#x20;       results = \[]



&#x20;       def traverse(current\_node):

&#x20;           if current\_node.left is not None:

&#x20;               traverse(current\_node.left)



&#x20;           results.append(current\_node.value)



&#x20;           if current\_node.right is not None:

&#x20;            traverse(current\_node.right)



&#x20;       traverse(self.root)

&#x20;       return results

&#x20;   def kth\_smallest(self, k):

&#x20;       result = self.dfs\_in\_order()



&#x20;       if k < 1 or k > len(result):

&#x20;           return None



&#x20;       return result\[k - 1]





bst = BinarySearchTree()



bst.insert(5)

bst.insert(3)

bst.insert(7)

bst.insert(2)

bst.insert(4)

bst.insert(6)

bst.insert(8)



print(bst.kth\_smallest(1))  # Expected output: 2

print(bst.kth\_smallest(3))  # Expected output: 4

print(bst.kth\_smallest(6))  # Expected output: 7





\-------------------------------------------

1. Dùng DFS (đệ quy) để duyệt toàn bộ cây.
2. Mỗi node phải thỏa min < value < max.
3. Đi trái cập nhật max = node.value.
4. Đi phải cập nhật min = node.value.
5. Node vi phạm khoảng giá trị ⇒ False ngay.
6. Node None ⇒ True.
7. Mỗi node chỉ kiểm tra 1 lần ⇒ O(n).
8. Đây là cách kiểm tra BST chuẩn trong phỏng vấn, tốt hơn việc chỉ so sánh với node cha vì phát hiện được lỗi ở nhiều cấp của cây.

\--------------------------------------------

class Node:

&#x20;   def \_\_init\_\_(self, value):

&#x20;       self.value = value

&#x20;       self.left = None

&#x20;       self.right = None

&#x20;       



class BinarySearchTree:

&#x20;   def \_\_init\_\_(self):

&#x20;       self.root = None



&#x20;   def insert(self, value):

&#x20;       new\_node = Node(value)

&#x20;       if self.root is None:

&#x20;           self.root = new\_node

&#x20;           return True

&#x20;       temp = self.root

&#x20;       while (True):

&#x20;           if new\_node.value == temp.value:

&#x20;               return False

&#x20;           if new\_node.value < temp.value:

&#x20;               if temp.left is None:

&#x20;                   temp.left = new\_node

&#x20;                   return True

&#x20;               temp = temp.left

&#x20;           else: 

&#x20;               if temp.right is None:

&#x20;                   temp.right = new\_node

&#x20;                   return True

&#x20;               temp = temp.right



&#x20;   def dfs\_in\_order(self):

&#x20;       results = \[]

&#x20;       def traverse(current\_node):

&#x20;           if current\_node.left is not None:

&#x20;               traverse(current\_node.left)

&#x20;           results.append(current\_node.value) 

&#x20;           if current\_node.right is not None:

&#x20;               traverse(current\_node.right)          

&#x20;       traverse(self.root)

&#x20;       return results

&#x20;       

&#x20;   def is\_valid\_bst(self):

&#x20;       result = self.dfs\_in\_order()



&#x20;       for i in range(1, len(result)):

&#x20;           if result\[i] <= result\[i-1]:

&#x20;               return False



&#x20;       return True







my\_tree = BinarySearchTree()

my\_tree.insert(47)

my\_tree.insert(21)

my\_tree.insert(76)

my\_tree.insert(18)

my\_tree.insert(27)

my\_tree.insert(52)

my\_tree.insert(82)



print("BST is valid:")

print(my\_tree.is\_valid\_bst())























