Bài 1. Maximum Depth of Binary Tree

class Solution(object):

&#x20;   def maxDepth(self, root):



&#x20;       if root is None:

&#x20;           return 0



&#x20;       left = self.maxDepth(root.left)

&#x20;       right = self.maxDepth(root.right)



&#x20;       return max(left, right) + 1



\--------------------------------------------------------



* Nếu node rỗng → trả về 0.
* Đệ quy sang trái.
* Đệ quy sang phải.
* Độ sâu = lớn hơn giữa trái và phải + 1.

\--------------------------------------------------------

Bài 2. Invert Binary Tree



class Solution(object):

&#x20;   def invertTree(self, root):



&#x20;       if root is None:

&#x20;           return None



&#x20;       root.left, root.right = root.right, root.left



&#x20;       self.invertTree(root.left)

&#x20;       self.invertTree(root.right)



&#x20;       return root



\--------------------------------------------------------



Mỗi node:

* đổi trái ↔ phải
* tiếp tục đệ quy xuống hai bên



\--------------------------------------------------------

Bài 3. Same Tree



class Solution(object):

&#x20;   def isSameTree(self, p, q):



&#x20;       if p is None and q is None:

&#x20;           return True



&#x20;       if p is None or q is None:

&#x20;           return False



&#x20;       if p.val != q.val:

&#x20;           return False



&#x20;       left = self.isSameTree(p.left, q.left)

&#x20;       right = self.isSameTree(p.right, q.right)



&#x20;       return left and right



\--------------------------------------------------------



* Cả hai đều None → giống
* Một cây None, cây kia không → khác
* Giá trị khác → khác
* So sánh tiếp cây con trái và cây con phải

























