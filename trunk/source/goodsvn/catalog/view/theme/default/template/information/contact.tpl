<?php echo $header; ?>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/default/goodsvn/css/contact.css" media="screen" />
<!--[if IE 7]>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/default/goodsvn/css/fix_ie7.css" />
<![endif]-->
<!--[if IE 8]>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/default/goodsvn/css/fix_ie7.css" />
<![endif]-->
<script type="text/javascript" src="catalog/view/theme/default/goodsvn/js/contact/jquery.min.js"></script>
<script type="text/javascript" src="catalog/view/theme/default/goodsvn/js/contact/s3Slider.js"></script>
<script type="text/javascript">
    $(document).ready(function() {
        $('#slider').s3Slider({
            timeOut: 3000
        });
        
        $('#contact').addClass('menu_item_active');
    });
</script>
<div id="content">

<div class="main">
	<div id="slider" class="contact_left">
            <ul id="sliderContent">
                <li class="sliderImage">
                    <a href=""><img src="image/goodsvn/contact/contact1.jpg" alt="1" /></a>
                    <span class="top"><strong>Ben Thanh Market</strong></span>
                </li>
                <li style='display: none;' class="sliderImage">
                    <a href=""><img src="image/goodsvn/contact/contact2.jpg" alt="2" /></a>
                    <span class="top"><strong>Notre Dame Cathedral</strong></span>
                </li>
                <div class="clear sliderImage"></div>
            </ul>
    </div>
    
    <div class="contact_right">
    	<img src="image/goodsvn/contact/title_our_location.png" />
    	<div class="location_text">
        	<p style="font-size:15.5px;">Ho Chi Minh City is one of the top economic, cultural, social centers of Vietnam. 
            A temperate climate, favorable geographical location and plentiful skilled labor have 
            created a dynamic pace of life for the city. Besides the modern style, HCMC still 
            maintain its specific marks based on Asian tradition such as friendly, hospitable 
            local people and historical architectures such as BenThanh market, Independence Palace, 
            Notre Dame Cathedral... Economically, HCMC is the most dynamic economy market with the
             highest economic growth, export-import turnover and FDI (1) (Foreign Direct Investment).
              Goodsvn JSC (2) is companies locate on HCMC (3), we hope to bring a professional and 
              active working manner and to provide the best and the most qualified products to our customers.</p>
        </div>
    </div>
    <div class="clear_both"></div><div class="line"></div>
    
    
    <div class="contact_left">
    	<div><img src="image/goodsvn/contact/title_primary_contact.png" /></div>
        <div class="company_info">
                <b>Goodsvn Trading Service Import Export Joint Stock Company</b> <br />
                Adress: 23/13 Nguyen Van Lac Street, 21th Ward<br />
                Binh Thanh Dist., HCM City, VietNam<br />
                Telephone: (+848) 3840 6667	Fax:  (+848) 3840 6677<br />
                Hotline: (+84) 983 977 377<br />
				License business/Tax Code<a href="http://tncnonline.com.vn/Pages/TracuuMST.aspx"> 0311681344</a><br />
				Account Payment: <br/>
				Swift Code:<br/>
                Website: www.goodsvn.com<br />
                E-mail: sales@goodsvn.com
        </div>
    	<div class="clear_both"></div>
    </div>
    <div class="contact_right">
    	<img src="image/goodsvn/contact/titile_google_map.png" />
      <iframe width="425" height="200" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="http://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=23%2F13+Nguy%E1%BB%85n+V%C4%83n+L%E1%BA%A1c&amp;aq=&amp;sll=10.794815,106.70984&amp;sspn=0.011656,0.019805&amp;ie=UTF8&amp;hq=&amp;hnear=13+Nguy%E1%BB%85n+V%C4%83n+L%E1%BA%A1c,+21,+B%C3%ACnh+Th%E1%BA%A1nh+district,+Ho+Chi+Minh+City,+Vietnam&amp;ll=10.794815,106.70984&amp;spn=0.005828,0.009903&amp;t=m&amp;z=14&amp;output=embed"></iframe><br /><small><a href="http://maps.google.com/maps?f=q&amp;source=embed&amp;hl=en&amp;geocode=&amp;q=23%2F13+Nguy%E1%BB%85n+V%C4%83n+L%E1%BA%A1c&amp;aq=&amp;sll=10.794815,106.70984&amp;sspn=0.011656,0.019805&amp;ie=UTF8&amp;hq=&amp;hnear=13+Nguy%E1%BB%85n+V%C4%83n+L%E1%BA%A1c,+21,+B%C3%ACnh+Th%E1%BA%A1nh+district,+Ho+Chi+Minh+City,+Vietnam&amp;ll=10.794815,106.70984&amp;spn=0.005828,0.009903&amp;t=m&amp;z=14" style="color:#0000FF;text-align:left">23/13 Nguyen Van Lac Street, 21th Ward, Binh Thanh Dist., HCM </a></small>
    </div>
    <div class="clear_both"></div><div class="line"></div>
    
    <div class="contact_left">
    	<div class="introduction">
            <p style="font-size:15px;">If you have any requirements or questions regarding our products, you can contact 
            us via the online system directly as Skype, Yahoo, and Email or call our hotline... We will 
            provide all information you need comprehensively and accurately. With conscientious and 
            friendly staff, our desire is to bring the best satisfaction to our customers so please 
            do not hesitate to contact us.</p> 
        </div>
    </div>
    <div class="contact_right">
    	<img src="image/goodsvn/contact/title_contact_us.png" />
        <p>Please fill the form below to give us your idea</p>
        <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="contact">
        	<div class="title_form">Name</div><input name="name" type="text" value="<?php echo $name;?>" style="width:250px;" />
            <?php if ($error_name) { ?>
                                <span class="error"><?php echo $error_name; ?></span>
                          <?php } ?>
            <div class="clear_both10"></div>
            <div class="title_form">Email</div><input name="email" type="text" value="<?php echo $email;?>" style="width:250px;" />
             <?php if ($error_email) { ?>
                                <span class="error"><?php echo $error_email; ?></span>
                                <?php } ?>
            <div class="clear_both10"></div>
            <div class="title_form">Message</div><textarea name="enquiry" rows="3" style="width:300px;"><?php echo $enquiry;?></textarea>
             <?php if ($error_enquiry) { ?>
                               <br/> <span class="error"><?php echo $error_enquiry; ?></span>
                                <?php } ?><br/>
            <div class="clear_both10"></div>
            <div class="title_form"></div><input onclick="$('#contact').submit();" type="submit" value="" class="btn_submit"/>
        </form>
    </div>
    <div class="clear_both"></div>
</div>
</div>
<?php echo $footer; ?>