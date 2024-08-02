// const next = document.querySelector('.next')
// const prev = document.querySelector('.prev')
// const comment = document.querySelector('#list-comment')
// const commentItem = document.querySelectorAll('#list-comment .item')
// var translateY = 0
// var count = commentItem.length
// console.log(next);

// next.addEventListener('click',function(event){
//     event.preventDefault()
//     if (count == 1) {
        
//         return false
//     }
//     translateY += -400
//     comment.style.transform = `translateY(${translateY}px)`
//     count--
// })
 
// prev.addEventListener('click',function(event){
//     event.preventDefault()
//     if (count == 3) {
        
//         return false
//     }
//     translateY += 400
//     comment.style.transform = `translateY(${translateY}px)`
//     count++
// })

// // js cho slide showw
// let slideIndex = 1;
//   showSlides(slideIndex);

//   function plusSlides(n) {
//     showSlides(slideIndex += n);
//   }

//   function currentSlide(n) {
//     showSlides(slideIndex = n);
//   }

//   function showSlides(n) {
//     let i;
//     const slides = document.getElementsByClassName("images");

//     if (n > slides.length) {
//       slideIndex = 1;
//     }

//     if (n < 1) {
//       slideIndex = slides.length;
//     }

//     for (i = 0; i < slides.length; i++) {
//       slides[i].style.display = "none";
//     }

//     slides[slideIndex - 1].style.display = "block";
//   }

//   // Auto-run the slideshow every 3 seconds (3000 milliseconds)
//   setInterval(function () {
//     plusSlides(1);
//   }, 3000);


