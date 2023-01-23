<?php
    
    defined('BASEPATH') OR exit('No direct script access allowed');
    
    class Dashboard_model extends CI_Model {
    
        public function get_user(){
            $this->db->select('*');
            $this->db->from('user');
            
            $query = $this->db->get();
            // var_dump($query);
            return $query->result_array();
        }    
    }
    
    /* End of file Dashboard_model.php */
    
?>