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
		<h2>Example: Product Search Filtering using Ajax, PHP & MySQL</h2>			
            <form method="post" id="search_form">               
                <div class="row">                    
                    <aside class="col-lg-3 col-md-4">						
                        <div class="panel list">
                            <div class="panel-heading"><h3 class="panel-title" data-toggle="collapse" data-target="#panelOne" aria-expanded="true">Categories</h3></div>
                            <div class="panel-body collapse in" id="panelOne">
                                <ul class="list-group">
                                @foreach ($data2 as $key)
								<li class="list-group-item">
									<div class="checkbox"><label><input type="checkbox" id="{{ $key->CAT_ID }}" value="{{ $key->CAT_ID }}" class="sort_rang category">{{ $key->CAT_NAME }}</label></div>
								</li>
                                @endforeach ($data2 as $key)
                                </ul>
                            </div>
                        </div>
                    </aside>
                        <section class="col-lg-9 col-md-8">
                        <div class="row">
                            <div id="results">
                            @foreach ($data as $key)
                                <article class="col-md-4 col-sm-6">
                                    <div class="thumbnail product">
                                        <figure>
                                            <a href="#"><img width="200" height="300" src="{{ asset('FE/images/' . $key->BOOK_PIC) }}" alt="" /></a>
                                        </figure>
                                        <div class="caption">
                                            <a href="" class="product-name"></a>
                                            <div class="price">{{ $key->BOOK_PRICE }}</div>
                                            <h6>Title : {{ $key->BOOK_TITLE }}</h6>
                                            <h6>Author : {{ $key->BOOK_AUTHOR }}</h6>
                                            <a href="{{ URL::to('/edit_form/' . $key->BOOK_ID) }}" class="product-name">Edit</a>
                                            <a onclick="return confirm('Bạn có chắc muốn xóa không?');" href="{{ URL::to('/delete/' . $key->BOOK_ID) }}" class="product-name">Delete</a>
                                        </div>
                                    </div>  
                                </article>
                                @endforeach
                            </div>
                        </div>
                    </section>
                </div>
				<input type="hidden" id="totalRecords" value="">
            </form>
        </div>        
    </div>        
    <script>
    $('.category').click(function() {
    var category = [];
    $('.category').each(function() {
        if ($(this).is(":checked")) {
            category.push($(this).val());
        }
    })
    FinalCategory = category.toString();

    $.ajax({
        type: 'GET',
        url: '{{ url("/filter") }}',
        data: 'category=' + FinalCategory,
        success: function(response) {
            console.log(response);
            $("#results").html(response);
        }
    });
});
</script>		
<div class="insert-post-ads1" style="margin-top:20px;">
</body>
</html>

