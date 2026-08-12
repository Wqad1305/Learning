Bài 1 — Subsets



class Solution:

&#x20;   def subsets(self, nums):

&#x20;       result = \[]



&#x20;       def backtrack(start, path):



&#x20;           result.append(path.copy())



&#x20;           for i in range(start, len(nums)):



&#x20;               path.append(nums\[i])



&#x20;               backtrack(i + 1, path)



&#x20;               path.pop()



&#x20;       backtrack(0, \[])



&#x20;       return result





solution = Solution()



print(solution.subsets(\[1, 2]))

\--------------------------------------------------------



* Backtracking → thêm phần tử vào path → đệ quy → pop() để quay lại → thử phần tử khác.



\--------------------------------------------------------

Bài 2 — Permutations



class Solution:

&#x20;   def permute(self, nums):

&#x20;       result = \[]



&#x20;       def backtrack(path):



&#x20;           if len(path) == len(nums):

&#x20;               result.append(path.copy())

&#x20;               return



&#x20;           for num in nums:



&#x20;               if num in path:

&#x20;                   continue



&#x20;               path.append(num)



&#x20;               backtrack(path)



&#x20;               path.pop()



&#x20;       backtrack(\[])



&#x20;       return result





solution = Solution()



print(solution.permute(\[1, 2, 3]))

\--------------------------------------------------------

* Mỗi lần chọn một số chưa có trong path → đệ quy → đủ độ dài thì lưu → pop() để quay lại.



\--------------------------------------------------------

Bài 3 — Combination Sum



class Solution:

&#x20;   def combinationSum(self, candidates, target):

&#x20;       result = \[]



&#x20;       def backtrack(start, path, total):



&#x20;           if total == target:

&#x20;               result.append(path.copy())

&#x20;               return



&#x20;           if total > target:

&#x20;               return



&#x20;           for i in range(start, len(candidates)):



&#x20;               path.append(candidates\[i])



&#x20;               backtrack(

&#x20;                   i,

&#x20;                   path,

&#x20;                   total + candidates\[i]

&#x20;               )



&#x20;               path.pop()



&#x20;       backtrack(0, \[], 0)



&#x20;       return result





solution = Solution()



print(solution.combinationSum(\[2, 3, 6, 7], 7))

\--------------------------------------------------------



* Chọn số → cộng vào total → nếu total == target thì lưu → nếu vượt target thì dừng → pop() để quay lui và thử lựa chọn khác.









































