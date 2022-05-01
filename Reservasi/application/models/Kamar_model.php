<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Kamar_model extends CI_Model {

	public function read()
	{
		$query = $this->db->get('lapangan');
		return $query->result();
	}
	
	public function read_by($id)
	{
		$this->db->where('id',$id);
		$query = $this->db->get('lapangan');
		return $query->row() ;
	}

	
}

