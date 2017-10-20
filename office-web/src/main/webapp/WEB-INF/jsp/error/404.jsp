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
    <jsp:include page="../common/script.jsp"></jsp:include>
    <!-- BEGIN: js -->

    <!-- END: js -->
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <style>
        h2.error-404{
            font: 200px/200px 'OpenSansLightRegular';
            text-shadow: 0 4px 0 #DCDCDC;
        }
    </style>
</head>
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
<jsp:include page="../common/header.jsp" flush="true"></jsp:include>
<!--END: header-->

<!--BEGIN: container-->
<section id="container">
    <div class="container">

        <!--BEGIN: welcome-->
        <section id="welcome">
            <div class="sixteen columns">
                <h2 class="centered error-404">404</h2>
                <p class="centered p-20" style="margin-bottom: 25px;">Error 404! Sorry, the page you requested was not found.</p>
                <p><a href="${pageContext.request.contextPath}/" class="button">Back to Home</a></p>
            </div>
        </section>
        <!--END: welcome-->
        <hr />
        <!--BEGIN: latest work-->

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