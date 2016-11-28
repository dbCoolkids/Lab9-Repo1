<?php
/**
 * REST server for ferry schedule operations.
 * This one manages ports.
 *
 * ------------------------------------------------------------------------
 */
require APPPATH . '/third_party/restful/libraries/Rest_controller.php';
class Maintenance extends Rest_Controller {
	function __construct()
	{
		parent::__construct();
		$this->load->model('Menu');
	}

	// Handle an incoming GET ... 	returns a list of ports
	function index_get()
	{
		$key = $this->get('id');
		if(!$key)
		{
			$this->response($this->Menu->all(), 200);
		} else {
			$result = $this->Menu->get($key);
			if($result != null)
			{
				$this->response($result, 200);
			} else {
				$this->response(array('error' => 'Menu item not found!'), 404);
			}
		}
	}
	
	// Handle an incoming PUT - update a menu item
	function index_put()
	{
	    $key = $this->get('id');
	    $record = array_merge(array('id' => $key), $this->_put_args);
	    $this->Menu->update($record);
	    $this->response(array('ok'), 200);
	}

	// Handle an incoming POST - add a new menu item
	function index_post()
	{
	    $key = $this->get('id');
	    $record = array_merge(array('id' => $key), $_POST);
	    $this->Menu->add($record);
	    $this->response(array('ok'), 200);
	}

	// Handle an incoming DELETE - cruD
	function index_delete()
	{
    	$this->response('ok', 200);
	}

	function item_get()
	{
		$key = $this->get('id');
    	$result = $this->Menu->get($key);
    	if ($result != null)
        	$this->response($result, 200);
    	else
        	$this->response(array('error' => 'Menu item not found!'), 404);
	}

	// Handle an incoming POST - add a new menu item
	function item_post()
	{
	    $key = $this->get('id');
	    $record = array_merge(array('id' => $key), $_POST);
	    $this->Menu->add($record);
	    $this->response(array('ok'), 200);
	}

	// Handle an incoming DELETE - delete a menu item
	function item_delete()
	{
	    $key = $this->get('id');
	    $this->Menu->delete($key);
	    $this->response(array('ok'), 200);
	}
	
}