;4bit마다 1의 개수가 짝수인지 확인하는 코드 입니다
0 0 _ r 1o
0 1 _ r 1x

1o 0 _ r 2o
1o 1 _ r 2x
1x 0 _ r 2x
1x 1 _ r 2o
1o _ 0 * halt
1x _ 0 * halt

2o 0 _ r 3o
2o 1 _ r 3x
2x 0 _ r 3x
2x 1 _ r 3o
2o _ 0 * halt
2x _ 0 * halt

3o 0 _ r 4o
3o 1 _ r 4x
3x 0 _ r 4x
3x 1 _ r 4o
3o _ 0 * halt
3x _ 0 * halt

4o _ 1 * halt
4x _ 0 * halt

4o 0 _ r 1o
4o 1 _ r 1x

4x * _ r end

end * _ r end
end _ 0 * halt
