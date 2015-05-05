<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class User_m extends MY_Model {

	protected $table='tbl_users';

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


	public $rules=array(
		array(
			'field'=>'group',
			'label'=>'Group',
			'rules'=>'trim|required|xss_clean'
			),
		array(
			'field'=>'username',
			'label'=>'Username',
			'rules'=>'trim|required|alpha_numeric|xss_clean'
			),
		array(
			'field'=>'email',
			'label'=>'Email Address',
			'rules'=>'trim|required|valid_email|unique[tbl_users.email]|xss_clean'
			),
		);
	public function __construct(){
		parent::__construct();
	}
	function read_all($total,$start)
	{
		$this->db->select()
		->from($this->table)
		->where("status != ",3)
		->order_by('id','desc')
		->limit($total,$start);
		$rs=$this->db->get();
		return $rs->result_array();				 
	}
	function read_all_active()
	{
		$this->db->select()
		->from($this->table)
		->where("status != ",self::DELETED);
		$rs=$this->db->get();
		return $rs->result_array();				 
	}

	function count_rows()
	{
		$this->db->select()
		->from($this->table)
		->where("status != ",3)
		->order_by('id','desc');
		$rs=$this->db->get();
		return $rs->num_rows();				 
	}	
	function check_login($username,$pass)
	{
		$where=array('username'=>$username,'pass'=>sha1($pass));
		$this->db->select()->from('tbl_users')->where($where);
		$rs=$this->db->get();
		return $rs->first_row('array');

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
	function read_row_by_username($username='')
	{
		if(!$username) return false;
		$this->db->select()
		->from($this->table)
		->where('username',$username);
		$rs=$this->db->get();
		if($rs->num_rows()==0)
			return false;
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
	function count_group_user($id){
		$this->db->select(array('count(id) as total' ))
		->from($this->table)
		->where("status != ",3)
		->where("group_id = $id")
		->order_by('id','desc');
		// echo $this->db->last_query();
		return $this->db->count_all_results();			 
	}
	function get_user_name(){
		$id=$this->session->userdata('id');
		if($id){
			$user=$this->read_row($id);
			return $user['username'];			
		}
	}
}


/* End of file user.php */
/* Location: ./application/modules/user/models/user.php */