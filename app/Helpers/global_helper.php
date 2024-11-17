<?php

use App\Models\metadata;

if (!function_exists('get_meta_value')) {
    function get_meta_value($meta_key)
    {
        $data = metadata::where('meta_key', $meta_key)->first();
        return $data ? $data->meta_value : null;
    }
}

if (!function_exists('set_about_nama')) {
    function set_about_nama($nama)
    {
        // Membagi nama menjadi array kata
        $arr = explode(" ", $nama);
        
        // Mengambil kata terakhir
        $kataakhir = end($arr);
        
        // Menambahkan span pada kata terakhir
        $kataakhir2 = "<span class='text-primary'>" . htmlspecialchars($kataakhir, ENT_QUOTES, 'UTF-8') . "</span>";
        
        // Menghapus kata terakhir dari array
        array_pop($arr);
        
        // Menggabungkan kembali nama tanpa kata terakhir
        $namaAwal = implode(" ", $arr);
        
        return htmlspecialchars($namaAwal, ENT_QUOTES, 'UTF-8') . " " . $kataakhir2;
    }
}

if (!function_exists('set_list_award')) {
    function set_list_award($isi)
    {
        // Mengubah tag <ul> dan <li> dengan class untuk tampilan yang diinginkan
        $isi = str_replace("<ul>", '<ul class="fa-ul mb-0">', $isi);
        $isi = str_replace("<li>", '<li><span class="fa-li"><i class="fas fa-trophy text-warning"></i></span>', $isi);
        return $isi;
    }
}

if (!function_exists('set_list_workflow')) {
    function set_list_workflow($isi)
    {
        // Mengubah tag <ul> dan <li> dengan class untuk tampilan yang diinginkan
        $isi = str_replace("<ul>", '<ul class="fa-ul mb-0">', $isi);
        $isi = str_replace("<li>", '<li><span class="fa-li"><i class="fas fa-check"></i></span>', $isi);
        return $isi;
    }
}

// Fungsi tambahan sesuai permintaan Anda
if (!function_exists('get_meta_value')) {
    function get_meta_value($key) {
        return \App\Models\Meta::where('key', $key)->value('value');
    }
}
