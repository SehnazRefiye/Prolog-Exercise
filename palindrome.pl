%Empty list is palindrome.
palindrome([]).
%The one-element list is palindrome.
palindrome([_]).
%This list is a palindrome list if the first and last element are the same and the middle of the list (without first and last element) is palindrome
palindrome([First|Last]) :- append(Middle, [First], Last), palindrome(Middle).

