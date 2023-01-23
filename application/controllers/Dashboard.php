<?php
    
    defined('BASEPATH') OR exit('No direct script access allowed');
    
    class Dashboard extends CI_Controller {
        
        public function __construct()
        {
            parent::__construct();
            $this->load->model('Dashboard_model');
            // $this->load->library('session');
            // logged_in();
        }
        
        public function index()
        {
            $data['user'] = $this->Dashboard_model->get_user();

            $this->load->view('dashboard', $data);
        }
    
    }
    
    /* End of file DashboardController.php */
    
?>