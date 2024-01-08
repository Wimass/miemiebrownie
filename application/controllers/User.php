<?php
defined('BASEPATH') or exit('No direct script access allowed');

// Class User
class User extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();

        // Memastikan pengguna sudah login sebelum dapat mengakses halaman ini
        is_logged_in();

        // Mendapatkan data sesi pengguna dari database
        $this->get_datasess = $this->db->get_where('user', ['username' =>
        $this->session->userdata('username')])->row_array();

        // Memuat model M_Front dan M_User
        $this->load->model('M_Front');
        $this->load->model('M_User');

        // Mendapatkan setup aplikasi dari model M_Front
        $this->get_datasetupapp = $this->M_Front->fetchsetupapp();
    }

    // Fungsi untuk menampilkan halaman setting profil pengguna
    public function setting()
    {
        $data = [
            'title' => 'Setting',
            'user' => $this->get_datasess,
            'dataapp' => $this->get_datasetupapp,
            'listremember' => $this->M_User->fetchrememberme()
        ];

        // Memuat tampilan layout dan halaman setting
        $this->load->view('layout/header', $data);
        $this->load->view('layout/navbar', $data);
        $this->load->view('layout/sidebar', $data);
        $this->load->view('user/setting', $data);
        $this->load->view('layout/footer', $data);
    }

    // Fungsi untuk menampilkan halaman profil pengguna
    public function profile()
    {
        $data = [
            'title' => 'My Profile',
            'user' => $this->get_datasess,
            'dataapp' => $this->get_datasetupapp
        ];

        // Memuat tampilan layout dan halaman profil
        $this->load->view('layout/header', $data);
        $this->load->view('layout/navbar', $data);
        $this->load->view('layout/sidebar', $data);
        $this->load->view('user/profile', $data);
        $this->load->view('layout/footer', $data);
    }

    // Fungsi untuk menampilkan halaman data kehadiran pengguna
    public function absensiku()
    {
        $data = [
            'title' => 'Data Kehadiran',
            'user' => $this->get_datasess,
            'dataapp' => $this->get_datasetupapp
        ];

        // Memuat tampilan layout dan halaman absensi
        $this->load->view('layout/header', $data);
        $this->load->view('layout/navbar', $data);
        $this->load->view('layout/sidebar', $data);
        $this->load->view('user/absensi', $data);
        $this->load->view('layout/footer', $data);
    }
}
