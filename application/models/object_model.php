<?php
    if(!defined('BASEPATH')) exit('No direct script access allowed');
    class object_model extends CI_Model {
        public function getALlObject() {
            $user_id = $this->session->userdata('user_id');
            $sql = 'SELECT * FROM object WHERE id=%s';
            $sql = sprintf($sql, $user_id);
            $query = $this->db->query($sql);
            $user = $query->row_array();
            return $user;
        }
    }
?>