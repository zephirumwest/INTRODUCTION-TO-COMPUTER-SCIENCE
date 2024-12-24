2022148083 김영서 컴퓨터과학입문 HW2 README file

1A
INCR = λn.λf.λx.f (n f x)
n으로 입력을 받은뒤, f를 한번 적용해 1을 더해준다

1B
PLUSTWO = λn.λf.λx.f (n f (f x))
n으로 입력을 받은뒤, f를 두번 적용해 2를 더해준다

1C
MULTIPLY = λm.λn.m ((λm.λn.m INCR n) n) 0
n을 m번 반복하는 코드이다. 초기값을 0으로 설정한뒤 n을 m번 반복해서 더해주는 형식으로 m X n 을 계산한다.

2A
EVEN = λn.n (λx.NOT(x)) TRUE
n으로 입력을 받은뒤, n의 f의 개수에 따라 NOT을 적용한다.
즉 0은 그냥 TRUE 1은 NOT TRUE 2는 NOT NOT TRUE이런식으로 과정이 전개된다. 
결과적으로 f 개수가 짝수인 짝수 숫자들은 TRUE, 홀수는 FALSE가 나오게 된다.

2B
XOR = λa.λb.a (NOT b) b
XOR은 입력이 서로 다르면 TRUE, 같으면 FALSE를 반환한다. 
a (NOT b) b를 사용하면 a가 TRUE일때 NOT B, a가 FALSE일때 b를 반환하게 된다. 
이때 INPUT이 2개밖에 없기 때문에 나올 수 있는 case가 4가지이고, 위와같은 코드를 사용하면 4가지 case에서 전부 올바른 값들을 반환해줄 수 있다.

3A
INVERT = λp.PAIR (NOT (FIRST p)) (NOT (SECOND p))
INVERT는 PAIR를 입력받아 반대로 출력하는 함수이다.
FIRST와 SECOND로 PAIR의 값을 뽑아낸뒤, NOT을 통해 반대로 뒤집어주고, 다시 PAIR로 묶어서 마무리했다.

3B
BITWISEXOR = λp1.λp2.PAIR (XOR (FIRST p1) (SECOND p1)) (XOR (FIRST p2) (SECOND p2))
BITWISEXOR는 PAIR을 2쌍 입력받은뒤 각각 XOR함수를 실행해 TRUE,FALSE의 PAIR을 출력하는 함수이다. 
P1,P2에서 FIRST, SECOND를 각각 뽑아낸뒤, P1끼리 XOR, P2끼리 XOR을 돌려 출력값을 뽑아내고, 마지막에 PAIR로 묶어주는 과정을 실행하였다.

3C
RIGHTMOST = λchain. 
  IF (IS_TRUE (SECOND chain)) 1 
    (IF (IS_TRUE (SECOND (FIRST chain))) 2 
      (IF (IS_TRUE (SECOND (FIRST (FIRST chain)))) 3 
        (IF (IS_TRUE (FIRST (FIRST (FIRST chain)))) 4 
          0)))
chain으로 입력을 받은뒤, SECOND chain으로 w를 가져오고,
SECOND (FIRST chain)으로 z를 가져오고,
SECOND (FIRST (FIRST chain))으로 y를 가져오고,
FIRST (FIRST (FIRST chain))으로 x를 가져왔다.
그후 IS_TRUE를 통해 TRUE인지 확인한뒤, TRUE이면 오른쪽에 있는 1,2,3,4를 통해 OUTPUT을 확정지었다.

4A
HEAD =
  λlist.
    (list
      (λhead.λtail.FALSE)
      TRUE
    )
    (λf.f)
    (list (λhead.λtail.head))

LIST를 확인해 CONS라면 FALSE, NIL이면 TRUE를 반환한다. 그후, 아래에서 NIL이면 λf.f를 반환하고, 아니면 첫번째 값을 반환한다.







