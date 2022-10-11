# ✨ mocar_project

> <h4>차량 렌트 서비스</h4>
> Mocar

# ✨ 제작기간 &amp; 참여인원
> [ 2022/05/17 ~ 2022/06/30 ]<br>
> 팀 프로젝트(총 6명)

# ✨ 사용기술
```Back-end```
- JSP MVC2<br>
- JAVA 8<br>
- ApacheTomcat 8.5v<br>
- Oracle DB<br>
- JSON<br>
- MyBatis<br>
- JSTL.jar<br>

```Front-end```
- HTML5 & CSS3<br>
- JavaScript & JQuery<br>

# ✨ 설계

### 흐름도
![흐름도](https://user-images.githubusercontent.com/97427387/185802512-953f3327-00c3-4daf-a237-a3d89c875825.png)

### ERD
![ERD](https://user-images.githubusercontent.com/97427387/185803251-acf26ccd-c7cf-4093-9829-c69ca51fab28.png)

<br>

# ✨ 화면구성 &amp; 기능
### 1. 회원가입
![회원가입](https://user-images.githubusercontent.com/97427387/185804369-b34f2014-7c80-4bc7-9e38-ceb6909e69a9.gif)
- 회원가입을 모달창으로 만들어 따로 페이지 이동을 하지 않게 제작
- ajax를 이용하여 중복확인 버튼 클릭시 사용가능or사용불가 메세지 출력
- validation check(유효성 검사)를 통해 사용불가, 입력 누락 시 회원가입 X
<br>

### 2. 로그인
![로그인](https://user-images.githubusercontent.com/97427387/188269543-e80170ca-4043-4c3c-b6c0-1cce95310fba.gif)
- 로그인 버튼 클릭시 모달창
- DB에 저장된 아이디와 비밀번호가 맞다면 로그인 성공
- session을 이용하여 모든페이지 이동시에도 로그인 유지상태
<br>

### 3. ID찾기
![ID찾기](https://user-images.githubusercontent.com/97427387/188269760-2a96891a-995f-4382-b77b-5e2b1284eae7.gif)
- DB에 저장된 이름과 이메일이 일치한 회원의 아이디를 찾아줌
- alert창에 action에서 설정해준 메세지 값을 가지고 오기위해 requestScope이용
<br>

### 4. 회원정보수정
![회원정보수정](https://user-images.githubusercontent.com/97427387/188269864-d56f3e8e-e176-4609-b638-ae997de38385.gif)
- 로그인 후 마이페이지 버튼 클릭시 회원정보수정 페이지로 넘어감
- 아이디에 맞는 비밀번호를 입력하고 변경버튼을 클릭하면 비밀번호 변경 input가 생성,
- 원하는 비밀번호를 입력하고 확인 버튼을 클릭하면 비밀번호 변경가능
<br>

### 5. 회원탈퇴
![회원탈퇴](https://user-images.githubusercontent.com/97427387/188269872-d2d9a7dd-579a-4681-b3c6-95b5b1e4e886.gif)
- 마이페이지에 회원탈퇴 버튼 클릭시 비밀번호 입력 모달창이 뜸
- 비밀번호가 맞다면 회원탈퇴가능, 아니라면 탈퇴 불가능
<br>

### 6. 예약하기
![예약하기](https://user-images.githubusercontent.com/97427387/188269881-080a6984-4846-4beb-b8bf-417a3b9a1f01.gif)
- 비로그인 시 사용기능 제한
- 원하는 차를 클릭하면 예약페이지로 이동 날짜, 시간 선택 후 예약하기 버튼 클릭시 예약완료
- 예약날짜 중복 제한, 예약은 3번으로 제한
<br>

### 7. 게시판
![게시판](https://user-images.githubusercontent.com/97427387/188269909-cd7324ce-bba7-4cab-ba12-60ce1ea11259.gif)
- 공지사항, QnA nav 클릭시 각자 게시판으로 이동
- 글쓰기 > 제목 글쓴이 내용 입력후 확인 > 글쓰기 완료
- 수정 > 제목 글쓴이 내용 > 변경가능
- 삭제 > 글 삭제 후 목록으로 이동
<br>

### 8. 문의하기
![문의하기](https://user-images.githubusercontent.com/97427387/188269911-2d3a0994-1db8-4621-ab4c-f2b192630364.gif)
- 이름, 이메일, 내용을 입력하고 문의하기 버튼 클릭시 지정된 관리자 이메일로 발송
- 구글 스프레드 시트 이용

# ✨ 트러블슈팅
- 마이페이지 회원탈퇴 기능을 alert창으로 하기 위해 prompt를 이용 -> 실패
- 계속된 실패로 비밀번호 확인을 위한 모달창을 띄운 후 ajax을 이용하여 해결

<details>
<summary>회원탈퇴 기능</summary>
  
![image](https://user-images.githubusercontent.com/97427387/188305641-c5ce0bd8-edd6-484d-b850-ff1429f88d43.png)
  

</details>



