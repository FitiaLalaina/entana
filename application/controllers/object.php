<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class afficheObject extends CI_Controller {

	public function __construct() {
		parent::__construct();
		$this->load->model('log_model');
        if(!$this->log_model->checkUser()) {
            redirect(site_url('log'));
        }
	}
	
	public function index($error = '')
	{	
		$data = array('error' => urldecode($error));
        //TODO: redirect to the home_page
        echo 'home_page';
        // redirect(site_url('home'));
	}	
	public function giveObject(){
        
    }

}