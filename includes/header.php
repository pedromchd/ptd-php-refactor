<?php
$fullname = "Não logado";
if (isset($_POST["username"])) {
  $query = $db->prepare("SELECT fullname, password FROM usuarios WHERE username = :username AND password = :password");
  $query->bindValue(":username", $_POST["username"]);
  $query->bindValue(":password", $_POST["password"]);
  $result = $query->execute();
  $usuario = $result->fetchArray(SQLITE3_ASSOC);
  // if ($usuario === false) {
  //   header("Location: index.php");
  //   exit;
  // }
  $fullname = $usuario["fullname"];
}
?>

<!DOCTYPE html>
<html lang="pt-BR">

<head>
  <meta charset="UTF-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Sistema de Administração de Planos de Trabalho Docente</title>
  <link rel="shortcut icon" href="./img/favicon.ico" type="image/x-icon" />
  <link rel="stylesheet" href="./css/styles.css" />
  <link rel="stylesheet" href="./css/font-awesome.min.css" />
  <script defer src="./js/alpine-mask.min.js"></script>
  <script defer src="./js/alpine.min.js"></script>
  <script src="./js/jquery.min.js"></script>
</head>

<body class="antialised" x-data="{'darkMode': false}" x-init="darkMode = JSON.parse(localStorage.getItem('darkMode')); $watch('darkMode', value => localStorage.setItem('darkMode', JSON.stringify(value)))">
  <div class="flex h-screen flex-col" :class="{'dark': darkMode === true}">
    <header class="grid grid-cols-3 items-center gap-3 bg-neutral-100 p-3 dark:bg-neutral-900 dark:text-neutral-50">
      <img src="./img/Logo-Campus-Rio-Grande_horizontal.png" alt="" class="w-64 dark:brightness-0 dark:invert dark:saturate-0" />
      <h1 class="text-center text-2xl font-bold uppercase">Sistema de Administração de Planos de Trabalho Docente</h1>
      <div class="relative justify-self-end" x-data="{'open': false}">
        <div class="flex items-center">
          <span class="mr-2 block w-80 truncate text-right text-xl"><?= $fullname ?></span>
          <button class="block aspect-1 w-10 shrink-0 rounded-md bg-neutral-200 shadow-md hover:bg-neutral-300 dark:bg-neutral-800 dark:hover:bg-neutral-700" :value="open" @click="open = !open">
            <i class="fa fa-sliders" aria-hidden="true"></i>
          </button>
        </div>
        <div class="absolute right-0 mt-2 w-40 rounded-md bg-neutral-200 p-1 shadow-md dark:bg-neutral-800" x-cloak x-show="open" @click.outside="open = false">
          <button class="flex w-full justify-between rounded-md p-1 hover:bg-neutral-300 dark:hover:bg-neutral-700" :value="darkMode" @click="darkMode = !darkMode">
            <span>Modo <span x-text="(darkMode) ? 'Claro' : 'Escuro'"></span></span>
            <span><i class="fa" :class="darkMode ? 'fa-sun-o' : 'fa-moon-o'" aria-hidden="true"></i></span>
          </button>
          <?php if (isset($_POST["username"])) : ?>
          <!-- <button class="flex w-full justify-between rounded-md p-1 hover:bg-neutral-300 dark:hover:bg-neutral-700">
            <span>Alterar Senha</span>
            <span><i class="fa fa-key" aria-hidden="true"></i></span>
          </button> -->
          <button class="flex w-full justify-between rounded-md p-1 hover:bg-neutral-300 dark:hover:bg-neutral-700" @click="window.open('index.php', '_self')">
            <span>Sair do Sistema</span>
            <span><i class="fa fa-sign-out" aria-hidden="true"></i></span>
          </button>
          <?php endif; ?>
        </div>
      </div>
    </header>
    <main class="grid flex-grow place-items-center bg-neutral-50 p-3 dark:bg-neutral-800 dark:text-neutral-50">
