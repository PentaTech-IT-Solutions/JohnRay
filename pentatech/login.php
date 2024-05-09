<?php  
@include("db_con.php");
$username = $password = "";
$usernameErr = $passwordErr =  "";

if ($_SERVER['REQUEST_METHOD'] === "POST") {
  $username = $_POST['username'];
  $password = $_POST['password'];

  $username = cleanData($username);
  $password = cleanData($password);

  $request = $pdo->prepare("SELECT username, password FROM pentatech WHERE username = ? AND password = ?");
  $request->execute([$username, $password]);

  if ($request->rowCount() > 0) {
    echo "<script>alert('Login successful!');window.location='signup.php'</script>";
  }else{
    echo "<script>alert('Incorrect Username or Password. Kindly try again!')</script>";
  }
}
 
function cleanData($data){
  $data = htmlspecialchars($data);
  $data = trim($data);
  $data = stripcslashes($data);
  return $data;
}

?>

<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="UTF-8" />
    <title>Responsive Registration Form | CodingLab</title>
    <link rel="stylesheet" href="./styles/style.css" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <style>
      .input-box {
        width: 100% !important;
      }
      .container {
        max-width: 500px;
      }
      .user-details {
        flex-direction: column;
        justify-content: center;
        align-items: center;
      }
    </style>
  </head>
  <body>
    <div class="container">
      <div class="title">Login <Inp></Inp></div>
      <div class="content">
        <form action="<?php $_SERVER['PHP_SELF'] ?>" method="POST">
          <div class="user-details">
            <div class="input-box">
              <span class="details">Username</span>
              <input type="text" name="username" placeholder="Enter your username" required value="<?php echo $username ?>" />
            </div>

            <div class="input-box">
              <span class="details">Password</span>
              <input type="password" name="password" placeholder="Enter your password" required value="<?php echo $password ?>" />
            </div>
          </div>

          <div class="button">
            <input type="submit" name="submit" value="Register" />
          </div>
          <p>Dont have an accout? <a href="signup.php">Signup</a></p>
        </form>
      </div>
    </div>
    
  </body>
</html>
