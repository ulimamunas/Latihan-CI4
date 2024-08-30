<?php

namespace Config;

use CodeIgniter\Config\BaseConfig;
use CodeIgniter\Validation\StrictRules\CreditCardRules;
use CodeIgniter\Validation\StrictRules\FileRules;
use CodeIgniter\Validation\StrictRules\FormatRules;
use CodeIgniter\Validation\StrictRules\Rules;

class Validation extends BaseConfig
{
    // --------------------------------------------------------------------
    // Setup
    // --------------------------------------------------------------------

    /**
     * Stores the classes that contain the
     * rules that are available.
     *
     * @var string[]
     */
    public array $ruleSets = [
        Rules::class,
        FormatRules::class,
        FileRules::class,
        CreditCardRules::class,
    ];

    /**
     * Specifies the views that are used to display the
     * errors.
     *
     * @var array<string, string>
     */
    public array $templates = [
        'list'   => 'CodeIgniter\Validation\Views\list',
        'single' => 'CodeIgniter\Validation\Views\single',
    ];

    // --------------------------------------------------------------------
    // Rules
    // --------------------------------------------------------------------

public $barang = [
    'name' => [
        'rules' => 'required|min_length[5]',
    ],
    'price' => [
        'rules' => 'required|integer',
    ],
    'stok'=>[
        'rules' => 'required|integer',
    ],
];

public $barang_errors = [
    'name' => [
        'required' =>'{field} Harus Diisi<br>',
        'min_length' => '{field} Minimal 5 Karakter<br>',
    ],
    'price' => [
        'required' => '{field} Harus Diisi<br>',
        'integer' => '{field} Harus Angka<br>'
    ],
    'stok'=>[
        'required' => '{field} Harus Diisi<br>',
        'integer' => '{field} Harus Angka<br>'
    ],
];

public $reg = [
    'password' => [
        'rules' => 'required|min_length[5]'
    ],
];
public $reg_errors = [
    'password' => [
        'min_length' => 'Password length minimum 8 characters.<br>'
    ],
];
}
