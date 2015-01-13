// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require bootstrap
//= require chosen.jquery.min
//= require_tree .

// включаем chosen
function activeChosenSelect(){
    $('.js-chosen').chosen({
        no_results_text: "Ничего не найдено",
        placeholder_text_multiple: "Выберите",
        placeholder_text_single: "Выберите"
    });
}
$(document).ready(activeChosenSelect);
$(document).on('page:load',activeChosenSelect);
