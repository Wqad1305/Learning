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





&#x20;   def contains(self, value):

&#x20;       if self.root is None:

&#x20;           return False

&#x20;       temp = self.root

&#x20;       while (temp):

&#x20;           if value < temp.value:

&#x20;               temp = temp.left

&#x20;           elif value > temp.value:

&#x20;               temp = temp.right

&#x20;           else:

&#x20;               return True

&#x20;       return False

&#x20;       



&#x20;   def BFS(self):

&#x20;       current\_node = self.root

&#x20;       queue = \[]

&#x20;       results = \[]

&#x20;       queue.append(current\_node)



&#x20;       while len(queue) > 0:

&#x20;           current\_node = queue.pop(0)

&#x20;           results.append(current\_node.value)

&#x20;           if current\_node.left is not None:

&#x20;               queue.append(current\_node.left)

&#x20;           if current\_node.right is not None:

&#x20;               queue.append(current\_node.right)

&#x20;       return results

&#x20;   



&#x20;   def dfs\_pre\_order(self):

&#x20;       results = \[]



&#x20;       def traverse(current\_node):

&#x20;           results.append(current\_node.value)

&#x20;           if current\_node.left is not None:

&#x20;               traverse(current\_node.left)

&#x20;           if current\_node.right is not None:

&#x20;               traverse(current\_node.right)



&#x20;       traverse(self.root)

&#x20;       return results



&#x20;   def dfs\_post\_order(self):

&#x20;       results = \[]

&#x20;       def traverse(current\_node):

&#x20;           if current\_node.left is not None:

&#x20;               traverse(current\_node.left)

&#x20;           if current\_node.right is not None:

&#x20;               traverse(current\_node.right)

&#x20;           results.append(current\_node.value)

&#x20;       traverse(self.root)

&#x20;       return results



&#x20;   def dfs\_in\_order(self):

&#x20;   results = \[]



&#x20;   def traverse(current\_node):

&#x20;       if current\_node.left is not None:

&#x20;           traverse(current\_node.left)



&#x20;       results.append(current\_node.value)



&#x20;       if current\_node.right is not None:

&#x20;           traverse(current\_node.right)



&#x20;   traverse(self.root)

&#x20;   return results







my\_tree = BinarySearchTree()

my\_tree.insert(47)

my\_tree.insert(21)

my\_tree.insert(76)

my\_tree.insert(18)

my\_tree.insert(27)

my\_tree.insert(52)

my\_tree.insert(82)



print(my\_tree.dfs\_in\_order())

\--------------------------------------------------------

1. Tree Traversal:là quá trình đi qua tất cả các node trong cây theo một quy tắc nhất định, gồm hai nhóm chính là BFS và DFS.
2. BFS (Breadth First Search): Duyệt cây theo từng tầng từ trên xuống dưới, từ trái sang phải bằng Queue, phù hợp để tìm node gần gốc nhất.
3. DFS Pre-Order: Duyệt theo thứ tự Root → Left → Right, xử lý node hiện tại trước rồi mới đến các cây con.
4. DFS Post-Order: Duyệt theo thứ tự Left → Right → Root, xử lý node sau khi đã duyệt xong cả hai cây con, thường dùng để xóa hoặc tính toán trên cây.
5. DFS In-Order: Duyệt theo thứ tự Left → Root → Right, với Binary Search Tree (BST) sẽ trả về các giá trị theo thứ tự tăng dần.

\--------------------------------------------------------

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



\--------------------------------------------------------

1. Validate BST: Kiểm tra xem cây có phải Binary Search Tree hay không bằng cách đảm bảo mọi node bên trái < node hiện tại < mọi node bên phải.
2. Cách làm tối ưu: Duyệt DFS In-Order và kiểm tra dãy giá trị thu được có tăng dần liên tục hay không; nếu có thì là BST, ngược lại thì không.
3. Độ phức tạp: Time O(n) vì duyệt mỗi node một lần, Space O(h) với đệ quy (h là chiều cao của cây; trường hợp xấu nhất là O(n)).

\--------------------------------------------------------

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





\--------------------------------------------------------

1. Kth Smallest Node: Tìm node có giá trị nhỏ thứ k trong BST bằng cách tận dụng tính chất DFS In-Order trả về các giá trị theo thứ tự tăng dần.
2. Cách làm: Duyệt In-Order (Left → Root → Right), đếm số node đã đi qua; khi bộ đếm = k thì node hiện tại chính là đáp án và có thể dừng duyệt.
3. Độ phức tạp: Time O(h + k) trong trường hợp tối ưu (dừng sớm khi tìm thấy), O(n) trong trường hợp xấu nhất; Space O(h) do ngăn xếp đệ quy (h là chiều cao của cây).



























