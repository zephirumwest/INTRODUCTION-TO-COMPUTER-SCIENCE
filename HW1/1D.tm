;1을 0, 0을 1로 바꾼뒤 맨앞 1들을 지우는 코드입니다.
0 0 1 r 0
0 1 0 r 0

0 _ _ l left
left * * l left

left _ _ r check
check 1 _ r check
check 0 0 * end

end * * r end
end _ _ r halt