def swap(my\_list, index1, index2):

&#x20;   temp = my\_list\[index1]

&#x20;   my\_list\[index1] = my\_list\[index2]

&#x20;   my\_list\[index2] = temp





def pivot(my\_list,pivot\_index,end\_index):

&#x20;   swap\_index=pivot\_index

&#x20;   for i in range (pivot\_index+1,end\_index+1 ):

&#x20;       if my\_list\[i]<my\_list\[pivot\_index]:

&#x20;           swap\_index+=1

&#x20;           swap(my\_list,swap\_index,i)

&#x20;           

&#x20;   swap(my\_list,pivot\_index,swap\_index)

&#x20;   return swap\_index

&#x20;   

&#x20;       



my\_list = \[4,6,1,7,3,2,5]



print('List before running pivot():')

print(my\_list)



returned\_pivot\_index = pivot(my\_list, 0, 6)



print('\\nList after running pivot():')

print(my\_list)



print('\\nReturned Swap Index:')

print(returned\_pivot\_index)

\--------------------------------------------------------

def swap(my\_list, index1, index2):

&#x20;   temp = my\_list\[index1]

&#x20;   my\_list\[index1] = my\_list\[index2]

&#x20;   my\_list\[index2] = temp





def pivot(my\_list, pivot\_index, end\_index):

&#x20;   swap\_index = pivot\_index



&#x20;   for i in range(pivot\_index+1, end\_index+1):

&#x20;       if my\_list\[i] < my\_list\[pivot\_index]:

&#x20;           swap\_index += 1

&#x20;           swap(my\_list, swap\_index, i)

&#x20;   swap(my\_list, pivot\_index, swap\_index)

&#x20;   return swap\_index





def quick\_sort\_helper(my\_list, left, right):

&#x20;   if left < right:

&#x20;       pivot\_index = pivot(my\_list, left, right)



&#x20;       quick\_sort\_helper(my\_list, left, pivot\_index - 1)

&#x20;       quick\_sort\_helper(my\_list, pivot\_index + 1, right)



&#x20;   return my\_list

&#x20;   



def quick\_sort(my\_list):

&#x20;   quick\_sort\_helper(my\_list, 0, len(my\_list)-1)



my\_list = \[4,6,1,7,3,2,5]



quick\_sort(my\_list)



print(my\_list)

\--------------------------------------------------------

1. pivot(): Chọn pivot, đưa các phần tử nhỏ hơn sang trái, lớn hơn sang phải, rồi đặt pivot vào đúng vị trí và trả về pivot\_index.
2. quick\_sort\_helper(): Nếu left < right, gọi pivot() để chia mảng, sau đó đệ quy sắp xếp mảng bên trái và bên phải của pivot.
3. quick\_sort(): Gọi quick\_sort\_helper(my\_list, 0, len(my\_list)-1) để bắt đầu sắp xếp toàn bộ mảng.

========================================================



def remove\_element(nums,val):

&#x20;   result=\[]

&#x20;   for num in nums:

&#x20;       if num!=val:

&#x20;           result.append(num)

&#x20;   return result

&#x20;   

def find\_max\_min(my\_list):

&#x20;   max\_num=my\_list\[0]

&#x20;   min\_num=my\_list\[0]

&#x20;   

&#x20;   for num in my\_list:

&#x20;       if num>max\_num:

&#x20;           max\_num=num

&#x20;       if num<min\_num:

&#x20;           min\_num=num

&#x20;   return (max\_num,min\_num)



print( find\_max\_min(\[5, 3, 8, 1, 6, 9]) )



def find\_longest\_string(string\_list):

&#x20;   longest=string\_list\[0]

&#x20;   for string in string\_list:

&#x20;       if len(string)>len (longest):

&#x20;           longest=string 

&#x20;   return longest

C1:

def remove\_duplicates(my\_list):

&#x20;   result = \[]



&#x20;   for num in my\_list:

&#x20;       if num not in result:

&#x20;           result.append(num)



&#x20;   return result

C2:

def remove\_duplicates(my\_list):

&#x20;   if len(my\_list)==0:

&#x20;       return None

&#x20;   write=1 

&#x20;   for read in range(1,len(my\_list)):

&#x20;       if my\_list\[read]!=my\_list\[read-1]:

&#x20;           my\_list\[write]=my\_list\[read]

&#x20;           write+=1

&#x20;   return write

def max\_profit(prices):

&#x20;   min\_price=prices\[0]

&#x20;   max\_profit=0

&#x20;   for price in prices:

&#x20;       if price<min\_price:

&#x20;           min\_price=price

&#x20;           

&#x20;       profit=price-min\_price

&#x20;   if profit>max\_profit:

&#x20;       max\_profit=profit

&#x20;   return max\_profit

def rotate(my\_list,k):

&#x20;   for num in range(k):

&#x20;       last=my\_list.pop()

&#x20;       my\_list.insert(0,last)

&#x20;   return my\_list

&#x20;   



nums = \[1, 2, 3, 4, 5, 6, 7]

k = 3

rotate(nums, k)

print("Rotated array:", nums)

def max\_subarray(nums):

&#x20;   current\_sum=nums\[0]

&#x20;   max\_sum=nums\[0]

&#x20;   for i in range(1,len(nums)):

&#x20;       current\_sum=max(nums\[i],current\_sum+nums\[i])

&#x20;       if current\_sum>max\_sum:

&#x20;           max\_sum=current\_sum

&#x20;   return max\_sum



=========================================================

1. Overlapping Subproblems: Có bài toán con bị lặp ⇒ nên lưu kết quả.
2. Optimal Substructure: Bài toán lớn = ghép lời giải tối ưu của bài toán nhỏ.
3. Fibonacci: Ví dụ điển hình của DP, đệ quy bị tính lặp.
4. Memoization: Đệ quy + cache để tránh tính lại.
5. Bottom-Up: Vòng lặp + mảng, tính từ nhỏ đến lớn, không dùng đệ quy.







