<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<base href="${pageContext.servletContext.contextPath}/">
<%@include file="/WEB-INF/views/include/header.jsp"%>
<%@include file="/WEB-INF/views/include/menu.jsp"%>
	<br>
<div class="container">
<div class="row">
	<div class="col-3">
		<%@include file="/WEB-INF/views/include/menuProfile.jsp"%>
	</div>
		
	<div class="col-8 mbg-azure p-3">
		<div class="h4 text-uppercase">Đổi mật khẩu</div>
		<hr>
		<form action="user/changePassword.htm" method="post">
			<div class="row my-3">
	    		<label class="col-sm-4 col-form-label text-end">Mật khẩu hiện tại: </label>
	    		<div class="col-sm-8">
	      			<input type="text" class="form-control">
	    		</div>
  			</div>
			
			<div class="row mb-3">
	    		<label class="col-sm-4 col-form-label text-end">Mật khẩu mới: </label>
	    		<div class="col-sm-8">
	      			<input type="text" class="form-control">
	    		</div>
  			</div>
  			
  			<!-- Cái này bắt chước shopee, nhưng nếu phức tạp thì bỏ cũng được :v -->
  			<div class="row mb-3">
	    		<label class="col-sm-4 col-form-label text-end">Xác nhận mật khẩu: </label>
	    		<div class="col-sm-8">
	      			<input type="text" class="form-control">
	    		</div>
  			</div>
			
			<div class="text-center">
				<button type="submit" class="btn btn-info text-white">Cập nhật</button>
			</div>
		</form>
		
	</div>
		
</div>
</div>

<%@include file="/WEB-INF/views/include/footer.jsp"%>