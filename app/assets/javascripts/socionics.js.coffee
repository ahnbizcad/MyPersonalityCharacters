socionicsReady = ->
  clearOrder = ->
    $('#neti').removeClass();
    $('#sife').removeClass();
    $('#fesi').removeClass();
    $('#tine').removeClass();

    $('#feni').removeClass();
    $('#tise').removeClass();
    $('#seti').removeClass();
    $('#nife').removeClass();

    $('#sefi').removeClass();
    $('#nite').removeClass();
    $('#teni').removeClass();
    $('#fise').removeClass();

    $('#tesi').removeClass();
    $('#fine').removeClass();
    $('#nefi').removeClass();
    $('#site').removeClass();


  $('#neti').click ->
    $('this').clearOrder();

    $('#neti').addClass("order-1");
    $('#sife').addClass("order-2");
    $('#fesi').addClass("order-3");
    $('#tine').addClass("order-4");
    
    $('#feni').addClass("order-5");
    $('#tise').addClass("order-6");
    $('#seti').addClass("order-7");
    $('#nife').addClass("order-8");

    $('#sefi').addClass("order-9");
    $('#nite').addClass("order-10");
    $('#teni').addClass("order-11");
    $('#fise').addClass("order-12");

    $('#tesi').addClass("order-13");
    $('#fine').addClass("order-14");
    $('#nefi').addClass("order-15");
    $('#site').addClass("order-16");


  $("#sife").click ->
    $('this').clearOrder();

    $("#neti").addClass("order-2");
    $('#sife').addClass("order-1");
    $('#fesi').addClass("order-4");
    $('#tine').addClass("order-3");

    $('#feni').addClass("order-6");
    $('#tise').addClass("order-5");
    $('#seti').addClass("order-8");
    $('#nife').addClass("order-7");

    $('#sefi').addClass("order-10");
    $('#nite').addClass("order-9");
    $('#teni').addClass("order-12");
    $('#fise').addClass("order-11");

    $('#tesi').addClass("order-14");
    $('#fine').addClass("order-13");
    $('#nefi').addClass("order-16");
    $('#site').addClass("order-15");


  $('#fesi').click ->
    $('this').clearOrder();

    $('#neti').addClass("order-3");
    $('#sife').addClass("order-4");
    $('#fesi').addClass("order-1");
    $('#tine').addClass("order-2");

    $('#feni').addClass("order-15");
    $('#tise').addClass("order-16");
    $('#seti').addClass("order-13");
    $('#nife').addClass("order-14");

    $('#sefi').addClass("order-11");
    $('#nite').addClass("order-12");
    $('#teni').addClass("order-9");
    $('#fise').addClass("order-10");

    $('#tesi').addClass("order-7");
    $('#fine').addClass("order-8");
    $('#nefi').addClass("order-5");
    $('#site').addClass("order-6");


  $('#tine').click ->
    $('this').clearOrder();

    $('#neti').addClass("order-4");
    $('#sife').addClass("order-3");
    $('#fesi').addClass("order-2");
    $('#tine').addClass("order-1");

    $('#feni').addClass("order-16");
    $('#tise').addClass("order-15");
    $('#seti').addClass("order-14");
    $('#nife').addClass("order-13");

    $('#sefi').addClass("order-12");
    $('#nite').addClass("order-11");
    $('#teni').addClass("order-10");
    $('#fise').addClass("order-9");

    $('#tesi').addClass("order-8");
    $('#fine').addClass("order-7");
    $('#nefi').addClass("order-6");
    $('#site').addClass("order-5");


  $('#feni').click ->
    $('this').clearOrder();

    $('#neti').addClass("order-13");
    $('#sife').addClass("order-14");
    $('#fesi').addClass("order-15");
    $('#tine').addClass("order-16");

    $('#feni').addClass("order-1");
    $('#tise').addClass("order-2");
    $('#seti').addClass("order-3");
    $('#nife').addClass("order-4");

    $('#sefi').addClass("order-5");
    $('#nite').addClass("order-6");
    $('#teni').addClass("order-7");
    $('#fise').addClass("order-8");

    $('#tesi').addClass("order-9");
    $('#fine').addClass("order-10");
    $('#nefi').addClass("order-11");
    $('#site').addClass("order-12");


  $('#tise').click ->
    $('this').clearOrder();

    $('#neti').addClass("order-14");
    $('#sife').addClass("order-13");
    $('#fesi').addClass("order-16");
    $('#tine').addClass("order-15");

    $('#feni').addClass("order-2");
    $('#tise').addClass("order-1");
    $('#seti').addClass("order-4");
    $('#nife').addClass("order-3");

    $('#sefi').addClass("order-6");
    $('#nite').addClass("order-5");
    $('#teni').addClass("order-8");
    $('#fise').addClass("order-7");

    $('#tesi').addClass("order-10");
    $('#fine').addClass("order-9");
    $('#nefi').addClass("order-12");
    $('#site').addClass("order-11");


  $('#seti').click ->
    $('this').clearOrder();

    $('#neti').addClass("order-7");
    $('#sife').addClass("order-8");
    $('#fesi').addClass("order-5");
    $('#tine').addClass("order-6");

    $('#feni').addClass("order-4");
    $('#tise').addClass("order-3");
    $('#seti').addClass("order-2");
    $('#nife').addClass("order-1");

    $('#sefi').addClass("order-15");
    $('#nite').addClass("order-16");
    $('#teni').addClass("order-13");
    $('#fise').addClass("order-14");

    $('#tesi').addClass("order-11");
    $('#fine').addClass("order-12");
    $('#nefi').addClass("order-9");
    $('#site').addClass("order-10");


  $('#nife').click ->
    $('this').clearOrder();

    $('#neti').addClass("order-8");
    $('#sife').addClass("order-7");
    $('#fesi').addClass("order-6");
    $('#tine').addClass("order-5");

    $('#feni').addClass("order-4");
    $('#tise').addClass("order-3");
    $('#seti').addClass("order-2");
    $('#nife').addClass("order-1");

    $('#sefi').addClass("order-16");
    $('#nite').addClass("order-15");
    $('#teni').addClass("order-14");
    $('#fise').addClass("order-13");

    $('#tesi').addClass("order-12");
    $('#fine').addClass("order-11");
    $('#nefi').addClass("order-10");
    $('#site').addClass("order-9");


  $('#sefi').click ->
    $('this').clearOrder();

    $('#neti').addClass("order-9");
    $('#sife').addClass("order-10");
    $('#fesi').addClass("order-11");
    $('#tine').addClass("order-12");

    $('#feni').addClass("order-13");
    $('#tise').addClass("order-14");
    $('#seti').addClass("order-15");
    $('#nife').addClass("order-16");

    $('#sefi').addClass("order-1");
    $('#nite').addClass("order-2");
    $('#teni').addClass("order-3");
    $('#fise').addClass("order-4");

    $('#tesi').addClass("order-5");
    $('#fine').addClass("order-6");
    $('#nefi').addClass("order-7");
    $('#site').addClass("order-8");


  $('#nite').click ->
    $('this').clearOrder();

    $('#neti').addClass("order-10");
    $('#sife').addClass("order-9");
    $('#fesi').addClass("order-12");
    $('#tine').addClass("order-11");

    $('#feni').addClass("order-14");
    $('#tise').addClass("order-13");
    $('#seti').addClass("order-16");
    $('#nife').addClass("order-15");

    $('#sefi').addClass("order-2");
    $('#nite').addClass("order-1");
    $('#teni').addClass("order-4");
    $('#fise').addClass("order-3");

    $('#tesi').addClass("order-6");
    $('#fine').addClass("order-5");
    $('#nefi').addClass("order-8");
    $('#site').addClass("order-7");


  $('#teni').click ->
    $('this').clearOrder();

    $('#neti').addClass("order-11");
    $('#sife').addClass("order-12");
    $('#fesi').addClass("order-9");
    $('#tine').addClass("order-10");

    $('#feni').addClass("order-7");
    $('#tise').addClass("order-8");
    $('#seti').addClass("order-5");
    $('#nife').addClass("order-6");

    $('#sefi').addClass("order-3");
    $('#nite').addClass("order-4");
    $('#teni').addClass("order-1");
    $('#fise').addClass("order-2");

    $('#tesi').addClass("order-15");
    $('#fine').addClass("order-16");
    $('#nefi').addClass("order-13");
    $('#site').addClass("order-14");


  $('#fise').click ->
    $('this').clearOrder();

    $('#neti').addClass("order-12");
    $('#sife').addClass("order-11");
    $('#fesi').addClass("order-10");
    $('#tine').addClass("order-9");

    $('#feni').addClass("order-8");
    $('#tise').addClass("order-7");
    $('#seti').addClass("order-6");
    $('#nife').addClass("order-5");

    $('#sefi').addClass("order-4");
    $('#nite').addClass("order-3");
    $('#teni').addClass("order-2");
    $('#fise').addClass("order-1");

    $('#tesi').addClass("order-16");;
    $('#fine').addClass("order-15");;
    $('#nefi').addClass("order-14");;
    $('#site').addClass("order-13");


  $('#tesi').click ->
    $('this').clearOrder();

    $('#neti').addClass("order-5");
    $('#sife').addClass("order-6");
    $('#fesi').addClass("order-7");
    $('#tine').addClass("order-8");

    $('#feni').addClass("order-9");
    $('#tise').addClass("order-10");
    $('#seti').addClass("order-11");
    $('#nife').addClass("order-12");

    $('#sefi').addClass("order-13");
    $('#nite').addClass("order-14");
    $('#teni').addClass("order-15");
    $('#fise').addClass("order-16");

    $('#tesi').addClass("order-1");
    $('#fine').addClass("order-2");
    $('#nefi').addClass("order-3");
    $('#site').addClass("order-4");


  $('#fine').click ->
    $('this').clearOrder();

    $('#neti').addClass("order-6");
    $('#sife').addClass("order-5");
    $('#fesi').addClass("order-8");
    $('#tine').addClass("order-7");

    $('#feni').addClass("order-10");
    $('#tise').addClass("order-9");
    $('#seti').addClass("order-12");
    $('#nife').addClass("order-11");

    $('#sefi').addClass("order-14");
    $('#nite').addClass("order-13");
    $('#teni').addClass("order-16");
    $('#fise').addClass("order-15");

    $('#tesi').addClass("order-2");
    $('#fine').addClass("order-1");
    $('#nefi').addClass("order-4");
    $('#site').addClass("order-3");


  $('#nefi').click ->
    $('this').clearOrder();

    $('#neti').addClass("order-15");
    $('#sife').addClass("order-16");
    $('#fesi').addClass("order-13");
    $('#tine').addClass("order-14");

    $('#feni').addClass("order-11");
    $('#tise').addClass("order-12");
    $('#seti').addClass("order-9");
    $('#nife').addClass("order-10");

    $('#sefi').addClass("order-7");
    $('#nite').addClass("order-8");
    $('#teni').addClass("order-5");
    $('#fise').addClass("order-6");

    $('#tesi').addClass("order-3");
    $('#fine').addClass("order-4");
    $('#nefi').addClass("order-1");
    $('#site').addClass("order-2");


  $('#site').click ->
    $('this').clearOrder();

    $('#neti').addClass("order-16");
    $('#sife').addClass("order-15");
    $('#fesi').addClass("order-14");
    $('#tine').addClass("order-13");

    $('#feni').addClass("order-12");
    $('#tise').addClass("order-11");
    $('#seti').addClass("order-10");
    $('#nife').addClass("order-9");

    $('#sefi').addClass("order-8");
    $('#nite').addClass("order-7");
    $('#teni').addClass("order-6");
    $('#fise').addClass("order-5");

    $('#tesi').addClass("order-4");
    $('#fine').addClass("order-3");
    $('#nefi').addClass("order-2");
    $('#site').addClass('order-1');

$(document).load(socionicsReady);
$(document).on('page:load', socionicsReady);