<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<link rel="stylesheet" href="<c:url value='/resources/css/bootstrap.min.css'></c:url>">
<script src="<c:url value='/resources/js/jquery.min.js'></c:url>"></script>
<script src="<c:url value='/resources/js/bootstrap.bundle.min.js'></c:url>"></script> 
   
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.css" />
<script src="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.js"></script>

<style>
  	.swiper {
	  width: 100%; height: 200px;
	}
	.swiper-slide {
	  text-align: center; font-size: 18px; background: #fff; display: flex;
	  justify-content: center; align-items: center;
	}
	.swiper-slide2 img {
	  display: block; width: 100%; height: 100%; object-fit: cover;
	}
	
	.container{
		height: 1400px;
	}
	.container-box{
 		width: 800px; margin-left: auto; margin-right: auto; margin-top: 40px !important;
 	}
	.container-h1{
 		margin-top: 40px; margin-bottom: 30px;
 	}
 	.find-btn{
 		 text-align: center;
 	}
 	

</style>

<div class="container">
	<div class="container-box">	
		<div class="container-h1">
			<h1>물품 상세 페이지</h1>
		</div>	
		<div class="form-group">
			<label>상품명</label>
			<div class="form-control">${product.pr_name}</div>
		</div>
		<div class="form-group">
			<label>상품소개</label>
			<div class="form-control">${product.pr_intro }</div>
		</div>
		<div class="form-group">
			<label>상품상태</label>
			<div class="form-control">${product.pr_condition}</div>
		</div>
		<div class="form-group">
			<label>상세정보</label>
			<div class="form-control">${product.pr_detail }</div>
		</div>
		<div class="form-group">
			<label>상품위치</label>
			<div class="form-control">${product.pr_location }</div>
		</div>
		<div class="form-group">
			<label>반품수용여부</label>
			<div class="form-control">${product.pr_refund_ok}</div>
		</div>
		<div class="form-group">
			<label>반품수용기간</label>
			<div class="form-control">${product.pr_refund_date }</div>
		</div>
		<div class="form-group">
			<label>환불가능조건</label>
			<div class="form-control">${product.pr_refund_reason }</div>
		</div>
		<div class="form-group">
			<label>상품시작가격</label>
			<div class="form-control">${product.pr_start_price}</div>
		</div>
		<div class="form-group">
			<label>원산지</label>
			<div class="form-control">${product.pr_origin}</div>
		</div>
		<div class="form-group">
			<label>물품크기</label>
			<div class="form-control">${product.pr_size }</div>
		</div>
		<div id="image">
			<div class="form-group mt-3">
				<label>이미지</label>
				<div class="swiper mySwiper">
				  <div class="swiper-wrapper">
				  	<c:forEach items="${files}" var="file">
				  		<div class="swiper-slide">
							<img src="<c:url value="/download${file.fi_save_name}"></c:url>" height="200" width="auto">
						</div>	
					</c:forEach>
				  </div>
				  <div class="swiper-button-next"></div>
				  <div class="swiper-button-prev"></div>
				  <div class="swiper-pagination"></div>
				</div>
			</div>
		</div>
		<c:if test="${user.me_id == store.st_me_id && store.st_num == product.pr_st_num}">
		<div class="find-btn">
			<a href="<c:url value='/product/update/${product.pr_code}'></c:url>">
				<button class="btn btn-outline-primary btn-update">수정</button>
			</a>
			<a href="<c:url value='/product/delete/${product.pr_code}'></c:url>">
				<button class="btn btn-outline-primary btn-delete">삭제</button>
			</a>
		</div>
		</c:if>
	</div>
</div>

<script>
var swiper = new Swiper(".mySwiper", {
	  navigation: {
	    nextEl: ".swiper-button-next",
	    prevEl: ".swiper-button-prev"
	  },
	  pagination: {
	      el: ".swiper-pagination",
	  },
	  loop: true,
	});
</script>