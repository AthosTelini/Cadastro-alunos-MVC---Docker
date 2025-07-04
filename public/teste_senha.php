<?php

$senha_digitada = 'admin';
$hash_do_banco = '$2y$10$Q.G0dJ..gP./wP9N7WkLwu6OaD2xLVk4D5oMSnL8n2z4bApeo2vOq';

echo "<h1>Teste de Senha Isolado</h1>";
echo "<b>Senha para testar:</b> " . $senha_digitada . "<br>";
echo "<b>Hash para testar:</b> " . $hash_do_banco . "<br>";
echo "<hr>";

if (password_verify($senha_digitada, $hash_do_banco)) {
    echo "<h2>RESULTADO: SUCESSO! A senha corresponde ao hash.</h2>";
} else {
    echo "<h2>RESULTADO: FALHA! A senha NÃO corresponde ao hash.</h2>";
}