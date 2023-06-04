<?php
defined('BASEPATH') or exit('No direct script access allowed');

class M_Settings extends CI_Model
{

    public function __construct()
    {
        parent::__construct();
        $this->appsetting = $this->db->get_where('db_setting', ['status_setting' => 1])->row_array();
    }

    public function init_setting($typeinit)
    {
        if ($typeinit == 1) {
            $data = [
                'status_setting' => 1,
                'timezone' => 'Asia/Jakarta',
                'absen_mulai' => '06:00:00',
                'absen_mulai_to' => '11:00:00',
                'absen_pulang' => '16:00:00'
            ];
           
            $this->db->get_where('db_setting', ['status_setting' => 1])->row_array();
            $this->db->update('db_setting', $data);

        } elseif ($typeinit == 2) {
            $data = [
                'status_setting' => 1,
                'timezone' => 'Asia/Jakarta',
                'absen_mulai' => '06:00:00',
                'absen_mulai_to' => '11:00:00',
                'absen_pulang' => '16:00:00'
            ];
            $this->db->insert('db_setting', $data);
        }
    }
    public function update_setting()
    {

        $sendsave = [
            'timezone' =>  htmlspecialchars($this->input->post('timezone_absen')),
            'absen_mulai' =>  htmlspecialchars($this->input->post('absen_mulai')),
            'absen_mulai_to' =>  htmlspecialchars($this->input->post('absen_sampai')),
            'absen_pulang' =>  htmlspecialchars($this->input->post('absen_pulang_sampai')),
        ];

        $this->db->set($sendsave);
        $this->db->where('status_setting', 1);
        $this->db->update('db_setting', $sendsave);
    }
}
