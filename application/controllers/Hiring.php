<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Hiring extends Application
{

	function __construct() {
        parent::__construct();
}


public function index() {
    $stuff = file_get_contents('../data/jobs.md');
    $this->data['content'] = $this->parsedown->parse($stuff);
    
    // get the user role
	$this->data['userrole'] = $this->session->userdata('userrole');
	if ($this->data['userrole'] == NULL) $this->data['userrole'] = '?';
    $this->render('template_secondary'); 
}

}
