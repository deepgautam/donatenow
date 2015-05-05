<?php 
class Testimonial_m extends CI_Model
{

	public $rules=array(
		array(
			'field'=>'testimonial',
			'label'=>'Testimonial',
			'rules'=>'trim|required|xss_clean'
			),
		array(
			'field'=>'std_name',
			'label'=>'Student Name',
			'rules'=>'trim|required|xss_clean'
			),
		array(
			'field'=>'std_email',
			'label'=>'Student Email',
			'rules'=>'trim|required|valid_email|xss_clean'
			),
		array(
			'field'=>'std_add',
			'label'=>'Student Address',
			'rules'=>'trim|required|xss_clean'
			),
/*		array(
			'field'=>'std_pic',
			'label'=>'Student Picture',
			'rules'=>'trim|required|xss_clean'
			),
*/		array(
	'field'=>'status',
	'label'=>'Status',
	'rules'=>'trim|required|xss_clean|number'
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


	protected $path;
	public function __construct(){
		$this->path=base_url()."uploads/pics/testimonials/";
	}

	function read_all($total,$start)
	{
		$this->db->select()
		->from('tbl_testimonials')
		->where("status != ",3)
		->order_by('id','desc')
		->limit($total,$start);
		$rs=$this->db->get();
		return $rs->result_array();				 
	}
	function count_rows()
	{
		$this->db->select()
		->from('tbl_testimonials')
		->where("status != ",3)
		->order_by('id','desc');
		$rs=$this->db->get();
		return $rs->num_rows();				 
	}	
	function create_row($data)
	{
		$this->db->insert('tbl_testimonials',$data);
	}
	function read_row($id)
	{
		$this->db->select()
		->from('tbl_testimonials')
		->where('id',$id);
		$rs=$this->db->get();
		return ($rs->first_row('array'));
	}
	public function read_row_by_slug($slug='')
	{
		if(!$slug) return false;
		$this->db->select()
		->from($this->table)
		->where('slug',$slug);
		$rs=$this->db->get();
		if($rs->num_rows()==0)
			return false;
		return ($rs->first_row('array'));
	}

	function update_row($id,$data)
	{
		$this->db->where('id',$id);
		$this->db->update('tbl_testimonials',$data);
	}
	function delete_row($id)
	{
		$this->db->where('id',$id);
		$this->db->update('tbl_testimonials',array('status' =>self::DELETED));
		// $this->db->delete('tbl_testimonials');
	}

    //TODO create helper
	public function std_pic($pic){
		if($pic){
			$file=$this->path.$pic;
			return $file;
			if(file_exists($file)){
				return $file;
			}
		}
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
?>