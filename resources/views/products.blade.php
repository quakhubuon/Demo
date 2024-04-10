@foreach ($products as $key)
    <article class="col-md-4 col-sm-6">
        <div class="thumbnail product">
            <figure>
                <a href="#"><img width="200" height="300" src="{{ asset('./FE/images/' . $key->BOOK_PIC) }}" alt="" /></a>
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