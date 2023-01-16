// 1.на странице есть элементы с CSS классом userinput и атрибутом maingroup=1. Написать код на JQuery, который прикрепит обработчик onclick на все элементы. Функция обработки пустая.
// Решение:
$('.userinput').click(function(){});

// 2. найти все элементы на странице, которые вложены в элемент с id Block1 и имеют класс bottomzone.
// Решение:
var elements = $('#Block1.bottomzone');

// 3.Показать элемент с Id PopupDIV, который плавно меняет ширину до ширины окна браузера.
// Начальная ширина 100px.
// Решение:
<html>
<head>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
  <script>
     w = $(window).width();
     h = $(window).height();
     
     $(document).ready(function(){
	  $(".in").click(function(){
	    $("#PopupDIV").fadeIn(
        function(){
            $(this).animate({width:w,height:h}, 1500);
          });
	  });
	});
    
  </script>
</head>
<body>
	<button class = "in">Показать</button>
    <div id="PopupDIV"></div>
</body>
<style>
#PopupDIV {
  width:100px;
  height: 100px;
  border: 1px solid red;
  display: none;
  }
</style>
</html>