<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- UT-NodeJS 중간고사 -->
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>UT-NodeJS 중간고사 | Register</title>

    <!-- 학생 이름과 학번 -->
    <meta name="author" content="???" />
    <meta name="description" content="???" />

    <!-- CSS 파일에 대한 link테그를 수정하십시오 -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/public/css/style.css" />
    <link
      rel="stylesheet"
      media="(max-width: 768px)"
      href="${pageContext.request.contextPath}/public/css/style.small.css"
    />
    <link href="${pageContext.request.contextPath}/public/css/bootstrap.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/public/css/confetti.css" />

    <!-- JS 파일에 대한 script테그를 수정하십시오 -->
    <script defer src="${pageContext.request.contextPath}/public/js/functions.js"></script>
    
    <script>
      function checkForm() {
        const form = document.Member;

        // 입력 필드 값 가져오기
        const id = form.id.value;
        const name = form.name.value;
        const passwd = form.passwd.value;
        const phone = form.phone1.value + form.phone2.value + form.phone3.value;
        const email = form.email.value;

        // 정규 표현식
        const idRegex = /^[a-zA-Z0-9]{4,12}$/; // 아이디: 영문/숫자 4~12자리
        const nameRegex = /^[가-힣a-zA-Z]+$/; // 이름: 한글/영문만 허용
        const passwdRegex = /^[0-9]+$/; // 비밀번호: 숫자만
        const phoneRegex = /^01[0-9]\d{3,4}\d{4}$/; // 전화번호: 010xxxxxxxx
        const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/; // 이메일 유효성 검사

        // 유효성 검사 실행
        if (!idRegex.test(id)) {
          alert("아이디는 4~12자의 영문자 또는 숫자여야 합니다.");
          return false;
        }
        if (!nameRegex.test(name)) {
          alert("이름은 한글 또는 영문만 입력해 주세요.");
          return false;
        }
        if (!passwdRegex.test(passwd)) {
          alert("비밀번호는 숫자만 입력해 주세요.");
          return false;
        }
        if (!phoneRegex.test(phone)) {
          alert("휴대전화 번호는 숫자만 입력해 주세요.");
          return false;
        }
        if (!emailRegex.test(email)) {
          alert("올바른 이메일 형식을 입력해 주세요.");
          return false;
        }

        // 모든 검사 통과 시 폼 제출
        form.submit();
      }
    </script>
  </head>

	
  <body>
    <!-- HEADER -->

    <jsp:include page="header.jsp"></jsp:include>

    <!-- MAIN 페이지 내용 -->
    <main class="">
      <div class="container col-xl-10 col-xxl-8 px-4 py-5">
        <div class="row align-items-center g-lg-5 py-3">
          <div class="col-lg-7 text-center text-lg-start mb-3">
            <figure>
              <img
                src="https://cdn.pixabay.com/photo/2015/08/07/06/28/transportation-879026_960_720.jpg"
              />
            </figure>
            <h1 class="display-4">Contact Us</h1>
            <p class="lead col-lg-10 fs-4">Get in touch to find out more.</p>
          </div>

          <div class="col-md-10 mx-auto col-lg-5 mb-5">

            <!-- action 속성에서 맞는 파일 경로 입력하세요 -->
            <form
              class="p-4 p-md-5 border rounded-3 bg-light"
              action="./thanks.jsp"
              method="POST"
            >
              <div class="form-floating mb-3">
                <input
                  type="text"
                  class="form-control"
                  id="floatingName"
                  placeholder="Name"
                />
                <label for="floatingName">Name</label>
              </div>

              <div class="form-floating mb-3">
                <input
                  type="email"
                  class="form-control"
                  id="floatingEmail"
                  name="email"
                  placeholder="name@example.com"
                  required
                />
                <label for="floatingEmail">Email address</label>
              </div>

              <div class="form-floating mb-3">
                <input
                  type="tel"
                  class="form-control"
                  id="floatingPhone"
                  name="phone"
                  placeholder="Phone"
                  required
                />
                <label for="floatingPhone">Phone</label>
              </div>

              <hr>

              <div class="mb-3">
                <label>Gender</label><br>
                <input type="radio" id="male" name="gender" value="Male" />
                <label for="male">Male</label>
                <input type="radio" id="female" name="gender" value="Female" />
                <label for="female">Female</label>
              </div>

              <div class="mb-3">
                <label>Hobbies</label><br>
                <input type="checkbox" id="cricket" name="hobbies" value="Cricket" />
                <label for="cricket">Cricket</label>
                <input type="checkbox" id="football" name="hobbies" value="Football" />
                <label for="football">Football</label>
                <input type="checkbox" id="chess" name="hobbies" value="Chess" />
                <label for="chess">Chess</label>
              </div>

              <div class="row mb-3">
                <div class="col">
                  <input type="password" class="form-control" name="password" placeholder="Password" required />
                </div>
              </div>

              <button class="w-100 btn btn-lg btn-primary ut-red" type="submit">
                Submit
              </button>
              <hr />
            </form>

          </div>
        </div>
      </div>
      <!-- 간단한 로그인 폼 -->
      <div class="container col-md-6 mt-5">
      <h3 class="mb-3">Login</h3>
      <form action="login.jsp" method="post" class="p-4 border rounded bg-light">
      <!-- 아이디 입력 -->
      <div class="form-floating mb-3">
      <input
        type="text"
        class="form-control"
        id="loginId"
        name="loginId"
        placeholder="Enter your ID"
        required
      />
      <label for="loginId">ID</label>
    </div>

    <!-- 비밀번호 입력 -->
    <div class="form-floating mb-3">
      <input
        type="password"
        class="form-control"
        id="loginPassword"
        name="loginPassword"
        placeholder="Enter your Password"
        required
      />
      <label for="loginPassword">Password</label>
   	</div>

   	 <!-- 로그인 버튼 -->
  	  <button class="btn btn-primary w-100" type="submit">Login</button>
  	</form>
	</div>
    </main>

    <!-- FOOTER -->

	<jsp:include page="footer.jsp"></jsp:include>

    <!-- Bootstrap의 JS -->
    <script src="${pageContext.request.contextPath}/public/js/bootstrap.bundle.min.js"></script>
  </body>
</html>
