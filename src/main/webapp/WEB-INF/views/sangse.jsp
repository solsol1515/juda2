<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>

<!-- /*
* Bootstrap 5
* Template Name: Furni
* Template Author: Untree.co
* Template URI: https://untree.co/
* License: https://creativecommons.org/licenses/by/3.0/
*/ -->
<!doctype html>
<html lang="ko">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="author" content="Untree.co">
  <link rel="shortcut icon" href="favicon.png">
  
  <meta name="description" content="" />
  <meta name="keywords" content="bootstrap, bootstrap4"/>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

      <!-- Bootstrap CSS -->
      <link href="resources/css/bootstrap.min.css" rel="stylesheet">
      <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet">
      <link href="resources/css/tiny-slider.css" rel="stylesheet">
      <link href="resources/css/style.css" rel="stylesheet">
      <title>[상 세 페 이 지]</title>
      </head>

   <body>
   
      <script src="resources/js/bootstrap.bundle.min.js"></script>
      <script src="resources/js/tiny-slider.js"></script>
      <script src="resources/js/custom.js"></script>
      <script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
      <script src="resources/js/sangse.js"></script>


<!-- 상단 메뉴탭 -->
<!-- Start Header/Navigation -->
      <nav class="custom-navbar navbar navbar navbar-expand-md navbar-dark bg-dark" arial-label="Furni navigation bar">
         <div class="container">
            <a class="navbar-brand" href="index.do"><img src="resources/images/로고1.png" alt="logo" style="width:100px; height:50px;"></a>

            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarsFurni" aria-controls="navbarsFurni" aria-expanded="false" aria-label="Toggle navigation">
               <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarsFurni">
               <ul class="custom-navbar-nav navbar-nav ms-auto mb-2 mb-md-0">
                  <li class="nav-item "><a class="nav-link" href="intro.do">우리들의 이야기(소개)</a></li>
                  <li class="active"><a class="nav-link" href="shop.do?goods_type=전체&goods_sort=like_count DESC">구경하기</a></li>
                  <li><a class="nav-link" href="community.do">우리들의 공간</a></li>
               </ul>
               <ul class="custom-navbar-cta navbar-nav mb-2 mb-md-0 ms-5">
                  <li><a class="nav-link" href="login.do">들어가기(로그인)</a></li>
                  <li><a class="nav-link" href="join.do">함께하기(회원가입)</a></li>
                  <li><a class="nav-link" href="cart.do"><img src="resources/images/cart24.png"></a></li>
                  <li><a class="nav-link" href="myPage.do"><img src="resources/images/user24.png"></a></li>
               </ul>
            </div>
         </div>
      </nav>
      <!-- End Header/Navigation -->

      <!-- [시작]상단 탭 아래 -->
         <div class="hero">
            <div class="container">
               <div class="row justify-content-between">
                     <div class="col-lg-5">
                        <div class="intro-excerpt"><h1>일단공백</h1></div>
                     </div>
                  <div class="col-lg-7"></div>
               </div>
            </div>
         </div>
      <!-- [끝] 상단 탭 아래 -->

      <!-- [시작]상세페이지 -->
      <!--  [시작] 상품 이미지  -->
      <div class="sangse-section product-section before-footer-section">
          <div class="container">
               <div class="row">
               
                  <!-- Start Column 1 -->
               <div class="col-12 col-md-4 col-lg-8 mb-12">
                  <a class="goods-item-image">
                     <img src="resources/images/${vo.img_file}" class="img-fluid product-thumbnail">
                  </a>
               </div> 
               <!-- End Column 1 -->
                  
               <!-- Start Column 2 -->
               
               <div class="col-12 col-md-4 col-lg-4 mb-12 goods-detail">
                  <a class="goods-item">
                     <h2 class="goods-title">${vo.goods_name}</h2>
                     <span class="goods-price">${vo.price}원</span>
                     <hr/>
                  </a>
                  <a>${vo.description}</a>
                  
                  <br/><br/>
                  
                  <ul>
                     <li><a>원산지 ${vo.origin}</a></li>
                     <li><a>도수 ${vo.alcohol}도</a></li>
                     <li><a>배송방법 택배</a></li>
                     <li><span>배송비 </span><a>${vo.delivery_charge}원</a></li>
                  </ul>
                  
                  <table class="table">
                     <thead>
                        <tr>
                           <th class="goods-quantity">수량</th>
                           <!-- <th></th>
                           <th></th>
                           <th></th>
                           <th></th> -->
                           <th class="goods-total">총액</th>
                        </tr>
                     </thead>
                  
                  <tr>
                          <td>
                            <div class="input-group mb-3 d-flex align-items-center quantity-container" style="max-width: 140px; inline-block;">
                                <input class="btn btn-sm btn-outline-black decrease" type="button" value="&minus;" />&nbsp;
                                <!--   style="max-width: 100px; inline-block;"  -->
                                 <input type="text" class="form-control text-center quantity-amount" value="1" aria-label="Example text with button addon" aria-describedby="button-addon1" readonly>&nbsp; 
                                 <input class="btn btn-sm btn-outline-black increase" type="button" value="&plus;" />
                            </div>
                          </td>
                          <td><span id="sum">${vo.price}원</span></td>
                        </tr>
                        <tr>
                           <td colspan="6">
                               <p class = "btn_sangse"><br/>&nbsp;&nbsp;
                                    <button class="btn btn-sangse"> 구매하기 </button>&emsp;&emsp;&emsp;
                                    <button class="btn btn-cart"> 장바구니 </button>&emsp;&emsp;&emsp;
                                    <button class="btn btn-cart"> 찜하기 </button>
                      		  </p>
                           </td>
                        </tr>
                        </table>
                  
               </div> 
               <!-- End Column 2 -->

               </div>
          </div>
      </div>
      <!-- [끝] 상품 이미지 -->
      <!-- [끝]상세페이지 -->

      <hr/>
      <br/><br/><br/><br/><br/>
      
      
<!--       <nav class="product_sangse" >    -->
<!-- [시작] 상세페이지 탭(상세 / 후기 / 질의) --> 

<!-- Start Team Section -->
      <div class="under-sangse-section">
         <div class="container">
            
            <div class="row mb-5">
               <div class="col-lg-5 mx-auto text-center">
                  <h2 class="section-title"></h2>
               </div>
            </div>

            <div class="row" style="text-align:center">

               <!-- Start Column 1 -->
               <div class="col-12 col-md-6 col-lg-4 mb-4 mb-md-0">
                  <h6 class><a href="index.do" ><span class=""><b>상세설명</b></span></a></h6>
               </div> 
               <!-- End Column 1 -->


               <!-- Start Column 2 -->
               <div class="col-12 col-md-6 col-lg-4 mb-4 mb-md-0">
                  <h6 class><a href="review.do" ><span class=""><b>상품후기</b></span></a></h6>
               </div> 
               <!-- End Column 2 -->


               <!-- Start Column 3 -->
               <div class="col-12 col-md-6 col-lg-4 mb-4 mb-md-0">
                  <h6 class><a href="question.do" ><span class=""><b>질의응답</b></span></a></h6>
               </div> 
               <!-- End Column 3 -->
            
            </div>
            
         </div>
      </div>
      <!-- End Team Section -->
      <!-- [끝] 상세페이지 탭(상세 / 후기 / 질의) -->
         
		<!-- Start Footer Section -->
		<footer class="footer-section">
			<div class="container relative">
	
				<!-- footer 정보 시작-->
				<div class="row footer-content" align="center">
					<div class="col-md-8" style="float: none; margin:0 auto;">
					   <h6><br/><br/>
					      <strong>(주)전통주 프로젝트</strong>
					   </h6>
					   <h7>사업자 번호 228-24-23029</h7>
					   <h7>대표이사 코스모 | 서울 금천구 가산디지털2로 101</h7>
					   <br />
					   <h7>전화 02-2025-8523 | 이메일 swkosmo@daum.net</h7>
					   <h7><br/>
					      <strong><b>고객센터</b></strong>
					   </h7>
					   <h7>강원도 춘천시 퇴계로 89</h7>
					   <h7>전화 1588-8282</h7>
					   <h7>1:1 문의 바로 가기</h7>
					</div>
				</div>
				<!-- footer 정보 끝 -->
	
			</div>
		</footer>
		<!-- End Footer Section -->

		<!-- Start Footer Section -->
		<footer class="footer-section">
			<div class="container relative">

				<div class="sofa-img">
					<!-- <img src="images/sofa.png" alt="Image" class="img-fluid"> -->
				</div>

				<div class="border-top copyright">
					<div class="row pt-3">
						<div class="col-lg-6">
							<p class="mb-2 text-center text-lg-start">Copyright &copy;<script>document.write(new Date().getFullYear());</script>. All Rights Reserved. &mdash; Designed with love by <a href="https://untree.co">Untree.co</a> <!-- License information: https://untree.co/license/ -->
            				</p>
						</div>

						<div class="col-lg-6 text-center text-lg-end">
							<ul class="list-unstyled d-inline-flex ms-auto">
								<li class="me-4"><a href="#">Terms &amp; Conditions</a></li>
								<li><a href="#">Privacy Policy</a></li>
							</ul>
						</div>

					</div>
				</div>

			</div>
		</footer>
		<!-- End Footer Section -->	

   </body>

</html>