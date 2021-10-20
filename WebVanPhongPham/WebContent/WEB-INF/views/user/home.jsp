<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<base href="${pageContext.servletContext.contextPath}/">
<%@include file="/WEB-INF/views/include/header.jsp"%>
<%@include file="/WEB-INF/views/include/menu.jsp"%>
	<br>
	<!-- Poster -->
	<div class="row">
		<div class="col-sm-8">
			<div id="carouselExampleIndicators" class="carousel slide"
				data-bs-ride="carousel">
				<div class="carousel-indicators">
					<button type="button" data-bs-target="#carouselExampleIndicators"
						data-bs-slide-to="0" class="active" aria-current="true"
						aria-label="Slide 1"></button>
					<button type="button" data-bs-target="#carouselExampleIndicators"
						data-bs-slide-to="1" aria-label="Slide 2"></button>
					<button type="button" data-bs-target="#carouselExampleIndicators"
						data-bs-slide-to="2" aria-label="Slide 3"></button>
				</div>
				<div class="carousel-inner" role="listbox">
					<div class="carousel-item active">
						<img src="resources/images/poster/loi-nguyen.jpg"
							class="d-block img-poster-left" alt="Responsive image">
					</div>
					<div class="carousel-item">
						<img src="resources/images/poster/poster2.jpg"
							class="d-block img-poster-left" alt="Responsive image">
					</div>
					<div class="carousel-item">
						<img src="resources/images/poster/poster3.jpg"
							class="d-block img-poster-left" alt="Responsive image">
					</div>
				</div>
				<button class="carousel-control-prev" type="button"
					data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
					<span class="carousel-control-prev-icon" aria-hidden="true"></span>
					<span class="visually-hidden">Trước</span>
				</button>
				<button class="carousel-control-next" type="button"
					data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
					<span class="carousel-control-next-icon" aria-hidden="true"></span>
					<span class="visually-hidden">Tiếp</span>
				</button>
			</div>
		</div>
		<div class="col-sm-4">
			<img src="resources/images/poster/poster4.jpg" alt="..." class="img-poster-right">
		</div>
	</div>
	
	<!-- Danh sách sản phẩm -->
	<div class="container px-4 px-lg-5 mt-5">
		<div class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">
		                
			<!-- Sau sẽ dùng JSTL để xuất -->
			<div class="col-3 mb-5">
				<div class="card h-100">
					<img class="card-img-top" src="resources/images/products/hopbuttim.png" style="height: 250px;">
					<div class="card-body p-4">
						<div class="text-center">
							<h5 class="fw-bolder">Fancy Product</h5>
							<div>$40.00 - $80.00</div>
						</div>
					</div>
					<div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
						<div class="text-center"><a class="btn btn-outline-dark mt-auto" href="home/product.htm">Xem</a></div>
					</div>
				</div>
			</div>
			<!--  -->
                    
            <!-- Xóa từ đây  -->        
			<div class="col-3 mb-5">
				<div class="card h-100">
					<img class="card-img-top" src="resources/images/products/hopbuttim.png" style="height: 250px;">
					<div class="card-body p-4">
						<div class="text-center">
							<h5 class="fw-bolder">Fancy Product</h5>
							<div>$40.00 - $80.00</div>
						</div>
					</div>
					<div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
						<div class="text-center"><a class="btn btn-outline-dark mt-auto" href="home/product.htm">Xem</a></div>
					</div>
				</div>
			</div>
			<div class="col-3 mb-5">
				<div class="card h-100">
					<img class="card-img-top" src="resources/images/products/hopbuttim.png" style="height: 250px;">
					<div class="card-body p-4">
						<div class="text-center">
							<h5 class="fw-bolder">Fancy Product</h5>
							<div>$40.00 - $80.00</div>
						</div>
					</div>
					<div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
						<div class="text-center"><a class="btn btn-outline-dark mt-auto" href="home/product.htm">Xem</a></div>
					</div>
				</div>
			</div>
			<div class="col-3 mb-5">
				<div class="card h-100">
					<img class="card-img-top" src="resources/images/products/hopbuttim.png" style="height: 250px;">
					<div class="card-body p-4">
						<div class="text-center">
							<h5 class="fw-bolder">Fancy Product</h5>
							<div>$40.00 - $80.00</div>
						</div>
					</div>
					<div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
						<div class="text-center"><a class="btn btn-outline-dark mt-auto" href="home/product.htm">Xem</a></div>
					</div>
				</div>
			</div>
			<div class="col-3 mb-5">
				<div class="card h-100">
					<img class="card-img-top" src="resources/images/products/hopbuttim.png" style="height: 250px;">
					<div class="card-body p-4">
						<div class="text-center">
							<h5 class="fw-bolder">Fancy Product</h5>
							<div>$40.00 - $80.00</div>
						</div>
					</div>
					<div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
						<div class="text-center"><a class="btn btn-outline-dark mt-auto" href="home/product.htm">Xem</a></div>
					</div>
				</div>
			</div>
			<div class="col-3 mb-5">
				<div class="card h-100">
					<img class="card-img-top" src="resources/images/products/hopbuttim.png" style="height: 250px;">
					<div class="card-body p-4">
						<div class="text-center">
							<h5 class="fw-bolder">Fancy Product</h5>
							<div>$40.00 - $80.00</div>
						</div>
					</div>
					<div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
						<div class="text-center"><a class="btn btn-outline-dark mt-auto" href="home/product.htm">Xem</a></div>
					</div>
				</div>
			</div>
			<div class="col-3 mb-5">
				<div class="card h-100">
					<img class="card-img-top" src="resources/images/products/hopbuttim.png" style="height: 250px;">
					<div class="card-body p-4">
						<div class="text-center">
							<h5 class="fw-bolder">Fancy Product</h5>
							<div>$40.00 - $80.00</div>
						</div>
					</div>
					<div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
						<div class="text-center"><a class="btn btn-outline-dark mt-auto" href="home/product.htm">Xem</a></div>
					</div>
				</div>
			</div>
			<div class="col-3 mb-5">
				<div class="card h-100">
					<img class="card-img-top" src="resources/images/products/hopbuttim.png" style="height: 250px;">
					<div class="card-body p-4">
						<div class="text-center">
							<h5 class="fw-bolder">Fancy Product</h5>
							<div>$40.00 - $80.00</div>
						</div>
					</div>
					<div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
						<div class="text-center"><a class="btn btn-outline-dark mt-auto" href="home/product.htm">Xem</a></div>
					</div>
				</div>
			</div>
			<div class="col-3 mb-5">
				<div class="card h-100">
					<img class="card-img-top" src="resources/images/products/hopbuttim.png" style="height: 250px;">
					<div class="card-body p-4">
						<div class="text-center">
							<h5 class="fw-bolder">Fancy Product</h5>
							<div>$40.00 - $80.00</div>
						</div>
					</div>
					<div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
						<div class="text-center"><a class="btn btn-outline-dark mt-auto" href="home/product.htm">Xem</a></div>
					</div>
				</div>
			</div>
			<!-- Đến đây  -->
		</div>
	</div>

<div class="container">
	<div class="text-end" aria-label="Page navigation example">
		<ul class="pagination" style="display: -webkit-inline-box;">
			<li class="page-item"><a class="page-link text-info border border-info" href="#"><i class="fas fa-angle-double-left fs-4"></i></a></li>
			<li class="page-item"><a class="page-link text-info border border-info" href="#"><i class="fas fa-angle-left fs-4"></i></a></li>
			<li class="page-item"><a class="page-link text-info border border-info" href="#">1</a></li>
			<li class="page-item"><a class="page-link text-info border border-info" href="#">2</a></li>
			<li class="page-item"><a class="page-link text-info border border-info" href="#">3</a></li>
			<li class="page-item"><a class="page-link text-info border border-info" href="#"><i class="fas fa-angle-right fs-4"></i></a></li>
			<li class="page-item"><a class="page-link text-info border border-info" href="#"><i class="fas fa-angle-double-right fs-4"></i></a></li>
		</ul>
	</div>
</div>

<%@include file="/WEB-INF/views/include/footer.jsp"%>	
