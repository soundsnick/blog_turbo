<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="/assets/css/main.css">
    <link rel="stylesheet" href="/common/css/fonts.css">
    <link rel="stylesheet" href="/common/css/animate.css">
    <link rel="stylesheet" href="/common/css/font-awesome.min.css">
    <link rel="stylesheet" href="/assets/css/media.css">
    <title>Блог | Ерназар Аскарович</title>
</head>
<body>
    <!-- Header -->
    <header class="header">
        <div class="container flex">
            <div class="logo--wrapper">
                <h1 class="logo">Ерназар Аскарович</h1>
            </div>
            <nav class="header__links">
                <a href="/about.php" class="header__link">Обо мне</a>
            </nav>
        </div>
    </header>
    <main class="main">
        <div class="social">
            <div class="container">
                <script type="text/javascript" src="//vk.com/js/api/openapi.js?152"></script>
                <!-- VK Widget -->
                <div id="vk_subscribe"></div>
                <script type="text/javascript">
                VK.Widgets.Subscribe("vk_subscribe", {}, 308337291);
                </script>
            </div>
        </div>
        <div class="content">
            <div class="feed">
                <div class="container">
                    <?php
                        require 'connect.php';
                        $query = $mysqli->query("SELECT * FROM blog ORDER BY id DESC");
                        while($post = $query->fetch_assoc()){
                            echo 
                            '<div class="post">
                                <h3 class="post__title" data-id="'.$post['id'].'">'.$post['title'].'</h3>
                                <pre class="post__content">'.$post['description'].'</pre>
                                <span class="post__date">'.$post['date'].'</span>
                                <div class="post__share" data-id="'.$post['id'].'"><i class="fa fa-share"></i></div>
                            </div>';
                        }
                    ?>
                </div>
            </div>
            <div class="post__view">
                <div class="post__view--back">
                    <i class="fa fa-angle-left"></i><span class="post__view--back__text">Блог</span>
                </div>
                <div class="container">
                    <h3 class="post__title big"></h3>
                    <span class="post__date"></span>
                    <pre class="post__content"></pre>
                    <div class="post__share" data-id=""><i class="fa fa-share"></i> Поделиться</div>
                </div>
            </div>
        </div>
    </main>
    <footer class="footer">
        <div class="container">
            <span class="footer__copyright">Yernazar Karabayev &copy; 2017</span>
        </div>
    </footer>
    <div class="share-modal animated">
        <div class="container">
            <h5 class="share__title">Поделиться</h5>
            <div class="share__buttons">
                <div class="share__button">
                    <!-- Put this script tag to the <head> of your page -->
                    <script type="text/javascript" src="https://vk.com/js/api/share.js?95" charset="windows-1251"></script>

                    <!-- Put this script tag to the place, where the Share button will be -->
                    <script type="text/javascript"><!--
                    document.write(VK.Share.button(false,{type: "custom", text: "<img src=\"https://vk.com/images/share_32.png\" width=\"32\" height=\"32\" />"}));
                    --></script>
                </div>
                <div class="share__button telegram">
                    <a title="Share On Telegram" href="https://telegram.me/share/url?url=<?='http://'.$_SERVER['HTTP_HOST'].$_SERVER['REQUEST_URI']?>" target="_blank">
                        <img src="/assets/img/telegram-icon.png">
                    </a>
                </div>
                <div class="share__button">
                    <a href="whatsapp://send?text=<?='http://'.$_SERVER['HTTP_HOST'].$_SERVER['REQUEST_URI']?>" data-action="share/whatsapp/share">
                        <img src="/assets/img/whatsapp-icon.png">
                    </a>
                </div>
            </div>
        </div>
    </div>
    <div class="share-shade"></div>
    <script src="/common/js/jquery-3.2.1.min.js"></script>
    <script src="/assets/js/translit.js"></script>
    <?php if(isset($_GET)):?>
    <script>
        $.ajax({
            type: "POST",
            url: "view.php",
            data: {'postId': <?=$_GET['postId']?>},
            success: function(msg){
                var post = JSON.parse(msg);
                $('.post__view .post__title').text(post['title']);
                $('.post__view .post__date').text(post['date']);
                $('.post__view .post__content').text(post['content']);
                $('.post__view .post__share').attr('data-id', post['id']);
                let postTitle = translit(post['title']);
                $('.content').addClass('active');
                function fadeFeed(){
                    $('.feed').hide();
                }
                setTimeout(fadeFeed, 500);
            }
        });
        $('.content').addClass('active');
    </script>
    <?php endif;?>
    <script>
        $('.post__title').click(function(){
            $.ajax({
                type: "POST",
                url: "view.php",
                data: {'postId': $(this).data('id')},
                success: function(msg){
                    var post = JSON.parse(msg);
                    $('.post__view .post__title').text(post['title']);
                    $('.post__view .post__date').text(post['date']);
                    $('.post__view .post__content').text(post['content']);
                    let postTitle = translit(post['title']);
                    window.history.pushState(post['title'], post['title'], '?postId='+post['id']+'#'+postTitle);
                    $('.content').addClass('active');
                    $('.post__view .post__share').attr('data-id', post['id']);
                    function fadeFeed(){
                        $('.feed').hide();
                    }
                    setTimeout(fadeFeed, 500);
                }
            });
        });
        $('.post__share').click(function(){
            $.ajax({
                type: "POST",
                url: "view.php",
                data: {'postId': $(this).data('id')},
                success: function(msg){
                    var post = JSON.parse(msg);
                    let postTitle = translit(post['title']);
                    window.history.pushState(post['title'], post['title'], '?postId='+post['id']+'#'+postTitle);
                    $('.telegram a').prop('href', 'https://telegram.me/share/url?url=http://localhost/?postId='+post['id']);
                }
            });
            
            $('.share-modal').removeClass('slideOutDown').addClass('slideInUp').show();
            $('.share-shade').fadeIn();
        });
        $('.share-modal a').click(function(){
            $('.share-modal').removeClass('slideInUp').addClass('slideOutDown');
            $('.share-shade').fadeOut();
        });
        $('.share-shade').click(function(){
            $('.share-modal').removeClass('slideInUp').addClass('slideOutDown');
            $('.share-shade').fadeOut();
        });
        $('.post__view--back').click(function(){
            $('.feed').show();
            $('.content').removeClass('active');
            window.history.pushState('Блог', 'Блог', '?');
        });
    </script>
</body>
</html>