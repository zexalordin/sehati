<?php
class Model extends CI_Model{
	function cek_login($table,$where){		
		return $this->db->get_where($table,$where);
	}	
	public function count_table($table){
		return $this->db->count_all($table);
	}
	public function count_table_like($table,$column,$keyword,$where){
		$this->db->where($where);
		$this->db->where($column." LIKE '%".$keyword."%'");
		$this->db->from($table);
		return $this->db->count_all_results();
	}
	public function count_table_where($table,$where){
		$this->db->where($where);
		$this->db->from($table);
		return $this->db->count_all_results();
	}
	public function count_table_like_join1($table,$column,$keyword,$where,$table2,$same_var){
		$this->db->where($where);
		$this->db->where($column." LIKE '%".$keyword."%'");
		$this->db->from($table);
		$this->db->join($table2, $table.'.'.$same_var.' = '.$table2.'.'.$same_var);
		return $this->db->count_all_results();
	}
	public function count_table_like_join2($table,$column,$keyword,$where,$table2,$same_var,$table3,$same_var2){
		$this->db->where($where);
		$this->db->where($column." LIKE '%".$keyword."%'");
		$this->db->from($table);
		$this->db->join($table2, $table.'.'.$same_var.' = '.$table2.'.'.$same_var);
		$this->db->join($table3, $table.'.'.$same_var2.' = '.$table3.'.'.$same_var2);
		return $this->db->count_all_results();
	}
	public function fetch_table($limit,$offset,$table,$where,$asc){
		$this->db->order_by($asc,'ASC');
		$this->db->where($where);
		$this->db->limit($limit,$offset);
		$query = $this->db->get($table);
		return $query->result();
	}
	public function fetch_table_join1($limit,$offset,$table,$where,$asc,$table2,$same_var){
		$this->db->order_by($asc,'ASC');
		$this->db->where($where);
		$this->db->from($table);
		$this->db->limit($limit,$offset);
		$this->db->join($table2, $table.'.'.$same_var.' = '.$table2.'.'.$same_var);
		$query = $this->db->get();
		return $query->result();
	}

	public function fetch_table2($table,$asc,$column,$where,$keyword){
		$this->db->order_by($asc,'ASC');
		$this->db->where($where);
		$this->db->where($column." LIKE '%".$keyword."%'");
		$query = $this->db->get($table);
		return $query->result();
	}
	public function fetch_table_join2($limit,$offset,$table,$where,$asc,$table2,$same_var,$table3,$same_var2){
		$this->db->order_by($asc,'ASC');
		$this->db->where($where);
		$this->db->from($table);
		$this->db->limit($limit,$offset);
		$this->db->join($table2, $table.'.'.$same_var.' = '.$table2.'.'.$same_var);
		$this->db->join($table3, $table.'.'.$same_var2.' = '.$table3.'.'.$same_var2);
		$query = $this->db->get();
		return $query->result();
	}
	public function fetch_table2_join1($table,$asc,$column,$where,$keyword,$table2,$same_var){
		$this->db->order_by($asc,'ASC');
		$this->db->where($where);
		$this->db->where($column." LIKE '%".$keyword."%'");
		$this->db->join($table2, $table.'.'.$same_var.' = '.$table2.'.'.$same_var);
		$query = $this->db->get($table);
		return $query->result();
	}
	public function fetch_table2_join2($table,$asc,$column,$where,$keyword,$table2,$same_var,$table3,$same_var2){
		$this->db->order_by($asc,'ASC');
		$this->db->where($where);
		$this->db->where($column." LIKE '%".$keyword."%'");
		$this->db->join($table2, $table.'.'.$same_var.' = '.$table2.'.'.$same_var);
		$this->db->join($table3, $table.'.'.$same_var2.' = '.$table3.'.'.$same_var2);
		$query = $this->db->get($table);
		return $query->result();
	}
	public function get_data_rows($table,$where){
        $query=$this->db->get_where($table,$where);
        return $query->result_array();
	}
	public function get_data_rows_asc($table,$where,$asc){
		$this->db->order_by($asc,'ASC');
        $query=$this->db->get_where($table,$where);
        return $query->result_array();
	}
	public function get_data_rows_desc($table,$where,$desc){
		$this->db->order_by($desc,'DESC');
        $query=$this->db->get_where($table,$where);
        return $query->result_array();
	}
	public function get_data_row($table,$where){
		$this->db->where($where);
		$data=$this->db->get($table);
        return $data->row();
	}
	public function get_data_join1_row($table1,$where,$table2,$same_var){
		$this->db->where($where);
		$this->db->select('*');    
		$this->db->from($table1);
		$this->db->join($table2, $table1.'.'.$same_var.' = '.$table2.'.'.$same_var);
		$data=$this->db->get();
        return $data->row();
	}
	public function get_data_join2_row($table1,$where,$table2,$same_var,$table3,$same_var2){
		$this->db->where($where);
		$this->db->select('*');    
		$this->db->from($table1);
		$this->db->join($table2, $table1.'.'.$same_var.' = '.$table2.'.'.$same_var);
		$this->db->join($table3, $table1.'.'.$same_var2.' = '.$table3.'.'.$same_var2);
		$data=$this->db->get();
        return $data->row();
	}
	public function get_data_join1_rows($table1,$where,$table2,$same_var){
		$this->db->where($where);
		$this->db->select('*');    
		$this->db->from($table1);
		$this->db->join($table2, $table1.'.'.$same_var.' = '.$table2.'.'.$same_var);
		$data=$this->db->get();
        return $data->result_array();
	}
	public function get_data_join2_rows($table1,$where,$table2,$same_var,$table3,$same_var2){
		$this->db->where($where);
		$this->db->select('*');    
		$this->db->from($table1);
		$this->db->join($table2, $table1.'.'.$same_var.' = '.$table2.'.'.$same_var);
		$this->db->join($table3, $table1.'.'.$same_var2.' = '.$table3.'.'.$same_var2);
		$data=$this->db->get();
        return $data->result_array();
	}
	public function insert_data($table,$data){
		$res = $this->db->insert($table,$data);
		return $res;
	}
	public function update_data($table,$data,$where){
		$res = $this->db->update($table,$data,$where);
		return $res;
	}
	public function delete_data($table,$where){
		$res = $this->db->delete($table,$where);
		return $res;
	}
        function export_user(){
        $query = $this->db->query("SELECT * from user ORDER BY display_name ASC");
         
        if($query->num_rows() > 0){
            foreach($query->result() as $data){
                $hasil[] = $data;
            }
            return $hasil;
        }
    }
}