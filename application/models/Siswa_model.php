<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Siswa_model extends CI_Model
{
    public function getSiswa()
    {
        $query = "SELECT * FROM siswa as a 
                    JOIN jurusan as k ON k.jurusan_id = a.jurusan_id
                    JOIN agama as m ON m.agama_id = a.agama_id
                    ORDER BY a.id
                ";
        return $this->db->query($query)->result_array();
    }

    public function tambahData()
    {
        $data = [
            'nisn' => $this->input->post('nisn'),
            'nama' => $this->input->post('nama'),
            'kelas' => $this->input->post('kelas'),
            'jurusan_id' => $this->input->post('jurusan_id'),
            'alamat' => $this->input->post('alamat'),
            'TTL' => $this->input->post('TTL'),
            'jenis_kelamin' => $this->input->post('jenis_kelamin'),
            'agama_id' => $this->input->post('agama_id'),
            'nama_ayah' => $this->input->post('nama_ayah'),
            'nama_ibu' => $this->input->post('nama_ibu'),
            'nama_wali' => $this->input->post('nama_wali'),
            'hobi' => $this->input->post('hobi'),
        ];
        $this->db->insert('siswa', $data);
    }

    public function hapusData($id)
    {
        $this->db->where('id_siswa', $id);
        $this->db->delete('siswa');
    }

    public function getIdSiswa($id)
    {
        $query = "SELECT * FROM siswa as a 
                    JOIN jurusan as k ON k.jurusan_id = a.jurusan_id
                    JOIN agama as m ON m.agama_id = a.agama_id
                    ORDER BY a.id
                ";
        return $this->db->query($query, ['id' => $id])->row_array();
    }

    public function gantiData()
    {
        $data = [
            'nisn' => $this->input->post('nisn'),
            'nama' => $this->input->post('nama'),
            'kelas' => $this->input->post('kelas'),
            'jurusan_id' => $this->input->post('jurusan_id'),
            'alamat' => $this->input->post('alamat'),
            'TTL' => $this->input->post('TTL'),
            'jenis_kelamin' => $this->input->post('jenis_kelamin'),
            'agama_id' => $this->input->post('agama_id'),
            'nama_ayah' => $this->input->post('nama_ayah'),
            'nama_ibu' => $this->input->post('nama_ibu'),
            'nama_wali' => $this->input->post('nama_wali'),
            'hobi' => $this->input->post('hobi'),
        ];
        $this->db->update('siswa', $data);
    }
}