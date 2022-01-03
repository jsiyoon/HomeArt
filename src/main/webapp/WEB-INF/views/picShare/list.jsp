<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="b" tagdir="/WEB-INF/tags"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/icon/css/all.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js" integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<link href="${pageContext.request.contextPath}/resources/css/homeart.css" rel="stylesheet" type="text/css">

<title>List</title>

<style>
body {
	background-color: #222;
}

</style>

<script>
	
</script>

</head>
<body>

		<b:navBar></b:navBar>		
		
<div class="contents-wrap">
		<!-- Section-->
		<section class="py-5">
				<div class="container px-4 px-lg-5 mt-5">
						<div class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">
								<div class="col mb-5">
										<div class="card h-100">
												<!-- modify button -->
												<button type="button" class="badge position-absolute btn btn-light" style="top: 0.5rem; right: 0.5rem">modify</button>
												<!-- 
												<div class="badge bg-dark text-white position-absolute" style="top: 0.5rem; right: 0.5rem">Hot</div>
												 -->
												<!-- Product image-->
												<img class="card-img-top" src="https://dummyimage.com/450x300/dee2e6/6c757d.jpg" alt="...">
												<!-- Product details-->
												<div class="card-body p-4">
														<div class="text-center">

																<!-- 작품 이름-->
																<h5 class="fw-bolder">1 art</h5>
																<!-- text-warning이 글씨의 색깔을 나타냄. -->
																<!-- 작가 이름 -->
																<div class="d-flex justify-content-center small text-warning mb-2">
																		<div class="bi-star-fill">artistName</div>
																</div>
																<!-- Product price-->
																<span class="text-muted text-decoration-line-through">Like View</span>
														</div>
												</div>
												<!-- Product actions-->
												<div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
														<div class="text-center">
																<a class="btn btn-outline-dark mt-auto" href="#">Go art</a>
														</div>
												</div>
										</div>
								</div>
								<div class="col mb-5">
										<div class="card h-100">

												<!-- Product image-->
												<img class="card-img-top" src="https://dummyimage.com/450x300/dee2e6/6c757d.jpg" alt="...">
												<!-- Product details-->
												<div class="card-body p-4">
														<div class="text-center">
																<!-- Product name-->
																<h5 class="fw-bolder">2 art</h5>
																<!-- Product reviews 간단 작품 설명 혹은 작가 이름을 넣는 걸로 하자.-->
																<div class="d-flex justify-content-center small mb-2">
																		<div class="bi-star-fill">haha</div>
																		<div class="bi-star-fill">haha</div>
																		<div class="bi-star-fill">haha</div>
																		<div class="bi-star-fill">haha</div>
																		<div class="bi-star-fill">haha</div>
																</div>
																<!-- Product price-->
																<span class="text-muted text-decoration-line-through">Like View</span>

														</div>
												</div>
												<!-- Product actions-->
												<div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
														<div class="text-center">
																<a class="btn btn-outline-dark mt-auto" href="#">Go art</a>
														</div>
												</div>
										</div>
								</div>
								<div class="col mb-5">
										<div class="card h-100">

												<!-- Product image-->
												<img class="card-img-top" src="https://dummyimage.com/450x300/dee2e6/6c757d.jpg" alt="...">
												<!-- Product details-->
												<div class="card-body p-4">
														<div class="text-center">
																<!-- Product name-->
																<h5 class="fw-bolder">3 art</h5>
																<!-- 작가 이름 -->
																<div class="d-flex justify-content-center small text-warning mb-2">
																		<div class="bi-star-fill">artistName</div>
																</div>
																<!-- Product price-->
																<span class="text-muted text-decoration-line-through">Like View</span>

														</div>
												</div>
												<!-- Product actions-->
												<div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
														<div class="text-center">
																<a class="btn btn-outline-dark mt-auto" href="#">Go art</a>
														</div>
												</div>
										</div>
								</div>
								<div class="col mb-5">
										<div class="card h-100">
												<!-- Product image-->
												<img class="card-img-top" src="https://dummyimage.com/450x300/dee2e6/6c757d.jpg" alt="...">
												<!-- Product details-->
												<div class="card-body p-4">
														<div class="text-center">
																<!-- Product name-->
																<h5 class="fw-bolder">4 art</h5>
																<!-- 작가 이름 -->
																<div class="d-flex justify-content-center small text-warning mb-2">
																		<div class="bi-star-fill">artistName</div>
																</div>
																<!-- Product price-->
																<span class="text-muted text-decoration-line-through">Like View</span>
														</div>
												</div>
												<!-- Product actions-->
												<div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
														<div class="text-center">
																<a class="btn btn-outline-dark mt-auto" href="#">Go art</a>
														</div>
												</div>
										</div>
								</div>
								<div class="col mb-5">
										<div class="card h-100">

												<!-- Product image-->
												<img class="card-img-top" src="https://dummyimage.com/450x300/dee2e6/6c757d.jpg" alt="...">
												<!-- Product details-->
												<div class="card-body p-4">
														<div class="text-center">
																<!-- Product name-->
																<h5 class="fw-bolder">5 art</h5>
																<!-- 작가 이름 -->
																<div class="d-flex justify-content-center small text-warning mb-2">
																		<div class="bi-star-fill">artistName</div>
																</div>
																<!-- Product price-->
																<span class="text-muted text-decoration-line-through">Like View</span>

														</div>
												</div>
												<!-- Product actions-->
												<div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
														<div class="text-center">
																<a class="btn btn-outline-dark mt-auto" href="#">Go art</a>
														</div>
												</div>
										</div>
								</div>
								<div class="col mb-5">
										<div class="card h-100">
												<!-- Product image-->
												<img class="card-img-top" src="https://dummyimage.com/450x300/dee2e6/6c757d.jpg" alt="...">
												<!-- Product details-->
												<div class="card-body p-4">
														<div class="text-center">
																<!-- Product name-->
																<h5 class="fw-bolder">6 art</h5>
																<!-- 작가 이름 -->
																<div class="d-flex justify-content-center small text-warning mb-2">
																		<div class="bi-star-fill">artistName</div>
																</div>
																<!-- Product price-->
																Like View
														</div>
												</div>
												<!-- Product actions-->
												<div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
														<div class="text-center">
																<a class="btn btn-outline-dark mt-auto" href="#">Go art</a>
														</div>
												</div>
										</div>
								</div>
								<div class="col mb-5">
										<div class="card h-100">
												<!-- Hot badge-->
												<div class="badge bg-dark text-white position-absolute" style="top: 0.5rem; right: 0.5rem">Hot</div>
												<!-- Product image-->
												<img class="card-img-top" src="https://dummyimage.com/450x300/dee2e6/6c757d.jpg" alt="...">
												<!-- Product details-->
												<div class="card-body p-4">
														<div class="text-center">
																<!-- Product name-->
																<h5 class="fw-bolder">7 art</h5>
																<!-- 작가 이름 -->
																<div class="d-flex justify-content-center small text-warning mb-2">
																		<div class="bi-star-fill">artistName</div>
																</div>
																<!-- Product reviews-->
																<div class="d-flex justify-content-center small text-warning mb-2">
																		<div class="bi-star-fill"></div>
																		<div class="bi-star-fill"></div>
																		<div class="bi-star-fill"></div>
																		<div class="bi-star-fill"></div>
																		<div class="bi-star-fill"></div>
																</div>
																<!-- 약간 회색으로 나타남 text-muted이기 때문에 주의 필요 나중에 바꾸던지 -->
																<span class="text-muted text-decoration-line-through">Like View</span>

														</div>
												</div>
												<!-- Product actions-->
												<div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
														<div class="text-center">
																<a class="btn btn-outline-dark mt-auto" href="#">Go art</a>
														</div>
												</div>
										</div>
								</div>
								<div class="col mb-5">
										<div class="card h-100">
												<!-- Product image-->
												<img class="card-img-top" src="https://dummyimage.com/450x300/dee2e6/6c757d.jpg" alt="...">
												<!-- Product details-->
												<div class="card-body p-4">
														<div class="text-center">
																<!-- Product name-->
																<h5 class="fw-bolder">8 art</h5>
																<!-- 작가 이름 -->
																<div class="d-flex justify-content-center small text-warning mb-2">
																		<div class="bi-star-fill">artistName</div>
																</div>
																<!-- Product reviews-->
																<div class="d-flex justify-content-center small text-warning mb-2">
																		<div class="bi-star-fill"></div>
																		<div class="bi-star-fill"></div>
																		<div class="bi-star-fill"></div>
																		<div class="bi-star-fill"></div>
																		<div class="bi-star-fill"></div>
																</div>
																<!-- Product price-->
																Like View
														</div>
												</div>
												<!-- Product actions-->
												<div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
														<div class="text-center">
																<a class="btn btn-outline-dark mt-auto" href="#">Go art</a>
														</div>
												</div>
										</div>
								</div>
						</div>
				</div>
		</section>

		<b:bottomInfo></b:bottomInfo>
</div>




<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>

</body>

</html>




























