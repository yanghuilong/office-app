<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<!--[if lt IE 7 ]><html class="ie ie6" lang="en"> <![endif]-->
<!--[if IE 7 ]><html class="ie ie7" lang="en"> <![endif]-->
<!--[if IE 8 ]><html class="ie ie8" lang="en"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!--><html lang="en"> <!--<![endif]-->
    <head>
        <!-- BEGIN: basic page needs -->
        <meta name="viewport" content="width=100%; initial-scale=1; maximum-scale=1; minimum-scale=1; user-scalable=no;" />
        <title>Portfolio Page - Downloaded from KickassGFX.net</title>
        <!-- END: basic page needs -->
        
        <!-- BEGIN: css -->
        <jsp:include page="../common/style.jsp"></jsp:include>
        <!-- END: css -->
        
        <!-- BEGIN: js -->
        <jsp:include page="../common/script.jsp"></jsp:include>
        <!-- END: js -->  

    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" /></head>

<body>


<!--BEGIN: top line-->
<section id="top-line">
    <div class="container">
        <div class="row">

            <div class="span6 hidden-phone">
                <ul class="top-menu">
                    <li><a href="#">Home</a></li>
                    <li><a href="#">Sitemap</a></li>
                    <li><a href="#">Shorcodes</a></li>
                    <li><a href="#" class="last">Contact</a></li>
                </ul>
            </div>

            <div class="span6">
                <ul class="top-social">
                    <li><a href="#" class="twitter2">Twitter</a></li>
                    <li><a href="#" class="facebook">Facebook</a></li>
                    <li><a href="#" class="dribbble">Dribbble</a></li>
                    <li><a href="#" class="email last">Email</a></li>
                </ul>
            </div>

        </div>
    </div>
</section><!--END: top line-->


<!--BEGIN: header-->
<jsp:include page="../common/header.jsp"></jsp:include>
<!--END: header-->


<!--BEGIN: breadcrumbs -->
<div class="container breadcrumbs">
    <div>You are here: &nbsp&nbsp<a href="${pageContext.request.contextPath}/">Home</a> &nbsp/&nbsp Portfolio 3 column</div>
</div><!--END: breadcrumbs -->


<!--BEGIN: container-->
<section id="container">
    <div class="container">

        <!--BEGIN: side divider-->
        <div class="div-left"></div>
        <div class="div-right"></div>
        <!--END: side divider-->

        <div class="row">

                        <!--BEGIN: page-sidebar-->
            <section class="span9 alignright">
                
                <!--BEGIN: top filtrable-->
                <ul id="filtrable">
                    <li class="current all"><a href="#">All</a></li>
                    <li class="print_design"><a href="#">Print Design</a></li>
                    <li class="web_design"><a href="#">Web Design</a></li>
                    <li class="html"><a href="#">Html</a></li>
                    <li class="css"><a href="#">CSS</a></li>
                </ul><!--END: top filtrable-->

                <div class="clear"></div>
                
                <section class="da-thumbs portfolio filtrable row">

                    <!--BEGIN: latest blog col 1 -->
                    <article data-id="id-1" data-type="print_design html" class="span3">
                        <span>
                            <img src="${pageContext.request.contextPath}/res/images/example/latest1.jpg" alt="photo" />
                            <div class="pd">
                                <a href="${pageContext.request.contextPath}/res/images/example/view.jpg" class="p-view" data-rel="prettyPhoto"></a>
                                <a href="portfolio-single.html" class="p-link"></a>
                            </div>
                        </span>
                        <h3><a href="#">Caption Image</a></h3>
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut in lacus rhoncus elit egestas luctus. Nullam at lectus augue. Ut </p>
                        <a href="#" class="read-more">Read More ...</a>
                    </article><!--END: latest blog col 1 -->
                    
                    <!--BEGIN: latest blog col 2 -->
                    <article data-id="id-2" data-type="web_design" class="span3">
                        <span>
                            <img src="${pageContext.request.contextPath}/res/images/example/latest2.jpg" alt="photo" />
                            <div>
                                <a href="${pageContext.request.contextPath}/res/images/example/view.jpg" class="p-view" data-rel="prettyPhoto"></a>
                                <a href="portfolio-single.html" class="p-link"></a>
                            </div>
                        </span>
                        <h3><a href="#">Caption Image</a></h3>
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut in lacus rhoncus elit egestas luctus. Nullam at lectus augue. Ut </p>
                        <a href="#" class="read-more">Read More ...</a>
                    </article><!--END: latest blog col 2 -->
                    
                    <!--BEGIN: latest blog col 3 -->
                    <article data-id="id-3" data-type="print_design" class="span3">
                        <span>
                            <img src="${pageContext.request.contextPath}/res/images/example/latest3.jpg" alt="photo" />
                            <div>
                                <a href="${pageContext.request.contextPath}/res/images/example/view.jpg" class="p-view" data-rel="prettyPhoto"></a>
                                <a href="portfolio-single.html" class="p-link"></a>
                            </div>
                        </span>
                        <h3><a href="#">Caption Image</a></h3>
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut in lacus rhoncus elit egestas luctus. Nullam at lectus augue. Ut </p>
                        <a href="#" class="read-more">Read More ...</a>
                    </article><!--END: latest blog col 3 -->
                    
                    <!--BEGIN: latest blog col 4 -->
                    <article data-id="id-4" data-type="web_design" class="span3">
                        <span>
                            <img src="${pageContext.request.contextPath}/res/images/example/latest4.jpg" alt="photo" />
                            <div>
                                <a href="${pageContext.request.contextPath}/res/images/example/view.jpg" class="p-view" data-rel="prettyPhoto"></a>
                                <a href="portfolio-single.html" class="p-link"></a>
                            </div>
                        </span>
                        <h3><a href="#">Caption Image</a></h3>
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut in lacus rhoncus elit egestas luctus. Nullam at lectus augue. Ut </p>
                        <a href="#" class="read-more">Read More ...</a>
                    </article><!--END: latest blog col 4 -->
                    
                    <!--BEGIN: latest blog col 5 -->
                    <article data-id="id-5" data-type="print_design html" class="span3">
                        <span>
                            <img src="${pageContext.request.contextPath}/res/images/example/latest5.jpg" alt="photo" />
                            <div>
                                <a href="${pageContext.request.contextPath}/res/images/example/view.jpg" class="p-view" data-rel="prettyPhoto"></a>
                                <a href="portfolio-single.html" class="p-link"></a>
                            </div>
                        </span>
                        <h3><a href="#">Caption Image</a></h3>
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut in lacus rhoncus elit egestas luctus. Nullam at lectus augue. Ut </p>
                        <a href="#" class="read-more">Read More ...</a>
                    </article><!--END: latest blog col 5 -->
                    
                    <!--BEGIN: latest blog col 6 -->
                    <article data-id="id-6" data-type="web_design" class="span3">
                        <span>
                            <img src="${pageContext.request.contextPath}/res/images/example/latest6.jpg" alt="photo" />
                            <div>
                                <a href="${pageContext.request.contextPath}/res/images/example/view.jpg" class="p-view" data-rel="prettyPhoto"></a>
                                <a href="portfolio-single.html" class="p-link"></a>
                            </div>
                        </span>
                        <h3><a href="#">Caption Image</a></h3>
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut in lacus rhoncus elit egestas luctus. Nullam at lectus augue. Ut </p>
                        <a href="#" class="read-more">Read More ...</a>
                    </article><!--END: latest blog col 6 -->
                    
                    <!--BEGIN: latest blog col 7 -->
                    <article data-id="id-7" data-type="web_design" class="span3">
                        <span>
                            <img src="${pageContext.request.contextPath}/res/images/example/latest7.jpg" alt="photo" />
                            <div>
                                <a href="${pageContext.request.contextPath}/res/images/example/view.jpg" class="p-view" data-rel="prettyPhoto"></a>
                                <a href="portfolio-single.html" class="p-link"></a>
                            </div>
                        </span>
                        <h3><a href="#">Caption Image</a></h3>
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut in lacus rhoncus elit egestas luctus. Nullam at lectus augue. Ut </p>
                        <a href="#" class="read-more">Read More ...</a>
                    </article><!--END: latest blog col 7 -->
                    
                    <!--BEGIN: latest blog col 8 -->
                    <article data-id="id-8" data-type="css" class="span3">
                        <span>
                            <img src="${pageContext.request.contextPath}/res/images/example/latest8.jpg" alt="photo" />
                            <div>
                                <a href="${pageContext.request.contextPath}/res/images/example/view.jpg" class="p-view" data-rel="prettyPhoto"></a>
                                <a href="portfolio-single.html" class="p-link"></a>
                            </div>
                        </span>
                        <h3><a href="#">Caption Image</a></h3>
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut in lacus rhoncus elit egestas luctus. Nullam at lectus augue. Ut </p>
                        <a href="#" class="read-more">Read More ...</a>
                    </article><!--END: latest blog col 8 -->

                     <!--BEGIN: latest blog col 8 -->
                    <article data-id="id-9" data-type="css" class="span3">
                        <span>
                            <img src="${pageContext.request.contextPath}/res/images/example/latest2.jpg" alt="photo" />
                            <div>
                                <a href="${pageContext.request.contextPath}/res/images/example/view.jpg" class="p-view" data-rel="prettyPhoto"></a>
                                <a href="portfolio-single.html" class="p-link"></a>
                            </div>
                        </span>
                        <h3><a href="#">Caption Image</a></h3>
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut in lacus rhoncus elit egestas luctus. Nullam at lectus augue. Ut </p>
                        <a href="#" class="read-more">Read More ...</a>
                    </article><!--END: latest blog col 8 -->

                </section>
                                        
                <!--BEGIN: navigation-->
                <div id="navigation" class="no_top">
                    <ul>
                        <li><a href="#">Previous</a></li>
                        <li><a href="#" class="current">1</a></li>
                        <li><a href="#">2</a></li>
                        <li><a href="#">3</a></li>
                        <li><a href="#">Next</a></li>
                    </ul>
                </div><!--END: navigation-->

                
            </section><!--END: page sidebar-->
        

            <!--BEGIN: sidebar right -->
            <aside id="sidebar" class="alignleft span3">
                
                <!--BEGIN: tags -->
                <section id="tags">
                
                    <div class="title-divider">
                        <div class="divider-arrow"></div>                               
                        <h4>Tags</h4>         
                    </div>   
        
                    <a href="#">Bussines</a>
                    <a href="#">CSS</a>
                    <a href="#">Gallery</a>
                    <a href="#">Post</a>
                    <a href="#">Design</a>
                    <a href="#">Optimization</a>
                    <a href="#">Clean</a>
                    <a href="#">Premium Theme</a>
                    <a href="#">HTML</a>
                    <a href="#">Portfolio</a>
                    <a href="#">Blog</a>  
                    <a href="#">Our Mision</a>  
                           
                </section><!--END: tags -->
                
                <!--BEGIN: gallery sidebar-->
                <section>
                
                    <div class="title-divider">
                        <div class="divider-arrow"></div>                               
                        <h4>Gallery</h4>         
                    </div>
                    
                    <ul class="sidebar-flickr clearfix"></ul>

                </section><!--END: gallery sidebar-->
                
                <!--BEGIN: text widget -->
                <section id="text-widget">
                
                    <div class="title-divider">
                        <div class="divider-arrow"></div>                               
                        <h4>Text Widget</h4>         
                    </div>   
                    
                    <p>
                        Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                        Aliquam varius sapien porttitor dui lobortis ut 
                        scelerisque lacus pulvinar. Sed condimentum
                        Lorem ipsum dolor sit amet, consectetur adipiscing elit. 
                        Aliquam varius sapien porttitor dui lobortis ut scelerisque lacus pulvinar. 
                        Sed condimentum velit a nisi 
                    </p>  
                           
                </section><!--END: text widget --> 
                
                <!--BEGIN: Recent post widget -->
                <section>
                
                    <div class="title-divider">
                        <div class="divider-arrow"></div>                               
                        <h4>Recent Post Widget</h4>             
                    </div>
                    
                    <ul class="clearfix post-widget">
                        <li>
                            <a href="#"><img src="${pageContext.request.contextPath}/res/images/example/ppw-1.jpg" alt="photo" /></a>
                            <a href="#">Ut in lacus rhoncus elit egesta sluctus. Nullam at</a>
                            <p>comments 2</p>
                            <div class="clear"></div>
                        </li>
                        
                        <li>
                            <a href="#"><img src="${pageContext.request.contextPath}/res/images/example/ppw-2.jpg" alt="photo" /></a>
                            <a href="#">Ut in lacus rhoncus elit egesta sluctus. Nullam at</a>
                            <p>comments 5</p>
                            <div class="clear"></div>
                        </li>
                        
                        <li>
                            <a href="#"><img src="${pageContext.request.contextPath}/res/images/example/ppw-3.jpg" alt="photo" /></a>
                            <a href="#">Ut in lacus rhoncus elit egesta sluctus. Nullam at</a>
                            <p>comments 3</p>
                            <div class="clear"></div>
                        </li>
                    </ul>
                        
                </section><!--END: Recent post widget -->
                                
                <!--BEGIN: latest work-->
                <section>
                
                    <div class="title-divider">
                        <div class="divider-arrow"></div>                               
                        <h4>Latest Work</h4>         
                    </div>



                    <div id="latestwork-sidebar" class="carousel slide">

                        <div class="carousel-inner">
                            <div class="active item"><img src="${pageContext.request.contextPath}/res/images/example/latest3.jpg" alt="photo" /></div>
                            <div class="item"><img src="${pageContext.request.contextPath}/res/images/example/latest4.jpg" alt="photo" /></div>
                            <div class="item"><img src="${pageContext.request.contextPath}/res/images/example/latest5.jpg" alt="photo" /></div>
                        </div>

                        <a class="carousel-control left" href="#latestwork-sidebar" data-slide="prev"></a>
                        <a class="carousel-control right" href="#latestwork-sidebar" data-slide="next"></a>

                    </div>    
                    <script type="text/javascript">
                        $(document).ready(function(){
                                $('.carousel').carousel({
                                interval: 5000
                            })
                        });
                    </script>
                    
                </section><!--END: latest work-->
        
            </aside><!--END: sidebar right-->

        </div>

    </div>
</section><!-- END: container -->


<!--BEGIN: footer-->
<footer id="footer" class="container">
    <div class="row">
    
        <!--BEGIN: about us-->
        <div class="span3">
            <h3>About us</h3>
            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut in lacus rhoncus elit egestas luctus. Nullam at lectus augue.</p> 
            <p>Ut tristique consectetur elit, sed tincidunt elit iaculis in. In hac habitasse platea dictumst. Curabitur condimentum justo sed urna porttitor aliquam.</p> 
        </div><!--END: about us-->
        
        <!--BEGIN: gallery-->
        <div class="span3">
            <h3>Gallery</h3>
            <ul class="flickr clearfix"></ul>
        </div><!--END: gallery-->
        
        <!--BEGIN: contac form-->
        <div class="span3">
            <h3>Contact</h3>   
            <form id="contact" />
                <p><span>Name:</span><input type="text" name="name" value="" /></p>
                <p><span>Email:</span><input type="text" name="email" value="" /></p>
                <div class="clear"></div>
                <p><textarea cols="0" rows="0"></textarea></p>
                <p><input type="submit" name="submit" value="Submit" class="button" /></p>
            </form>
        </div><!--END: contact form-->
        
        <!--BEGIN: contact information-->
        <div class="span3">
            <h3>Contact Information</h3>
            <ul>
                <li><i class="icon-map-marker"></i>Organization - DESIGNMD</li>
                <li><i class="icon-home"></i>City - New York</li>
                <li><i class="icon-pencil"></i>Street - 144/2</li>
                <li><i class="icon-hand-right"></i>Phone - (259)224-623-952</li>
                <li><i class="icon-envelope"></i>Email - designmdnet@gmail.com</li>
            </ul>
        </div><!--END: contact information-->
    
    </div>
</footer><!--END: footer-->


<!--BEGIN: sub nav-->
<section id="footer-nav">
    <div class="container">
        <div class="row">

            <p class="span4">Downloaded from KickassGFX.net</p>

            <div class="span8 hidden-phone">
                <ul>
                    <li><a href="#">Home</a></li>
                    <li><a href="#">About</a></li>
                    <li><a href="#">Portfolio</a></li>
                    <li><a href="#">Blog</a></li>
                    <li><a href="#">Service</a></li>
                    <li><a href="#">Contact</a></li>
                </ul>
            </div>

        </div>
    </div>
</section><!--END: sub nav-->


</body>
</html>