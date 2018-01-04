(function($){
    $.fn.slide = function(opts){
        opts = $.extend({}, $.fn.slide.opts, opts);
        this.each(function(){
            var slidewrap = $(this).find('.swiper-wrapper');
            var slide = slidewrap.find('.swiper-slide');
            var pagination=$(this).find('.swiper-pagination');
            var count = slide.length;
            var that = this;
            var index = 0;
            var time = null;
            //var width=slidewrap.width();
            //slide.width(width);
            $(this).data('opts', opts);
            function init(){
                slide.hide();
                slide.eq(index).show();
                if(pagination){
                    var bulletsStr='';
                    for(var i=0;i<count;i++){
                        if(i==index){
                            bulletsStr+='<span class="swiper-pagination-bullet swiper-pagination-bullet-active"></span>'
                        }else{
                            bulletsStr+='<span class="swiper-pagination-bullet"></span>';
                        }
                    }
                    pagination.html(bulletsStr);
                }

            }
            init();
            // next
            $(this).find('.swiper-button-next').on('click', function(){
               next();
            });
            function next(){
                var old = index;
                if(index >= count - 1){
                    index = 0;
                }else{
                    index++;
                }
                change.call(that, index, old);
            }
            // prev
            $(this).find('.swiper-button-prev').on('click', function(){
               prev();
            });
            function prev(){
                var old = index;
                if(index <= 0){
                    index = count - 1;
                }else{
                    index--;
                }
                change.call(that, index, old);
            }
            $(this).find('.swiper-pagination .swiper-pagination-bullet').each(function(cindex){
                $(this).on('click.swiper-pagination', function(){
                    change.call(that, cindex, index);
                    index = cindex;
                });
            });

            // focus clean auto play
            $(this).on('mouseover', function(){
                if(opts.autoPlay){
                    clearInterval(time);
                }
                //$(this).find('.swiper-slide').css({opacity:0.6});
            });
            //  leave
            $(this).on('mouseleave', function(){
                if(opts.autoPlay){
                    startAtuoPlay();
                }
                //$(this).find('.swiper-slide').css({opacity:0.15});
            });
            startAtuoPlay();
            // auto play
            function startAtuoPlay(){
                if(opts.autoPlay){
                    time  = setInterval(function(){
                        var old = index;
                        if(index >= count - 1){
                            index = 0;
                        }else{
                            index++;
                        }
                        change.call(that, index, old);
                    }, 3000);
                }
            }
        });
    };
    function change(show, hide){
        var opts = $(this).data('opts');
        var hideElem=$(this).find('.swiper-wrapper .swiper-slide').eq(hide);
        hideElem.stop().animate({opacity:0},function(){hideElem.hide()});
        $(this).find('.swiper-wrapper .swiper-slide').eq(show).show().css({opacity:0}).stop().animate({opacity:1});

        $(this).find('.swiper-pagination .swiper-pagination-bullet').removeClass('swiper-pagination-bullet-active');
        $(this).find('.swiper-pagination .swiper-pagination-bullet').eq(show).addClass('swiper-pagination-bullet-active');
        opts.onSlideChangeEnd(show);
    }
    $.fn.slide.opts = {
        autoPlay: false,
        onSlideChangeEnd: function (index) {

        }
    };
})(jQuery);