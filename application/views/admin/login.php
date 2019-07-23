<!DOCTYPE html>
<html style="background-image:url(&quot;none&quot;);background-size:cover;background-repeat:no-repeat;background-color:#f8f8f8;">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Masuk Admin</title>
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto">
    <link rel="stylesheet" href="assets/css/Data-Table.css">
    <link rel="stylesheet" href="assets/css/Data-Table2.css">
    <link rel="stylesheet" href="assets/css/Fixed-Navbar.css">
    <link rel="stylesheet" href="assets/css/Fixed-Navbar1.css">
    <link rel="stylesheet" href="assets/css/Fixed-Navbar2.css">
    <link rel="stylesheet" href="https://cdn.datatables.net/1.10.15/css/dataTables.bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/Login-Form-Clean.css">
    <link rel="stylesheet" href="assets/css/Pretty-Table.css">
    <link rel="stylesheet" href="assets/css/Pretty-Table1.css">
    <link rel="stylesheet" href="assets/css/styles.css">
</head>

<body style="background-color:rgba(153,153,153,0);">
    <div class="justify-content-center my-auto login-clean" style="background-color:rgba(241,247,252,0);padding:165px;">
        <form method="post" id="login" autocomplete="off" action="<?php echo base_url();?>login/verif">
            <h1 class="text-center">Masuk</h1>
            <div class="form-group">
            <?php if($this->session->flashdata('user') == true): ?>
                <div class="alert alert-danger" role="alert">
                    <p><?php echo $this->session->flashdata('user'); ?></p>
                </div>
            <?php endif;?>
            <?php if($this->session->flashdata('pass') == true): ?>
                <div class="alert alert-danger" role="alert">
                    <p><?php echo $this->session->flashdata('pass'); ?></p>
                </div>
            <?php endif;?>
                <input class="form-control" type="text" placeholder="Username" style="margin-top:12px;" name="username">
            </div>
            <div class="form-group">
                <span color="red"></span>
                <input class="form-control" type="password" name="password" placeholder="Password">
            </div>
            <div class="form-group"><button class="btn btn-primary btn-block" role="button" id="but1" style="background-color:rgb(255,255,255);color:rgb(239,64,64);" name="masuk" type="submit">Masuk</button></div>
        </form>
    </div>
    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/bootstrap/js/bootstrap.min.js"></script>
    <script src="https://cdn.datatables.net/1.10.15/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/1.10.15/js/dataTables.bootstrap.min.js"></script>
    <script src="assets/js/index.js"></script>
</body>

</html>