<?php

defined('BASEPATH') OR exit('No direct script access allowed');
/*

class Welcome extends Application
{

	/**
	 * Index Page for this controller.
	 *
	 * Maps to the following URL
	 * 		http://example.com/
	 * 	- or -
	 * 		http://example.com/welcome/index
	 *
	 * So any other public methods not prefixed with an underscore will
	 * map to /welcome/<method_name>
	 * @see https://codeigniter.com/user_guide/general/urls.html
	 
	public function index() 
	{
    $result = '';
    $oddrow = true;
    foreach ($this->Categories->all() as $category) {
        $category->direction = ($oddrow ? 'left' : 'right');
		$result .= $this->parser->parse('category-home', $category, true);
        $oddrow = ! $oddrow;
    }

    // get the user role
	$this->data['userrole'] = $this->session->userdata('userrole');
	if ($this->data['userrole'] == NULL) $this->data['userrole'] = '?';
	

    $this->data['content'] = $result;
    $this->render();
    
	}
}
*/

class Welcome extends Application
{
	function __construct()
	{
		parent::__construct();
		$this->load->model('Menu');
		$this->data['pagetitle'] = "Diner"
	}

	function index()
	{
		$this->load->helper('formfields');
		$this->data['title'] = "Manu & Norm's Diner"
		$this->data['pagebody'] = "hello";

		$this->render();
	}
}