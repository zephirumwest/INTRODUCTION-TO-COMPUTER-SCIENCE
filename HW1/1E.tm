;가위바위보를 하는 코드입니다
0 0 _ r p1_rock
p1_rock 1 _ r p1_rock
0 1 _ r p1
p1 0 _ r p1_paper
p1 1 _ r p1_sci

p1_rock _ _ r r_p2
p1_paper _ _ r p_p2
p1_sci _ _ r s_p2

r_p2 0 _ r draw
draw 1 0 r draw
draw _ 1 * halt

r_p2 1 _ r r_p2_next
r_p2_next 1 0 r r_p2_r
r_p2_next 0 1 r r_p2_p

r_p2_r _ 1 * halt
r_p2_p _ 0 * halt


p_p2 0 _ r paper_win
paper_win 1 1 r paper_win
paper_win _ 0 * halt

p_p2 1 _ r p_p2_next
p_p2_next 0 1 r p_p2_p
p_p2_next 1 1 r p_p2_s

p_p2_p _ 0 * halt
p_p2_s _ 1 * halt

s_p2 0 _ r rock_win
rock_win 1 0 r rock_win
rock_win _ 1 r halt

s_p2 1 _ r p2_win_draw
p2_win_draw 0 1 r p2_win_draw
p2_win_draw 1 1 r p2_win_draw
p2_win_draw _ 1 * halt






