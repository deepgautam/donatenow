<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class group_permission_m extends MY_Model {

	protected $table='tbl_group_permissions';

	public $rules=array(
		array(
			'field'=>'name',
			'label'=>'Name',
			'rules'=>'trim|required|xss_clean'
			),
		array(
			'field'=>'desc',
			'label'=>'Description',
			'rules'=>'trim|required|xss_clean'
			),
		);
	public function create_row($data)
	{
		$this->db->insert($this->table,$data);
	}
	public function update_row($id,$data)
	{
		$this->db->where('id',$id);
		$this->db->update($this->table,$data);
	}
	public function read_row($id)
	{
		$this->db->select()
		->from($this->table)
		->where('group_id',$id);
		$rs=$this->db->get();
		return $rs->result_array();				 
	}
	public function delete_row($id)
	{
		$this->db->where('id',$id);
		$this->db->delete($this->table);
	}	
	public function reset_group_permission($group_id)
	{
		$this->db->where('group_id',$group_id);
		$this->db->delete($this->table);
	}	

}

