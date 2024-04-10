<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css">
    <link rel="stylesheet" href="{{ asset('FE/css/style.css') }}">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
<!-- jQuery -->
    <link rel="icon" type="image/png" href="https://webdamn.com/wp-content/themes/v2/webdamn.png">
</head>
<body class="">
<div role="navigation" class="navbar navbar-default navbar-static-top">
      <div class="container">
        <div class="navbar-header">
          <button data-target=".navbar-collapse" data-toggle="collapse" class="navbar-toggle" type="button">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a href="" class="navbar-brand">DEMO</a>
        </div>
        <div class="navbar-collapse collapse">
          <ul class="nav navbar-nav">
            <li class="active"><a href="/">Home</a></li>
            <li class="active"><a href="/add_form">Add book</a></li>
          </ul>
         
        </div><!--/.nav-collapse -->
      </div>
    </div>
	<div class="container" style="min-height:500px;">
	<div class="content"> 
	<div class="container-fluid">
		<h2>Example: Add Book</h2>			
        <form action="{{ URL::to('add_book') }}" method="post" enctype="multipart/form-data">
        {{ csrf_field() }}
            <table align='center'>
                <tr><td>Tựa sách</td><td><input type='text' name='title'></td></tr>
                <tr><td>Giá</td><td><input type='text' name='price'></td></tr>
                <tr><td>Mô tả</td><td><input type='text' name='description'></td></tr>
                <tr><td>Tác giả</td><td><input type='text' name='author'></td></tr>
                <tr><td>NXB</td><td><input type='text' name='year'></td></tr>
                <?php
                    use Illuminate\Support\Facades\DB;
                    $data = DB::table('t_category')->get();
                ?>
                <tr>
                    <td>Danh mục</td>
                    <td>
                    <select name='catid'>
                        @foreach ($data as $key)
                        <option value="{{ $key->CAT_ID }}">{{ $key->CAT_NAME }}</option>
                        @endforeach
                    </select>
                    </td>
                </tr>
                <tr><td>Hình ảnh</td<td><input type="file"  name="image"></td></tr>
                <!-- Chưa scale ảnh upload -->
                <tr><td><input type='submit' value='Thêm sách mới'></td><td><input type='reset' value='Làm lại'></td></tr>
            </table>
        </form>
        </div>        
    </div>        	
<div class="insert-post-ads1" style="margin-top:20px;">
</body>
</html>

