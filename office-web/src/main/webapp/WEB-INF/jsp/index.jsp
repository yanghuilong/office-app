<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<!--[if lt IE 7 ]><html class="ie ie6" lang="en"> <![endif]-->
<!--[if IE 7 ]><html class="ie ie7" lang="en"> <![endif]-->
<!--[if IE 8 ]><html class="ie ie8" lang="en"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!--><html lang="en"> <!--<![endif]-->
<head>
    <!-- BEGIN: basic page needs -->
    <meta name="viewport" content="width=100%; initial-scale=1; maximum-scale=1; minimum-scale=1; user-scalable=no;" />
    <title>Home Page - Downloaded from KickassGFX.net</title>
    <!-- END: basic page needs -->
    <!-- BEGIN: css -->
    <link href="${pageContext.request.contextPath }/res/css/bootstrap.css" type="text/css" rel="stylesheet" />
    <link href="${pageContext.request.contextPath }/res/css/style.css" type="text/css" rel="stylesheet" />
    <link href="${pageContext.request.contextPath }/res/css/bootstrap-responsive.css" type="text/css" rel="stylesheet" />
    <link href="${pageContext.request.contextPath }/res/css/responsive.css" type="text/css" rel="stylesheet" />
    <link href="${pageContext.request.contextPath }/res/css/prettyPhoto.css" type="text/css" rel="stylesheet" />
    <link href="https://cdn.bootcss.com/superfish/1.7.9/css/superfish.min.css" rel="stylesheet">
    <!-- END: css -->
    <jsp:include page="common/script.jsp"></jsp:include>
    <!-- BEGIN: js -->

    <!-- END: js -->
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" /></head>
<body>


<!--BEGIN: top line-->
<section id="top-line">
    <div class="container">
        <div class="row">

            <div class="span6 hidden-phone">
                <ul class="top-menu">
                    <li><a href="./index.html">Home</a></li>
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
<jsp:include page="common/header.jsp" flush="true"></jsp:include>
<!--END: header-->
<div class="inner_copyright">Collect from <a href="http://www.cssmoban.com/" target="_blank" title="网页模板">网页模板</a></div>

<!--BEGIN: slider-->
<section class="container">
    <div id="homeslider" class="flexslider">
        <ul class="slides">

            <li>
                <img src="${pageContext.request.contextPath }/res/images/example/portfolio-single2.jpg" alt="photo" />
                <h3><a href="#">Great design and the best ideas. Dolor sit amet, consectetur adipiscing elit.Aliquam varius sapien porttitor</a></h3>
            </li>

            <li>
                <img src="${pageContext.request.contextPath }/res/images/example/portfolio-single2.jpg" alt="photo" />
                <h3><a href="#">Great design and the best ideas Dolor sit amet, consectetur adipiscing elit. Aliquam varius sapien porttitor dui lobortis</a></h3>
            </li>

            <li>
                <img src="${pageContext.request.contextPath }/res/images/example/portfolio-single2.jpg" alt="photo" />
                <h3><a href="#">Great design and the best ideas. Dolor sit amet, consectetur adipiscing elit</a></h3>
            </li>

        </ul>
    </div>
</section>
<!--END: slider-->


<!--BEGIN: container-->
<section id="container">
    <div class="container">

        <!--BEGIN: welcome-->
        <section id="welcome">
            <h1>Welcome to the designmd-02 template demo</h1>
            <p>
                We are a team of <span class="color2">DesignMD</span> who put maximum effort to satisfy your requirements in terms of <span class="color2">WB Desigin</span>.
                A particular attention we pay to the graphic style, caracterized by fonts, letters, symbols, Allowing us to create an atractive and readable design for your eyes.
            </p>
        </section><!--END: welcome-->

        <hr />

        <!--BEGIN: latest work-->
        <div class="row">
            <div class="span3">
                <!--BEGIN: divider arrow-->
                <div class="title-divider">
                    <div class="divider-arrow"></div>
                    <h3>Latest Work</h3>
                </div><!--END: divider arrow-->

                <p class="hidden-phone">
                    Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                    Ut in lacus rhoncus elit egestas luctus. Nullam at lectus augue.
                    Ut tristique consectetur elit, sed tincidunt elit iaculis in.
                </p>
                <a href="#" class="btn hidden-phone">Read More</a>
            </div>
            <div class="span9">
                <div id="latest-work" class="carousel btleft">
                    <div class="carousel-wrapper">
                        <ul class="da-thumbs">

                            <li>
                                <img src="${pageContext.request.contextPath }/res/images/example/latest1.jpg" />
                                <div>
                                    <a href="${pageContext.request.contextPath }/res/images/example/view.jpg" class="p-view" data-rel="prettyPhoto"></a>
                                    <a href="portfolio-single.html" class="p-link"></a>
                                </div>
                            </li>

                            <li>
                                <img src="${pageContext.request.contextPath }/res/images/example/latest2.jpg" />
                                <div>
                                    <a href="${pageContext.request.contextPath }/res/images/example/view.jpg" class="p-view" data-rel="prettyPhoto"></a>
                                    <a href="portfolio-single.html" class="p-link"></a>
                                </div>
                            </li>

                            <li>
                                <img src="${pageContext.request.contextPath }/res/images/example/latest3.jpg" />
                                <div>
                                    <a href="${pageContext.request.contextPath }/res/images/example/view.jpg" class="p-view" data-rel="prettyPhoto"></a>
                                    <a href="portfolio-single.html" class="p-link"></a>
                                </div>
                            </li>

                            <li>
                                <img src="${pageContext.request.contextPath }/res/images/example/latest4.jpg" />
                                <div>
                                    <a href="${pageContext.request.contextPath }/res/images/example/view.jpg" class="p-view" data-rel="prettyPhoto"></a>
                                    <a href="portfolio-single.html" class="p-link"></a>
                                </div>
                            </li>

                            <li>
                                <img src="${pageContext.request.contextPath }/res/images/example/latest5.jpg" />
                                <div>
                                    <a href="${pageContext.request.contextPath }/res/images/example/view.jpg" class="p-view" data-rel="prettyPhoto"></a>
                                    <a href="portfolio-single.html" class="p-link"></a>
                                </div>
                            </li>

                            <li>
                                <img src="${pageContext.request.contextPath }/res/images/example/latest6.jpg" />
                                <div>
                                    <a href="${pageContext.request.contextPath }/res/images/example/view.jpg" class="p-view" data-rel="prettyPhoto"></a>
                                    <a href="portfolio-single.html" class="p-link"></a>
                                </div>
                            </li>

                        </ul>
                    </div>
                </div>

                <script type="text/javascript">
                    $(document).ready(function(){
                        $('#latest-work').elastislide({
                            imageW  : 270,
                            margin  : 30
                        });
                    });
                </script>
            </div>

        </div><!--BEGIN: latest work-->

        <div class="row latest-blog">

            <div class="title-divider span12">
                <div class="divider-arrow"></div>
                <h3>From The Blog</h3>
            </div>

            <!--BEGIN: latest blog col 1 -->
            <article class="span3">
                <img src="${pageContext.request.contextPath }/res/images/example/latest8.jpg" alt="photo" />
                <p class="l-meta"><span>By Designmd  / On 05. 06. 2012 / In <a href="#">News</a></span></p>
                <h4 class="title"><a href="#">Ut in lacus rhoncus elit egestas</a></h4>
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut in lacus rhoncus elit egestas luctus. Nullam at lectus augue. Ut tristique </p>
                <a href="#" class="read-more">Read More...</a>
            </article><!--END: latest blog col 1 -->

            <!--BEGIN: latest blog col 2 -->
            <article class="span3">
                <img src="${pageContext.request.contextPath }/res/images/example/latest7.jpg" alt="photo" />
                <p class="l-meta"><span>By Designmd  / On 05. 06. 2012 / In <a href="#">News</a></span></p>
                <h4 class="title"><a href="#">Ut in lacus rhoncus elit egestas</a></h4>
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut in lacus rhoncus elit egestas luctus. Nullam at lectus augue. Ut tristique </p>
                <a href="#" class="read-more">Read More...</a>
            </article><!--END: latest blog col 2 -->

            <!--BEGIN: latest blog col 3 -->
            <article class="span3">
                <img src="${pageContext.request.contextPath }/res/images/example/latest6.jpg" alt="photo" />
                <p class="l-meta"><span>By Designmd  / On 05. 06. 2012 / In <a href="#">News</a></span></p>
                <h4 class="title"><a href="#">Ut in lacus rhoncus elit egestas</a></h4>
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut in lacus rhoncus elit egestas luctus. Nullam at lectus augue. Ut tristique </p>
                <a href="#" class="read-more">Read More...</a>
            </article><!--END: latest blog col 3 -->

            <!--BEGIN: latest blog col 4 -->
            <article class="span3">
                <img src="${pageContext.request.contextPath }/res/images/example/latest5.jpg" alt="photo" />
                <p class="l-meta"><span>By Designmd  / On 05. 06. 2012 / In <a href="#">News</a></span></p>
                <h4 class="title"><a href="#">Ut in lacus rhoncus elit egestas</a></h4>
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut in lacus rhoncus elit egestas luctus. Nullam at lectus augue. Ut tristique </p>
                <a href="#" class="read-more">Read More...</a>
            </article><!--END: latest blog col 4 -->

        </div>

        <div class="row">

            <!--BEGIN: latest news-->
            <div class="span3 latest-news">

                <!--BEGIN: divider arrow-->
                <div class="title-divider">
                    <div class="divider-arrow"></div>
                    <h3>Newsletters</h3>
                </div><!--END: divider arrow-->

                <!--BEGIN: article 1-->
                <article class="divider-blok">
                    <div class="news-data"><span>30</span>may</div>
                    <h4 class="title"><a href="#">Nullam at lectus augue</a></h4>
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut in lacus rhoncus elit egestas luctus. Nullam at lectus augue. Ut tristique </p>
                    <a href="#" class="read-more">Read More...</a>
                </article><!--END: article 1 -->

                <!--BEGIN: article 2 -->
                <article>
                    <div class="news-data"><span>28</span>may</div>
                    <h4 class="title"><a href="#">Nullam at lectus augue</a></h4>
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut in lacus rhoncus elit egestas luctus. Nullam at lectus augue. Ut tristique </p>
                    <a href="#" class="read-more">Read More ...</a>
                </article><!--END: article 2 -->

            </div><!--END: latest news-->

            <!--BEGIN: accordion-->
            <div class="span3">

                <div class="title-divider">
                    <div class="divider-arrow"></div>
                    <h3>Services</h3>
                </div>

                <div id="accordion" class="accordion">

                    <div class="accordion-group">
                        <div class="accordion-heading">
                            <a href="#collapse1" data-parent="#accordion" data-toggle="collapse" class="accordion-toggle">Web Deisgn<span></span></a>
                        </div>
                        <div class="accordion-body in collapse" id="collapse1" style="height: auto;">
                            <div class="accordion-inner">
                                <p>Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch.</p>
                                <a href="#" class="read-more">Read more</a>
                            </div>
                        </div>
                    </div>

                    <div class="accordion-group">
                        <div class="accordion-heading">
                            <a href="#collapse2" data-parent="#accordion" data-toggle="collapse" class="accordion-toggle">Print Design<span></span>
                            </a>
                        </div>
                        <div class="accordion-body collapse" id="collapse2" style="height: 0px;">
                            <div class="accordion-inner">
                                <p>Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch.</p>
                                <a href="#" class="read-more">Read more</a>
                            </div>
                        </div>
                    </div>

                    <div class="accordion-group">
                        <div class="accordion-heading">
                            <a href="#collapse3" data-parent="#accordion" data-toggle="collapse" class="accordion-toggle">Optimization<span></span></a>
                        </div>
                        <div class="accordion-body collapse" id="collapse3" style="height: 0px;">
                            <div class="accordion-inner">
                                <p>Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch.</p>
                                <a href="#" class="read-more">Read more</a>
                            </div>
                        </div>
                    </div>

                    <div class="accordion-group">
                        <div class="accordion-heading">
                            <a href="#collapse4" data-parent="#accordion" data-toggle="collapse" class="accordion-toggle">Photo Service<span></span></a>
                        </div>
                        <div class="accordion-body collapse" id="collapse4" style="height: 0px;">
                            <div class="accordion-inner">
                                <p>Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch.</p>
                                <a href="#" class="read-more">Read more</a>
                            </div>
                        </div>
                    </div>

                </div>

                <script type="text/javascript">
                    $(document).ready(function(){
                        $('#accordion').collapse({
                            toggle: false
                        });
                    });
                </script>

            </div><!--END: accordion-->

            <!--BEGIN: twitter-->
            <div class="span3">

                <div class="title-divider">
                    <div class="divider-arrow"></div>
                    <h3>Twitter</h3>
                </div>

                <div class="twitter"></div>
                <script type="text/javascript">
                    /*$(document).ready(function(){
                        //TWITTER
                        $(".twitter").tweet({
                            join_text: "auto",
                            username: "envato",
                            avatar_size: 40,
                            count: 3,
                            auto_join_text_default: "we said,",
                            auto_join_text_ed: "we",
                            auto_join_text_ing: "we were",
                            auto_join_text_reply: "we replied",
                            auto_join_text_url: "we were checking out",
                            loading_text: "loading tweets..."
                        });
                    });*/
                </script>

            </div><!--END: twitter-->


            <div class="span3">
                <!--BEGIN: divider arrow-->
                <div class="title-divider">
                    <div class="divider-arrow">
                        <a href="#" class="arrow-prev"></a>
                        <a href="#" class="arrow-next"></a>
                    </div>
                    <h3>Testimoniasl</h3>
                </div><!--END: divider arrow-->

                <!--BEGIN: testimonal-->
                <div id="testimonial" class="carousel bttop">
                    <div class="carousel-wrapper">
                        <ul class="testimonials">

                            <li>
                                <p>
                                    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut in lacus rhoncus elit egestas luctus.
                                    Nullam at lectus augue. Ut tristique consectetur elit, sed tincidunt elit iaculis in. In hac habitasse platea dictumst.
                                    Curabitur condimentum justo sed urna porttitor aliquam.
                                    Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                                </p>
                                <img src="${pageContext.request.contextPath }/res/images/example/testimonials.jpg" alt="images" />
                                <h4>Jhon Doe <small>Compani Inc.</small></h4>

                            </li>

                            <li>
                                <p>
                                    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut in lacus rhoncus elit egestas luctus.
                                    Nullam at lectus augue. Ut tristique consectetur elit, sed tincidunt elit iaculis in. In hac habitasse platea dictumst.
                                    Curabitur condimentum justo sed urna porttitor aliquam.
                                </p>
                                <img src="${pageContext.request.contextPath }/res/images/example/testimonials.jpg" alt="images" />
                                <h4>Jhon Doe <small>Compani Inc.</small></h4>

                            </li>

                            <li>
                                <p>
                                    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut in lacus rhoncus elit egestas luctus.
                                    Nullam at lectus augue. Ut tristique consectetur elit, sed tincidunt elit iaculis in. In hac habitasse platea dictumst.
                                    Curabitur condimentum justo sed urna porttitor aliquam.
                                    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut in lacus rhoncus elit egestas luctus.
                                </p>
                                <img src="${pageContext.request.contextPath }/res/images/example/testimonials.jpg" alt="images" />
                                <h4>Jhon Doe <small>Compani Inc.</small></h4>

                            </li>

                        </ul>
                    </div>
                </div><!--END: testimonal -->

                <script type="text/javascript">
                    $(document).ready(function(){
                        $('#testimonial').elastislide({
                            imageW  : 670,
                            margin  : 30
                        });
                    });
                </script>
            </div>

        </div>

        <div class="row last">
            <!--BEGIN: divider arrow-->
            <div class="title-divider span12">
                <div class="divider-arrow"></div>
                <h3>Client</h3>
            </div><!--END: divider arrow-->

            <!--BEGIN: client-->
            <ul id="client">
                <li class="span2"><a href="#"><img src="${pageContext.request.contextPath }/res/images/client/1.png" alt="photo" /></a></li>
                <li class="span2"><a href="#"><img src="${pageContext.request.contextPath }/res/images/client/2.png" alt="photo" /></a></li>
                <li class="span2"><a href="#"><img src="${pageContext.request.contextPath }/res/images/client/3.png" alt="photo" /></a></li>
                <li class="span2"><a href="#"><img src="${pageContext.request.contextPath }/res/images/client/4.png" alt="photo" /></a></li>
                <li class="span2"><a href="#"><img src="${pageContext.request.contextPath }/res/images/client/5.png" alt="photo" /></a></li>
                <li class="span2"><a href="#"><img src="${pageContext.request.contextPath }/res/images/client/6.png" alt="photo" /></a></li>
            </ul><!--END: client-->
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

            <p class="span4">Collect from <a href="http://www.cssmoban.com/" title="网站模板" target="_blank">网站模板</a></p>

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