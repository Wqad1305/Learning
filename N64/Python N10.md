

def item\_in\_common(list1,list2):

&#x20;   

&#x20;   for i in list1:

&#x20;       for j in list2:

&#x20;           if i==j:

&#x20;               return True

&#x20;   return False







list1 = \[1,3,5]

list2 = \[2,4,5]





print(item\_in\_common(list1, list2))

\--------------------------------------------------------

def find\_duplicates(nums):

&#x20;   seen=set()

&#x20;   duplicates=set()

&#x20;   for num in nums:

&#x20;       if num in seen:

&#x20;           seen.add(num)

&#x20;       else:

&#x20;           duplicates.add(num)

&#x20;           

&#x20;   return list(duplicates)

&#x20;   







print ( find\_duplicates(\[1, 2, 3, 4, 5]) )

print ( find\_duplicates(\[1, 1, 2, 2, 3]) )

print ( find\_duplicates(\[1, 1, 1, 1, 1]) )

print ( find\_duplicates(\[1, 2, 3, 3, 3, 4, 4, 5]) )

print ( find\_duplicates(\[1, 1, 2, 2, 2, 3, 3, 3, 3]) )

print ( find\_duplicates(\[1, 1, 1, 2, 2, 2, 3, 3, 3, 3]) )

print ( find\_duplicates(\[]) )

\------------------------------------------------------

def first\_non\_repeating\_char(string):

&#x20;   seen=set()

&#x20;   repeating=set()

&#x20;   

&#x20;   for ch in string:

&#x20;       if ch in seen:

&#x20;           repeating.add(ch)

&#x20;       else:

&#x20;           seen.add(ch)

&#x20;   for ch in string:

&#x20;       if ch not in repeating:

&#x20;           return ch

&#x20;   return None                     

&#x20;   







print( first\_non\_repeating\_char('leetcode') )



print( first\_non\_repeating\_char('hello') )



print( first\_non\_repeating\_char('aabbcc') )

\-------------------------------------------------------

def group\_anagrams(words):

&#x20;   result={}

&#x20;   for word in words:

&#x20;       keys=''.join(sorted(word))

&#x20;       if keys not in result:

&#x20;           result\[keys]=\[]

&#x20;       result\[keys].append(word)

&#x20;   return list(result.value())

&#x20;   

&#x20;       







print("1st set:")

print( group\_anagrams(\["eat", "tea", "tan", "ate", "nat", "bat"]) )



print("\\n2nd set:")

print( group\_anagrams(\["abc", "cba", "bac", "foo", "bar"]) )



print("\\n3rd set:")

print( group\_anagrams(\["listen", "silent", "triangle", "integral", "garden", "ranged"]) )

\------------------------------------------------------

def subarray\_sum(nums, k):

&#x20;   count = 0

&#x20;   prefix\_sum = 0

&#x20;   seen = {0: 1}



&#x20;   for num in nums:

&#x20;       prefix\_sum += num



&#x20;       need = prefix\_sum - k



&#x20;       if need in seen:

&#x20;           count += seen\[need]



&#x20;       seen\[prefix\_sum] = seen.get(prefix\_sum, 0) + 1



&#x20;   return count









nums = \[1, 2, 3, 4, 5]

target = 9

print ( subarray\_sum(nums, target) )



nums = \[-1, 2, 3, -4, 5]

target = 0

print ( subarray\_sum(nums, target) )



nums = \[2, 3, 4, 5, 6]

target = 3

print ( subarray\_sum(nums, target) )



nums = \[]

target = 0

print ( subarray\_sum(nums, target) )



\--------------------------------------------------------

def remove\_duplicates(nums):

&#x20;   seen=set()

&#x20;   result=\[]

&#x20;   for num in nums:

&#x20;       if num not in seen:

&#x20;           seen.add(num)

&#x20;           result.append(num)

&#x20;       return result

&#x20;   

&#x20;           







my\_list = \[1, 2, 3, 4, 1, 2, 5, 6, 7, 3, 4, 8, 9, 5]

new\_list = remove\_duplicates(my\_list)

print(new\_list)

\--------------------------------------------------------

def has\_unique\_chars(string):

&#x20;   seen=set()

&#x20;   for ch in string:

&#x20;       if ch in seen:

&#x20;           return False

&#x20;       seen.add(ch)

&#x20;   return True

&#x20;           









print(has\_unique\_chars('abcdefg')) # should return True

print(has\_unique\_chars('hello')) # should return False

print(has\_unique\_chars('')) # should return True

print(has\_unique\_chars('0123456789')) # should return True

print(has\_unique\_chars('abacadaeaf')) # should return False



\------------------------------------------------------

def find\_pairs(arr1,arr2,target):

&#x20;   seen=set(arr2)

&#x20;   for num in arr1:

&#x20;       complement=target-num

&#x20;       if complement in seen:

&#x20;           return \[complement,num]

&#x20;       

&#x20;       seen.add(num)

&#x20;   return None









arr1 = \[1, 2, 3, 4, 5]

arr2 = \[2, 4, 6, 8, 10]

target = 7



pairs = find\_pairs(arr1, arr2, target)

print (pairs)



\---------------------------------------------------

def longest\_consecutive\_sequence(nums):

&#x20;   num\_set = set(nums)

&#x20;   longest = 0



&#x20;   for num in num\_set:

&#x20;       if num - 1 not in num\_set:

&#x20;           length = 1

&#x20;           current = num



&#x20;           while current + 1 in num\_set:

&#x20;               current += 1

&#x20;               length += 1



&#x20;           longest = max(longest, length)



&#x20;   return longest





print( longest\_consecutive\_sequence(\[100, 4, 200, 1, 3, 2]) )

========================================================

\------------------------------------------------------

1\. Graph

* Graph là cấu trúc dữ liệu dùng để lưu các đỉnh (Vertex) và các cạnh (Edge), thường biểu diễn các mối quan hệ giữa các đối tượng.
* Adjacency List lưu graph bằng Dictionary, trong đó key là một vertex và value là danh sách các vertex kết nối với nó.
* DFS và BFS là hai thuật toán dùng để duyệt hoặc tìm kiếm trên graph, không phải bản thân graph.

2\. Add Vertex :Kiểm tra vertex cần thêm đã tồn tại hay chưa, nếu chưa thì tạo vertex mới với danh sách hàng xóm rỗng, nếu đã tồn tại thì không làm gì.

3\. Add Edge :Kiểm tra cả hai vertex đều tồn tại, sau đó thêm mỗi vertex vào danh sách hàng xóm của vertex còn lại vì đây là đồ thị vô hướng.

4\. Remove Edge :Kiểm tra cả hai vertex đều tồn tại, sau đó xóa mỗi vertex khỏi danh sách hàng xóm của vertex còn lại để hủy kết nối giữa chúng.

5\. Remove Vertex :Kiểm tra vertex có tồn tại hay không, duyệt toàn bộ các hàng xóm của vertex đó và xóa vertex khỏi danh sách của từng hàng xóm, cuối cùng mới xóa chính vertex khỏi graph.

6\. DFS (Depth First Search) :Bắt đầu từ một vertex, đi sâu theo một nhánh cho đến khi không còn đường đi rồi quay lui để tiếp tục các nhánh chưa duyệt.

7\. BFS (Breadth First Search) :Bắt đầu từ một vertex, duyệt tất cả các hàng xóm cùng cấp trước rồi mới tiếp tục xuống cấp tiếp theo cho đến khi duyệt hết graph hoặc tìm thấy mục tiêu.

8\. Khi nào dung :Dùng DFS khi cần khám phá toàn bộ đường đi hoặc bài toán có backtracking, dùng BFS khi cần tìm đường đi ngắn nhất trong đồ thị không trọng số hoặc duyệt theo từng mức.

9\. Big O cần nhớ :Add Vertex: O(1), Add Edge: O(1), Remove Edge: O(V) trường hợp xấu nhất, Remove Vertex: O(V + E), DFS: O(V + E), BFS: O(V + E).

\----------------------------------------------------------

Code:

class Graph:

&#x20;   def \_\_init\_\_(self):

&#x20;       self.adj\_list = {}



&#x20;   def print\_graph(self):

&#x20;       v\_list = \[]

&#x20;       for vertex in self.adj\_list:

&#x20;           v\_list.append(vertex)

&#x20;       v\_list.sort()

&#x20;       for v in v\_list:

&#x20;           print(v, ':', self.adj\_list\[v])



&#x20;   def add\_vertex(self, vertex):

&#x20;       if vertex not in self.adj\_list.keys():

&#x20;           self.adj\_list\[vertex] = \[]

&#x20;           return True

&#x20;       return False



&#x20;   def add\_edge(self, v1, v2):

&#x20;       if v1 in self.adj\_list.keys() and v2 in self.adj\_list.keys():

&#x20;           self.adj\_list\[v1].append(v2)

&#x20;           self.adj\_list\[v2].append(v1)

&#x20;           return True

&#x20;       return False



&#x20;   def remove\_edge(self, v1, v2):

&#x20;       if v1 in self.adj\_list.keys() and v2 in self.adj\_list.keys(): 

&#x20;           try:

&#x20;               self.adj\_list\[v1].remove(v2)

&#x20;               self.adj\_list\[v2].remove(v1)

&#x20;           except ValueError:

&#x20;               pass

&#x20;           return True

&#x20;       return False



&#x20;   def remove\_vertex(self,vertex):

&#x20;       if vertex in self.adj\_list:

&#x20;           for other\_vertex in self.adj\_list\[vertex]:

&#x20;               self.adj\_list\[other\_vertex].remove(vertex)

&#x20;           del self.adj\_list\[vertex]

&#x20;           return True

&#x20;       return False

&#x20;       









my\_graph = Graph()

my\_graph.add\_vertex('A')

my\_graph.add\_vertex('B')

my\_graph.add\_vertex('C')

my\_graph.add\_vertex('D')



my\_graph.add\_edge('A','B')

my\_graph.add\_edge('A','C')

my\_graph.add\_edge('A','D')

my\_graph.add\_edge('B','D')

my\_graph.add\_edge('C','D')





print('Graph before remove\_vertex():')

my\_graph.print\_graph()





my\_graph.remove\_vertex('D')





print('\\nGraph after remove\_vertex():')

my\_graph.print\_graph()











