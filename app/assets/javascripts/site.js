$(document).on('turbolinks:load', function(){
    $('.rating').raty( { path: '/assets', scoreName: 'comment[rating]' });