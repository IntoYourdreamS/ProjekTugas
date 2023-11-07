<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Siswa extends CI_Controller
{

    public function __construct()
    {
        parent::__construct();
        $this->load->model('Siswa_model', 'siswa');

        $this->form_validation->set_rules('nama_siswa', 'required');
        $this->form_validation->set_rules('jk', 'required');
        $this->form_validation->set_rules('jurusan', 'required');
        $this->form_validation->set_rules('no_induk', 'required');
        $this->form_validation->set_rules('jam', 'required');
        $this->form_validation->set_rules('jam', 'required');
        $this->form_validation->set_rules('jam', 'required');
        $this->form_validation->set_rules('jam', 'required');
        $this->form_validation->set_rules('jam', 'required');
        $this->form_validation->set_rules('jam', 'required');
        $this->form_validation->set_rules('jam', 'required');
        $this->form_validation->set_rules('jam', 'required');
        $this->form_validation->set_rules('jam', 'required');
        $this->form_validation->set_rules('jam', 'required');
        $this->form_validation->set_rules('jam', 'required');
        $this->form_validation->set_rules('jam', 'required');
        $this->form_validation->set_rules('jam', 'required');
        $this->form_validation->set_rules('jam', 'required');
        $this->form_validation->set_rules('jam', 'required');
        $this->form_validation->set_rules('jam', 'required');
        $this->form_validation->set_rules('jam', 'required');
        $this->form_validation->set_rules('jam', 'required');
        $this->form_validation->set_rules('jam', 'required');
        $this->form_validation->set_rules('jam', 'required');
        $this->form_validation->set_rules('jam', 'required');
        $this->form_validation->set_rules('jam', 'required');
        $this->form_validation->set_rules('jam', 'required');
        $this->form_validation->set_rules('jam', 'required');
        $this->form_validation->set_rules('jam', 'required');
        $this->form_validation->set_rules('jam', 'required');
        $this->form_validation->set_rules('jam', 'required');
        $this->form_validation->set_rules('jam', 'required');
        $this->form_validation->set_rules('jam', 'required');
        $this->form_validation->set_rules('jam', 'required');
        $this->form_validation->set_rules('jam', 'required');
        $this->form_validation->set_rules('jam', 'required');
        $this->form_validation->set_rules('jam', 'required');
        $this->form_validation->set_rules('jam', 'required');
        $this->form_validation->set_rules('jam', 'required');
        $this->form_validation->set_rules('jam', 'required');

    }

    public function index()
    {
        $data['title'] = 'Siswa';
        $data['siswa'] = $this->db->get('siswa')->result_array();

        $this->load->view('templates/header', $data);
        $this->load->view('templates/sidebar');
        $this->load->view('siswa/index', $data);
        $this->load->view('templates/footer');
    }

    public function tambah()
    {

        if ($this->form_validation->run() == false) {
            $this->load->view('templates/header');
            $this->load->view('templates/sidebar');
            $this->load->view('siswa/tambah');
            $this->load->view('templates/footer');
        } else {
            $this->siswa->tambahData();
            $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Selesai Ditambah</div>');
            redirect('siswa');
        }
    }

    public function hapus($id)
    {
        $this->siswa->hapusData($id);
        $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Selesai Dihapus</div>');
        redirect('siswa');
    }

    public function ganti($id)
    {
        $this->load->model('Siswa_model', 'siswa');

        $data['menu'] = $this->siswa->getSiswa();
        $data['siswa'] = $this->siswa->getIdSiswa($id);

        $data['jurusan'] = $this->db->get('jurusan')->result_array();
        $data['agama'] = $this->db->get('agama')->result_array();

        if ($this->form_validation->run() == false) {
            $this->load->view('templates/header', $data);
            $this->load->view('siswa/ganti', $data);
            $this->load->view('templates/footer', $data);
        } else {
            $this->siswa->gantiData($id);
            $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Selesai Diganti</div>');
            redirect('siswa');
        }
    }
}
