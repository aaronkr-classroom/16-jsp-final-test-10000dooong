<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Page</title>
    <link href="${pageContext.request.contextPath}/public/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <div class="container mt-5">
        <div class="row justify-content-center">
            <div class="col-md-6">
                <!-- 로그인 폼 -->
                <h3 class="mb-4 text-center">로그인</h3>
                <form name="loginForm" action="j_security_check" method="post">
                    <!-- 사용자명 입력 -->
                    <div class="form-floating mb-3">
                        <input type="text" class="form-control" id="username" name="j_username" placeholder="Username" required>
                        <label for="username">사용자명</label>
                    </div>
                    <!-- 비밀번호 입력 -->
                    <div class="form-floating mb-3">
                        <input type="password" class="form-control" id="password" name="j_password" placeholder="Password" required>
                        <label for="password">비밀번호</label>
                    </div>
                    <!-- 로그인 버튼 -->
                    <button type="submit" class="btn btn-primary w-100">로그인</button>
                </form>
                <div class="mt-3 text-center">
                    <p>아이디: <strong>admin</strong>, 비밀번호: <strong>1234</strong></p>
                </div>
            </div>
        </div>
    </div>
    <!-- Bootstrap JS 추가 -->
    <script src="${pageContext.request.contextPath}/public/js/bootstrap.bundle.min.js"></script>
</body>
</html>