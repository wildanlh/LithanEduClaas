$(document).ready(function () {
    $('.tab-container:first').show();
    $('.tab-navigation li:first').addClass('active');

    $('.tab-navigation li').click(function(event){
        index = $(this).index();
        $('.tab-navigation li').removeClass('active');
        $(this).addClass('active');
        $('.tab-container').hide();
        $('.tab-container').eq(index).show();
    });
});
