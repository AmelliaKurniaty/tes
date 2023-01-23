<?php
    
    defined('BASEPATH') OR exit('No direct script access allowed');
    
    class Login extends CI_Controller {
    
        public function __construct()
        {
            parent::__construct();
            //Do your magic here
            $this->load->helper('url');
            $this->load->helper('form');
            $this->load->model('LoginModel');
            $this->load->library('session');
        }
        
        public function index()
        {
            $this->load->view('login');
        }
        
        public function proses_login(){
            $username= htmlspecialchars($this->input->post('username'));
            $password= htmlspecialchars($this->input->post('password'));
            $md5 = md5($password);

            $ceklogin = $this->LoginModel->login($username,$md5);

            if(isset($ceklogin) && !empty($ceklogin)){
                $this->session->set_userdata($ceklogin);

                if($ceklogin['role']=="admin"){
                    redirect('dashboard');
                }else{
                    redirect('login/logout');
                }
            }else{
                redirect('login/logout');
            }
        }

        public function logout(){
            $this->session->sess_destroy();
            redirect('login','refresh');
        }
    }
    
    /* End of file LoginController.php */
    
?>