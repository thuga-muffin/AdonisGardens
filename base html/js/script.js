// Stick Nav


	/*----------  skicky-nav  ----------*/
		
		var mainNav = $('#main-nav')

		function stick()	{
			if (document.body.scrollTop > 100 || document.documentElement.scrollTop > 100)	{
				mainNav.stop(true, true).addClass("stuck", 5000);
				console.log("I moved!")

				$('main').addClass("stuck");
			}
			else	{
				mainNav.stop(true, true).removeClass("stuck", 5000);
				$('main').removeClass("stuck")
			}
		}
// var mainNav = $("#main-nav");

// $(window).scroll(function()	{
// 	if( $(this).scrollTop() > 250)	{
// 		mainNav.addClass("scrolled");
// 	}
// 	else	{
// 		mainNav.removeClass("scrolled");
// 	}
// });

// function 

//   Button.prototype.toggle = function () {
//     var changed = true
//     var $parent = this.$element.closest('[data-toggle="buttons"]')

//     if ($parent.length) {
//       var $input = this.$element.find('input')
//       if ($input.prop('type') == 'radio') {
//         if ($input.prop('checked')) changed = false
//         $parent.find('.active').removeClass('active')
//         this.$element.addClass('active')
//       } else if ($input.prop('type') == 'checkbox') {
//         if (($input.prop('checked')) !== this.$element.hasClass('active')) changed = false
//         this.$element.toggleClass('active')
//       }
//       $input.prop('checked', this.$element.hasClass('active'))
//       if (changed) $input.trigger('change')
//     } else {
//       this.$element.attr('aria-pressed', !this.$element.hasClass('active'))
//       this.$element.toggleClass('active')
//     }
//   }

//   // 'Getting' data-attributes using getAttribute
// var plant = document.getElementById('strawberry-plant');
// var fruitCount = plant.getAttribute('data-fruit'); // fruitCount = '12'

// // 'Setting' data-attributes using setAttribute
// plant.setAttribute('data-fruit','7'); // Pesky bird