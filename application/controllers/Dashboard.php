<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Dashboard extends CI_Controller {
	public function index()
	{
		$data['title'] = 'Dashboard';
		$data['siswa'] = $this->db->count_all_results('siswa');
		
		$this->load->view('templates/header', $data);
		$this->load->view('templates/sidebar');
		$this->load->view('dashboard/index', $data);
		$this->load->view('templates/footer');
	}
}
