$(document).ready(function() {
    $("#pindahbox").hide();
    $("#divpinj").hide();
    $("#divtambah").hide();
    $("#kodebarang").hide();
    $("#pindah").click(function() {
        $("#pindahbox").show();
        $("#divpinj").hide();
        $("#divtambah").hide();
        $("#kodebarang").hide();
    })
    $("#kode").click(function() {
        $("#kodebarang").show();
        $("#divtambah").hide();
        $("#divpinj").hide();
        $("#pindahbox").hide();
    });
    $("#pinjam").click(function() {
        $("#divpinj").show();
    });
    $("#batalpinj").click(function() {
        $("#divpinj").hide();
    });
    $("#ajukan").click(function() {
        $("#divpinj").hide();
        alert("Silahkan tunggu konfirmasi admin. Cek status di menu data peminjaman");
    });
    $("#tambah").click(function() {
        $("#divtambah").show();
        $("#kodebarang").hide();
        $("#pindahbox").hide();
        $("#divpinj").hide();
    });
    $("#bataltambah").click(function() {
        $("#divtambah").hide();
    });
    // // $("#tambahkan").click(function(){
    // //     $("#divtambah").hide();
    // //     alert("Barang ditambahkan");
    // });
    $("#batalkode").click(function() {
        $("#kodebarang").hide();
    });
    $("#masukkode").click(function() {
        $("#kodebarang").hide();
        alert("Kode ditambahkan");
    });
    $("#batalbut").click(function() {
        $("#pindahbox").hide();
    });

});