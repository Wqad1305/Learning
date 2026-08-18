Bài 1 — Subsets

class Solution:

&#x20;   def subsets(self, nums):

&#x20;       result = \[]



&#x20;       def backtrack(index, current):

&#x20;           

&#x20;           if index == len(nums):

&#x20;               result.append(current.copy())

&#x20;               return



&#x20;           

&#x20;           current.append(nums\[index])

&#x20;           backtrack(index + 1, current)

&#x20;           current.pop()



&#x20;           

&#x20;           backtrack(index + 1, current)



&#x20;       backtrack(0, \[])



&#x20;       return result

\--------------------------------------------------------

* Mỗi phần tử có 2 lựa chọn chọn hoặc không chọn → đi tiếp → pop → thử lựa chọn khác.

\--------------------------------------------------------

2\. Permutations

class Solution:

&#x20;   def combinationSum(self, candidates, target):

&#x20;       result = \[]



&#x20;       def backtrack(start, current, total):

&#x20;           

&#x20;           if total == target:

&#x20;               result.append(current.copy())

&#x20;               return



&#x20;           

&#x20;           if total > target:

&#x20;               return



&#x20;           for i in range(start, len(candidates)):

&#x20;               

&#x20;               current.append(candidates\[i])



&#x20;                           

&#x20;               backtrack(i, current, total + candidates\[i])



&#x20;               current.pop()



&#x20;       backtrack(0, \[], 0)



&#x20;       return result

\-----------------------------------------------------------

* Mỗi vị trí chọn một số chưa dùng → đi tiếp → pop → thử số khác.

\-----------------------------------------------------------

3\. Combination Sum

class Solution:

&#x20;   def combinationSum(self, candidates, target):

&#x20;       result = \[]



&#x20;       def backtrack(start, current, total):

&#x20;           if total == target:

&#x20;               result.append(current.copy())

&#x20;               return



&#x20;           if total > target:

&#x20;               return



&#x20;           for i in range(start, len(candidates)):

&#x20;               current.append(candidates\[i])

&#x20;               backtrack(i, current, total + candidates\[i])

&#x20;               current.pop()



&#x20;       backtrack(0, \[], 0)



&#x20;       return result

\-----------------------------------------------------------

* Chọn một số → cộng vào tổng → nếu đủ thì lưu, nếu vượt thì dừng → pop → thử số khác.



















