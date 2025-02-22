<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<link rel="stylesheet" href="<c:url value='/resources/css/bootstrap.min.css'></c:url>">
<!-- <script src="<c:url value='/resources/js/jquery.min.js'></c:url>"></script>
<script src="<c:url value='/resources/js/bootstrap.bundle.min.js'></c:url>"></script>-->
 
<style>
 	.container{
 		height: auto; 
 	}
 	.container-h1{
 		margin-top: 40px; margin-bottom: 30px;
 	}
 	.container-table{
 		width: 1300px;
 	}
 	.auction{
 		 text-align: center;	
	}
	.auction-group th{text-align: center;}
</style>       
<div class="container">
	<div class="container-h1">
		<h1>실시간 경매 리스트</h1>
	</div>
	<div class="container-table">
		<table class="table table-hover">
			<thead>
				<tr class="auction-group">
					<th>경매이름</th>
					<th>경매번호</th>
					<th>경매상품</th>		
					<th>경매시작일</th>
					<th>경매종료일</th>
					<th>경매시작가</th>
					<th>즉시가</th>
					<th>배송방법</th>
					<th>입찰제한시간</th>
				</tr>
			</thead>
			<tbody class="auction">
				<c:forEach items="${auctionList}" var="auction">
					<tr>
			            <th>${auction.ac_name}</th>
						<td class="form-group">
			                <c:choose>
			                    <c:when test="${auction.ac_name == '일반경매'}">
			                        <a href="<c:url value='/general/detail/${auction.au_num}'></c:url>">${auction.au_num}</a>
			                    </c:when>
			                    <c:when test="${auction.ac_name == '실시간경매'}">
			                        <a href="<c:url value='/onairauction/detail/${auction.au_num}'></c:url>">${auction.au_num}</a>
			                    </c:when>
		                        <c:when test="${auction.ac_name == '직거래경매'}">
							        <a href="<c:url value='/reverse/detail/${auction.au_num}'></c:url>">${auction.au_num}</a>
							    </c:when>
							    <c:when test="${auction.ac_name == '인원수제한경매'}">
							        <a href="<c:url value='/reverse/detail/${auction.au_num}'></c:url>">${auction.au_num}</a>
							    </c:when>
							    <c:when test="${auction.ac_name == 'VIP경매'}">
							        <a href="<c:url value='/reverse/detail/${auction.au_num}'></c:url>">${auction.au_num}</a>
							    </c:when>
							    <c:when test="${auction.ac_name == '역경매'}">
							        <a href="<c:url value='/reverse/detail/${auction.au_num}'></c:url>">${auction.au_num}</a>
							    </c:when>
			                </c:choose>
			            </td>
			            <td>${auction.pr_name}</td>
						<td>${auction.au_start_date}</td>
						<td>${auction.au_final_date}</td>
	              		<td>${auction.au_calculation} <span>원</span> </td>
						<td>${auction.au_immediate} <span>원</span></td>
						<td>${auction.au_delivery_way}</td>
						<td>${auction.au_limit_bid_time} <span>초</span></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
	<div>
	<ul class="pagination justify-content-center">
		<c:if test="${pm.prev}">
			<li class="page-item">
				<a class="page-link" href="<c:url value='/auction/list?page=${pm.startPage-1}&search=${pm.cri.search}&type=${pm.cri.type}'></c:url>">이전</a>
			</li>
		</c:if>
		<c:forEach begin="${pm.startPage }" end="${pm.endPage }" var="i">
			<li class="page-item <c:if test="${pm.cri.page == i}"> active</c:if>">
				<a class="page-link" href="<c:url value='/auction/list?page=${i}&search=${pm.cri.search}&type=${pm.cri.type}'></c:url>">${i}</a>
			</li>
		</c:forEach>	
		<c:if test="${pm.next}">
			<li class="page-item">
				<a class="page-link" href="<c:url value='/auction/list?page=${pm.endPage+1}&search=${pm.cri.search}&type=${pm.cri.type}'></c:url>">다음</a>
			</li>
		</c:if>
	</ul>
	</div>
	<div style="text-align: center;">
		<form action="<c:url value='/auction/list'></c:url>" method="post" >
			<select name="searchCategory" id="searchCategory" style="height: 30px; border-radius: 10px;">
				<option value="1">상품명
			</select>
			<input name="searchName" id="searchName" style="border-radius: 10px;">
			<button type="submit" class="search_btn" style="border-radius: 10px;">검색</button>
		</form>
	</div>
</div>