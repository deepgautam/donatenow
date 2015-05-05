<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class group_m extends MY_Model {

	protected $table='tbl_groups';

	public $rules=array(
		array(
			'field'=>'name',
			'label'=>'Name',
			'rules'=>'trim|required|alpha_numeric|xss_clean'
			),
		array(
			'field'=>'desc',
			'label'=>'Description',
			'rules'=>'trim|required|xss_clean'
			),
		);

	const PENDING=0;
	const ACTIVE=1;
	const BLOCKED=2;
	const DELETED=3;


	public static function status($key=null){
		$status=array(
			self::PENDING=>'Pending',
			self::ACTIVE=>'Active',
			self::BLOCKED=>'Blocked',
			self::DELETED=>'Deleted',
			);
		if(isset($key)) return $status[$key];
		return $status;
	}

	public static function actions($key=null){
		$actions=array(
			self::PENDING=>'Pending',
			self::ACTIVE=>'Active',
			self::BLOCKED=>'Block',
			self::DELETED=>'Delete',
			);
		if(isset($key)) return $actions[$key];
		return $actions;
	}


	public function read_all($total,$start)
	{
		$this->db->select()
		->from($this->table)
		->where("status != ",3)
		->order_by('id','desc')
		->limit($total,$start);
		$rs=$this->db->get();
		return $rs->result_array();				 
	}
	public function count_rows()
	{
		$this->db->select()
		->from($this->table)
		->where("status != ",3)
		->order_by('id','desc');
		$rs=$this->db->get();
		return $rs->num_rows();				 
	}	
	public function get_groups()
	{
		$this->db->select('id,name')->from($this->table)->where("status =".self::ACTIVE." and parent_group_id is NULL");
		$rs=$this->db->get();
		return $rs->result_array();				 
	}
	public function get_group_name($id=NULL)
	{
		$this->db->select('name')->from($this->table)->where("id =$id")->limit('1');
		$rs=$this->db->get();
		return $rs->row('name');				 				 
	}
	public function read_row_by_slug($slug='')
	{
		if(!$slug)
			return false;
		$this->db->select()
		->from($this->table)
		->where('slug',$slug);
		$rs=$this->db->get();
		if($rs->num_rows()==0)
			return false;
		return ($rs->first_row('array'));
	}
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
		->where('id',$id);
		$rs=$this->db->get();
		return ($rs->first_row('array'));
	}
	public function delete_row($id)
	{
		$this->db->where('id',$id);
		$this->db->update($this->table,array('status' =>self::DELETED));
	}	
	public function set_rules(array $escape_rules=NUll){
		if($escape_rules && is_array($escape_rules)){
			foreach($this->rules as $rule){
				if(in_array($rule['field'],$escape_rules)) continue;
				$applied_rules[]=$rule;
			}
			return $applied_rules;
		}
		return $this->rules;
	}
}

