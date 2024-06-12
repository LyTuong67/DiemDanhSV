<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Hệ thống điểm danh sinh viên</title>
    <link rel="stylesheet" href="styles.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bodymovin/5.7.6/lottie.min.js"></script>
</head>

<body>
    <div id="background-animation"></div>
    <!--<a href="document.pdf" style="text-align: center; border-radius: 5px; background-color: #ffffff;">Document</a>-->
    <div class="container">
        <div class="option left">
            <div class="content">
                <h1>Admin</h1>
                <img src="recruiter.png" alt="Recruiter">
                <a href="./admin/index.php" class="btn">Đăng nhập với tư cách Admin</a>
                
            </div>
        </div>
        <div class="option right">
            <div class="content">
                <h1>Giảng viên</h1>
                <img src="job_seeker.png" alt="Job Seeker">
                <a href="./teacher/index.php" class="btn">Đăng nhập với tư cách giảng viên</a>
            </div>
        </div>
    </div>
    
        <!--Hiệu ứng loading -->

    <link rel="stylesheet" href="https://cdn.leanhduc.pro.vn/utilities/flying-man-loading-effect/style.css" />
    <div class='loadd'>
        <div class='body'>
            <span></span>
            <span></span>
            <span></span>
            <span></span>
            <div class='base'>
                <span></span>
                <div class='face'></div>
            </div>
        </div>
        <div class='longfazers'>
            <span></span>
            <span></span>
            <span></span>
            <span></span>
        </div>
    </div>
    
    <script src='//ajax.googleapis.com/ajax/libs/jquery/2.0.0/jquery.min.js'></script>
    <script type='text/javascript'>
    $(window).load(function() {
        setTimeout(function() {
            $(".loadd").fadeOut("slow");
        }, 1500)
    });
    </script>

    <!--Hiệu ứng loading (End) -->

    <script>
    var animationData = {
        "v": "5.5.7",
        "fr": 30,
        "ip": 0,
        "op": 150,
        "w": 500,
        "h": 500,
        "nm": "leaf_animation",
        "ddd": 0,
        "assets": [],
        "layers": [
            // ... (rest of your JSON data)
        ]
    };

    var anim = lottie.loadAnimation({
        container: document.getElementById('background-animation'),
        renderer: 'svg',
        loop: true,
        autoplay: true,
        animationData: animationData
    });
    </script>
</body>

</html>


<!-- File cũ 19/05/2024 -->
<!-- <!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Hệ thống điểm danh sinh viên</title>
    <link rel="stylesheet" href="styles.css">
</head>

<body>

    <div class="container">
        <div class="option left">
            <div class="content">
                <h1>Admin</h1>
                <img src="recruiter.png" alt="Recruiter">
                <a href="./admin/index.php" class="btn">Đăng nhập với tư cách Admin</a>
            </div>
        </div>
        <div class="option right">
            <div class="content">
                <h1>Giảng viên</h1>
                <img src="job_seeker.png" alt="Job Seeker">
                <a href="./teacher/index.php" class="btn">Đăng nhập với tư cách giảng viên</a>
            </div>
        </div>

    </div>
</body>

</html> -->