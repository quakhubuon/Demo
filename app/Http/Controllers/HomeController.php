<?php

namespace App\Http\Controllers;
use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Redirect;

class HomeController extends Controller
{
    public function index()
    {
        $data = DB::table('t_book')->get();
        $data2 = DB::table('t_category')->get();
        return view('welcome')->with(['data' => $data])->with(['data2' => $data2]);
    }

    public function filter(Request $request) {
        $category = $request->category;
        if ($category != '') {
            $products = DB::table('t_book')->whereIn('BOOK_CATID', explode(',', $category))->get();
        } else {
            $products = DB::table('t_book')->get();
        }
        response()->json($products);
        return view('products', compact('products'));
    }

    public function add_form(Request $request) {
        return view('add_form');
    }

    public function add_book(Request $request) {
        $data = array();
        
        $data['BOOK_CATID'] = $request->catid;
        $data['BOOK_TITLE'] = $request->title;
        $data['BOOK_PRICE'] = $request->price;
        $data['BOOK_YEAR'] = $request->year;
        $data['BOOK_AUTHOR'] = $request->author;
        $data['BOOK_DESC'] = $request->description;
        $get_image = $request->file('image');
        if($get_image){
            $new_image = rand(0, 99) . '.' . $get_image->getClientOriginalExtension();
            $get_image->move('FE/images', $new_image);
            $data['BOOK_PIC'] = $new_image;
        } else {
            $data['BOOK_PIC'] = '';
        }
        
        $result = DB::table('t_book')->insert($data);
        
        return Redirect::to('/');
    }

    public function delete($id) {
        DB::table('t_book')->where('BOOK_ID', [$id])->delete();
        return Redirect::to('/');
    }

    public function edit_form($id) {
        $data = DB::table('t_book')->where('BOOK_ID', [$id])->get();
        $data2 = DB::table('t_category')->get();
        return view('edit_form')->with(['products' => $data])->with(['data' => $data2]);
    }

    public function edit_book(Request $request) {
        $data = array();
        
        $data['BOOK_CATID'] = $request->catid;
        $data['BOOK_TITLE'] = $request->title;
        $data['BOOK_PRICE'] = $request->price;
        $data['BOOK_YEAR'] = $request->year;
        $data['BOOK_AUTHOR'] = $request->author;
        $data['BOOK_DESC'] = $request->description;
        $get_image = $request->file('image');
        if($get_image){
            $new_image = rand(0, 99) . '.' . $get_image->getClientOriginalExtension();
            $get_image->move('FE/images', $new_image);
            $data['BOOK_PIC'] = $new_image;
        } 
        
        $result = DB::table('t_book')->where('BOOK_ID', [$request->id])->update($data);
        
        return Redirect::to('/');
    }
}
