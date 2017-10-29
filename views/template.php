<?php
//require_once "/home/ubuntu/workspace/sirex/app/dadosForm.php";
require "environment.php";
?>
<!DOCTYPE html>
<html lang="en">
<head>

    <meta charset="utf-8">
    <meta name="description" content="Miminium Admin Template v.1">
    <meta name="author" content="Isna Nur Azis">
    <meta name="keyword" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Miminium</title>

    <!-- start: Css -->
    <link rel="stylesheet" type="text/css" href="http://localhost/mvc-sirex/asset/css/bootstrap.min.css">

    <!-- plugins -->
    <link rel="stylesheet" type="text/css" href="http://localhost/mvc-sirex/asset/css/plugins/font-awesome.min.css"/>
    <link rel="stylesheet" type="text/css" href="http://localhost/mvc-sirex/asset/css/plugins/simple-line-icons.css"/>
    <link rel="stylesheet" type="text/css" href="http://localhost/mvc-sirex/asset/css/plugins/animate.min.css"/>
    <link rel="stylesheet" type="text/css" href="http://localhost/mvc-sirex/asset/css/plugins/icheck/skins/flat/aero.css"/>
    <link href="http://localhost/mvc-sirex/asset/css/style.css" rel="stylesheet">
    <!-- end: Css -->

    <link rel="shortcut icon" href="http://localhost/mvc-sirex/asset/img/logomi.png">
    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body id="mimin" class="dashboard form-signin-wrapper">

<?= $this->loadViewInTemplate($viewName, $viewData);?>
<!-- end: Content -->
<!-- start: Javascript -->
<script src="http://localhost/mvc-sirex/asset/js/jquery.min.js"></script>
<script src="http://localhost/mvc-sirex/asset/js/jquery.ui.min.js"></script>
<script src="http://localhost/mvc-sirex/asset/js/bootstrap.min.js"></script>

<script src="http://localhost/mvc-sirex/asset/js/plugins/moment.min.js"></script>
<script src="http://localhost/mvc-sirex/asset/js/plugins/icheck.min.js"></script>

<!-- custom -->
<script src="http://localhost/mvc-sirex/asset/js/main.js"></script>
<script src="http://localhost/mvc-sirex/asset/js/script.js"></script>
<script src="http://localhost/mvc-sirex/asset/js/sweetalert.min.js"></script>

<script type="text/javascript">
    $(document).ready(function(){
        $('input').iCheck({
            checkboxClass: 'icheckbox_flat-aero',
            radioClass: 'iradio_flat-aero'
        });
    });
</script>
<!-- end: Javascript -->
</body>
</html>