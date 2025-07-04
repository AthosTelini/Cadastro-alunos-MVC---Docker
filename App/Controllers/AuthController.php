<?php
require_once __DIR__ . '/../../Core/Controller.php';
require_once __DIR__ . '/../Models/Usuario.php';

class AuthController extends Controller
{
    public function loginForm()
    {
        require_once __DIR__ . '/../Views/auth/login.php';
    }

    
public function login()
{
    $usuario = $_POST['usuario'] ?? '';
    $senha = $_POST['senha'] ?? '';

    $user = Usuario::buscarPorUsuario($usuario);

    if ($user && hash('sha256', $senha) == $user['senha']) {
        $_SESSION['logado'] = true;
        $_SESSION['nome'] = $user['nome_completo'];
        header('Location: /alunos'); 
        exit;
    } else {
        $_SESSION['erro_login'] = "Usuário ou senha inválidos.";
        header('Location: /login');
        exit;
    }
}

    public function logout()
    {
        session_destroy();
        header('Location: /'); 
        exit;
    }
}