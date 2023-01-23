<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

function logged_in() {
    $CI = & get_instance(); 

    if(!$CI->session->userdata('nama')){
        $CI->session->set_flashdata('info', "silahkan melakukan login terlebih dahulu");
        return redirect('login/logout');
    }
}

function bulan(){
    $date = new DateTime();
	$bulan = strftime('%B', $date->getTimestamp());
    switch ($bulan) {
        case 'January':
            $bulan = "Januari";
            break;
        case 'February':
            $bulan = "Februari";
            break;
        case 'March':
            $bulan = "Maret";
            break;
        case 'April':
            $bulan = "April";
            break;
        case 'May':
            $bulan = "Mei";
            break;
        case 'June':
            $bulan = "Juni";
            break;
        case 'July':
            $bulan = "Juli";
            break;
        case 'August':
            $bulan = "Agustus";
            break;
        case 'September':
            $bulan = "September";
            break;
        case 'October':
            $bulan = "Oktober";
            break;
        case 'November':
            $bulan = "November";
            break;
        case 'December':
            $bulan = "Desember";
            break;
        default:
            $bulan = Date('F');
            break;
    }
    return $bulan;
}

function hari(){
    $date = new DateTime();
	$hari = strftime('%A', $date->getTimestamp());
    switch ($hari) {
        case 'Monday':
            $hari = "Senin";
            break;
        case 'Tuesday':
            $hari = "Selasa";
            break;
        case 'Wednesday':
            $hari = "Rabu";
            break;
        case 'Thursday':
            $hari = "Kamis";
            break;
        case 'Friday':
            $hari = "Jumat";
            break;
        case 'Saturday':
            $hari = "Sabtu";
            break;
        case 'Sunday':
            $hari = "Minggu";
            break;
        default:
            $hari = Date('l');
            break;
    }
    return $hari;
}

function dateFull(){
    $date = new DateTime();
    $tanggal = strftime('%d', $date->getTimestamp());
    $tahun = strftime('%Y', $date->getTimestamp());
    
    $date = hari() . ", tanggal " .$tanggal. " ".bulan()." " .$tahun; 
    return $date;
}

function get_tahun(){
    $optTahun = [];
    for($i = Date('Y'); $i > 2009; $i--){
        $optTahun[$i] = $i; 
    }

    return $optTahun;
}

function get_bulan(){
    $bulan = [
        "01"    => "January",
        "02"    => "February",
        "03"    => "March",
        "04"    => "April",
        "05"    => "May",
        "06"    => "June",
        "07"    => "July",
        "08"    => "August",
        "09"    => "September",
        "10"    => "October",
        "11"    => "November",
        "12"    => "December"
    ];

    return $bulan;
}

function scan_sanitize_array($params){   
    if(is_array($params)){
        $cleanArray = array();
        foreach ($params as $key => $value) {
            if(is_array($value)){
                foreach($params[$key] as $key2=>$val2){
                    if(is_array($val2)){
                        foreach($params[$key][$key2] as $key3=>$val3){
                            if(is_array($val3)){
                                foreach($params[$key][$key2][$key3] as $key4=>$val4){
                                    if(!is_array($val3)){
                                        $cleanArray[$key][$key2][$key3][$key4] = filter_var(trim($val4),FILTER_SANITIZE_STRING);
                                    }
                                }
                            }else{
                                $cleanArray[$key][$key2][$key3] = filter_var(trim($val3),FILTER_SANITIZE_STRING);
                            }
                        }
                    }else{
                        $cleanArray[$key][$key2] = filter_var(trim($val2),FILTER_SANITIZE_STRING);
                    }
                }
            }else{                
                $cleanArray[$key] = filter_var(trim($value),FILTER_SANITIZE_STRING);
            }
        }
        return $cleanArray;
    }
    else{
        return filter_var(trim($params),FILTER_SANITIZE_STRING);
    }
}

function scan_sanitize ( $input ){
   $ci  = &   get_instance ();
   $input  =  $ci -> security -> xss_clean ( $input );
   $input  =  preg_replace ( "/[^0-9a-zA-Z .,-_|]/" , "" , $input );
   $input  =  filter_var ( $input , FILTER_SANITIZE_STRING);
   return $input ;
}