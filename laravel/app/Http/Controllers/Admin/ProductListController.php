<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\ProductList;

class ProductListController extends Controller
{
    public function ProductListByRemark(Request $request)
    {

        $remark = $request->remark;
        $productList = ProductList::where('remark', $remark)->get();
        return $productList;
    }
    public function ProductListByCategory(Request $request)
    {

        $Category = $request->category;
        $productList = ProductList::where('category', $Category)->get();
        return $productList;
    }
    public function ProductListBySubcategory(Request $request)
    {

        $Category = $request->category;
        $SubCategory = $request->subcategory;
        $productList = ProductList::where('category', $Category)->where('subcategory', $SubCategory)->get();
        return $productList;
    }
}