<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@include file="header.jsp" %>

<section class="slider-section">
    <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
        <!-- Indicators -->
        <ol class="carousel-indicators slider-indicators">
            <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
            <li data-target="#carousel-example-generic" data-slide-to="1"></li>
            <li data-target="#carousel-example-generic" data-slide-to="2"></li>
        </ol>

        <!-- Wrapper for slides -->
        <div class="carousel-inner" role="listbox">
            <div class="item active">
                <img src="images/pubao.png" width="1648" height="600" alt="">
                <div class="carousel-caption">
                    <h2>
                        DRESSES <b>&</b> JEANS
                    </h2>
                    <h3>
                        FROM OUR FAMOUS BRANDS <span>SALE</span>
                    </h3>
                    <a href="./board/list.do">Buy Now</a>
                </div>
            </div>
            <div class="item">
                <img src="images/water.png" width="1648" height="600" alt="">

            </div>
            <div class="item">
                <img src="images/slider.jpg" width="1648" height="600" alt="">
                <div class="carousel-caption">
                    <h2>
                        DRESSES <b>&</b> JEANS
                    </h2>
                    <h3>
                        FROM OUR FAMOUS BRANDS <span>SALE</span>
                    </h3>
                    <a href="#">Buy Now</a>
                </div>
            </div>
        </div>

        <!-- Controls -->
        <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
            <span class="pe-7s-angle-left glyphicon-chevron-left" aria-hidden="true"></span>
        </a>
        <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
            <span class="pe-7s-angle-right glyphicon-chevron-right" aria-hidden="true"></span>
        </a>
    </div>
</section>


   <section class="news-section">
      <div class="container">
         <div class="row">
            <div class="col-sm-12">
               <div class="titie-section wow fadeInDown animated ">
                  <h1>Information</h1>
               </div>
            </div>
         </div>
         <div class="row">
            <div class="col-sm-4 wow fadeInDown animated" data-wow-delay="0.2s">
               <div class="blog-item">
                  <a href="#"><img src="images/blog1.jpg" width="350"
                     height="262" alt=""></a>
                  <h3>Lorem Ipsum. Proin gravida nibh vel velit auctor aliquet.
                     Aenean</h3>
                  <p>Nam nec tellus a odio tincidunt auc. Duis sed odio sit amet
                     nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum
                     velit. Nam nec tellus a odio tincidunt</p>
                  <a href="#">Read More</a>
               </div>
            </div>
            <div class="col-sm-4 wow fadeInDown animated" data-wow-delay="0.4s">
               <div class="blog-item">
                  <a href="#"><img src="images/blog2.jpg" width="350"
                     height="262" alt=""></a>
                  <h3>Lorem Ipsum. Proin gravida nibh vel velit auctor aliquet.
                     Aenean</h3>
                  <p>Nam nec tellus a odio tincidunt auc. Duis sed odio sit amet
                     nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum
                     velit. Nam nec tellus a odio tincidunt</p>
                  <a href="#">Read More</a>

               </div>
            </div>
            <div class="col-sm-4 wow fadeInDown animated" data-wow-delay="0.6s">
               <div class="blog-item">
                  <a href="#"><img src="images/blog3.jpg" width="350"
                     height="262" alt=""></a>
                  <h3>Lorem Ipsum. Proin gravida nibh vel velit auctor aliquet.
                     Aenean</h3>
                  <p>Nam nec tellus a odio tincidunt auc. Duis sed odio sit amet
                     nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum
                     velit. Nam nec tellus a odio tincidunt</p>
                  <a href="#">Read More</a>
               </div>
            </div>
         </div>
      </div>
   </section>

<%@include file="footer.jsp" %>

</body>
</html>
