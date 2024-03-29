<?php

session_name( 'sdc-thescreen' );
session_start();

$logout = false;
$login_fail = false;

if ( isset( $_GET['logout'] ) ) {
  $logout = true;
}

require_once( 'functions.inc.php' );

if ( isset( $_POST['password'] ) && !empty( $_POST['password'] ) ) {

  // We're using http://www.openwall.com/phpass/
  require_once( 'passwordhash.php' );
  $hashing = new PasswordHash( $CFG['phpass']['base2log'], false );

  if ( $hashing->CheckPassword( $_POST['password'], get_config( 'admin_password' ) ) ) {

    // They got the right password, let them in.

    $_SESSION['loggedin'] = true;
    // TODO: change this to 'logintime'?
    $_SESSION['loggedin.time'] = time();

    header( 'location: manage.php' );
    exit(0);

  } else {
    $login_fail = true;
  }

}

?><!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Log In</title>

    <link href="bower_components/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="bower_components/bootstrap/dist/css/bootstrap-theme.min.css" rel="stylesheet">
    <link href="css/signin.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>

  <body>

    <div class="container">

      <form class="form-signin" action="login.php" method="post">
<?php

if ( $logout ) {
  echo '      <div class="alert alert-success" role="alert">You have logged out.</div>';
}
if ( $login_fail ) {
  echo '      <div class="alert alert-danger" role="alert">Login failure.</div>';
}

?>
        <h2 class="form-signin-heading">Please sign in</h2>
        <!-- label for="inputEmail" class="sr-only">Email address</label>
        <input type="email" id="inputEmail" class="form-control" placeholder="Email address" required autofocus -->
        <label for="password" class="sr-only">Password</label>
        <input type="password" id="password" name="password" class="form-control" placeholder="Password" required>
        <button class="btn btn-lg btn-info btn-block" type="submit">Sign in</button>
      </form>

    </div> <!-- /container -->

    <script type="text/javascript" src="bower_components/jquery/dist/jquery.min.js"></script>
    <script type="text/javascript" src="bower_components/bootstrap/dist/js/bootstrap.min.js"></script>

    <script type="text/javascript">
    $(document).ready(function(){
      $( "#password" ).focus();
    });
    </script>

  </body>
</html>
