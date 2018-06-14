<?Php 
    session_start();
    unset
    (
        $_SESSION['usuarioId'],
        $_SESSION['usuarioNome'],
        $_SESSION['usuarioEmail'],
        $_SESSION['usuarioSenha']
    );

    header("Location: login.php");
?>