@extends('frontend.frontend-page-master')
@section('page-title')
    {{__('Order For')}} {{' : '.$order_details->title}}
@endsection
@section('content')
    <section class="order-service-page-content-area padding-100">
        <div class="container">
            <div class="row reorder-xs justify-content-between ">
                <div class="col-lg-6">
                    <div class="order-content-area padding-top-70">
                        <h3 class="order-title">{{get_static_option('order_page_'.$user_select_lang_slug.'_form_title')}}</h3>
                        @include('backend.partials.message')
                        @if($errors->any())
                            <div class="alert alert-danger">
                                <ul>
                                    @foreach($errors->all() as $message)
                                        <li>{{$message}}</li>
                                    @endforeach
                                </ul>
                            </div>
                        @endif
                        <div class="order-tab-wrap">
                            <nav>
                                <div class="nav nav-tabs" role="tablist">
                                    @if(!auth()->check())
                                        <a class="nav-item nav-link active" id="nav-home-tab" data-toggle="tab" href="#nav-home" role="tab"  aria-selected="true"><i class="fas fa-user"></i></a>
                                    @endif
                                    <a class="nav-item nav-link  @if(auth()->check()) active @else disabled @endif" disabled id="nav-profile-tab" data-toggle="tab" href="#nav-profile" role="tab" aria-controls="nav-profile" aria-selected="false"><i class="fas fa-address-book"></i></a>
                                </div>
                            </nav>
                            <div class="tab-content" >
                                @if(!auth()->check())
                                    <div class="tab-pane fade show active" id="nav-home" role="tabpanel">

                                        <div class="checkout-type margin-bottom-30"  @if(auth()->check()) style="display: none"  @endif>
                                            <div class="custom-control custom-switch">
                                                <input type="checkbox" class="custom-control-input" id="guest_logout" name="checkout_type">
                                                <label class="custom-control-label" for="guest_logout">{{__('Guest Order')}}</label>
                                            </div>
                                        </div>

                                        @if(!auth()->check())
                                            <div class="login-form">
                                                <form action="{{route('user.login')}}" method="post" enctype="multipart/form-data" class="account-form" id="login_form_order_page">
                                                    @csrf
                                                    <div class="error-wrap"></div>
                                                    <div class="form-group">
                                                        <input type="text" name="username" class="form-control" placeholder="{{__('Username')}}">
                                                    </div>
                                                    <div class="form-group">
                                                        <input type="password" name="password" class="form-control" placeholder="{{__('Password')}}">
                                                    </div>
                                                    <div class="form-group btn-wrapper">
                                                        <button type="submit" id="login_btn" class="submit-btn">{{__('Login')}}</button>
                                                    </div>
                                                    <div class="row mb-4 rmber-area">
                                                        <div class="col-6">
                                                            <div class="custom-control custom-checkbox mr-sm-2">
                                                                <input type="checkbox" name="remember" class="custom-control-input" id="remember">
                                                                <label class="custom-control-label" for="remember">{{__('Remember Me')}}</label>
                                                            </div>
                                                        </div>
                                                        <div class="col-6 text-right">
                                                            <a class="d-block" href="{{route('user.register')}}">{{__('Haven\'t any account?')}}</a>
                                                            <a href="{{route('user.forget.password')}}">{{__('Forgot Password?')}}</a>
                                                        </div>
                                                    </div>
                                                </form>
                                            </div>
                                        @else
                                            <div class="alert alert-success">
                                                {{__('Your Are Logged In As '. auth()->user()->name)}}
                                            </div>
                                        @endif
                                        @if(!auth()->check())
                                            <div class="next-step">
                                                <button class="next-step-btn boxed-btn" style="display: none" type="button">{{__('Next Step')}}</button>
                                            </div>
                                        @endif
                                    </div>
                                @endif
                                <div class="tab-pane fade @if(auth()->check()) show active @endif" id="nav-profile" role="tabpanel">
                                    @if(env('APP_ENV') == 'development' )
                                        <div class="alert alert-warning alert-dismissible fade show" role="alert">
                                            You can build this form using admin panel <strong>Drag & Drop Form Builder</strong>
                                            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                                <span aria-hidden="true">&times;</span>
                                            </button>
                                        </div>
                                    @endif
                                    <form action="{{route('frontend.order.message')}}" method="post" enctype="multipart/form-data" class="contact-form order-form">
                                        @csrf
                                        <input type="hidden" name="package" value="{{$order_details->id}}">
                                        <input type="hidden" name="captcha_token" id="gcaptcha_token">
                                        <div class="row">
                                            <div class="col-lg-12">
                                                {!! render_form_field_for_frontend(get_static_option('order_page_form_fields')) !!}
                                                {!! render_payment_gateway_for_form() !!}
                                            </div>
                                            <div class="col-lg-12">
                                                <button class="submit-btn width-200" type="submit">{{__('Order Package')}}</button>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="right-content-area">
                        <div class="pricing-table-15">
                            <div class="price-header">
                                <div class="icon"><i class="{{$order_details->icon}}"></i></div>
                                <h3 class="title">{{$order_details->title}}</h3>
                            </div>

                            <div class="price">
                                <span class="dollar"></span>{{amount_with_currency_symbol($order_details->price)}}<span class="month">{{$order_details->type}}</span>
                            </div>
                            <div class="price-body">
                                <ul>
                                    @php
                                        $features = explode(';',$order_details->features);
                                    @endphp
                                    @foreach($features as $item)
                                        <li>{{$item}}</li>
                                    @endforeach
                                </ul>
                            </div>
                            <div class="price-footer">
                                @if(!empty($order_details->url_status))
                                    <a class="order-btn" href="{{route('frontend.plan.order',$order_details->id)}}">{{$order_details->btn_text}}</a>
                                @else
                                    <a class="order-btn" href="{{$order_details->btn_url}}">{{$order_details->btn_text}}</a>
                                @endif
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection
@section('scripts')
    @if(!empty(get_static_option('site_google_captcha_v3_site_key')))
<!--
    <script src="https://www.google.com/recaptcha/api.js?render={{get_static_option('site_google_captcha_v3_site_key')}}"></script>
-->
    @endif
    <script>
        @if(!empty(get_static_option('site_google_captcha_v3_site_key')))
        grecaptcha.ready(function() {
            grecaptcha.execute("{{get_static_option('site_google_captcha_v3_site_key')}}", {action: 'homepage'}).then(function(token) {
                document.getElementById('gcaptcha_token').value = token;
            });
        });
        @endif
    </script>
    <script>
        $(document).ready(function ($) {

            $(document).on('click', '#login_btn', function (e) {
                e.preventDefault();
                var formContainer = $('#login_form_order_page');
                var el = $(this);
                var username = formContainer.find('input[name="username"]').val();
                var password = formContainer.find('input[name="password"]').val();
                var remember = formContainer.find('input[name="remember"]').val();

                el.text('Please Wait');

                $.ajax({
                    type: 'post',
                    url: "{{route('user.ajax.login')}}",
                    data: {
                        _token: "{{csrf_token()}}",
                        username : username,
                        password : password,
                        remember : remember,
                    },
                    success: function (data){
                        if(data.status == 'invalid'){
                            el.text('Login')
                            formContainer.find('.error-wrap').html('<div class="alert alert-danger">'+data.msg+'</div>');
                        }else{
                            formContainer.find('.error-wrap').html('');
                            el.text('Login Success.. Redirecting ..');
                            location.reload();
                        }

                    },
                    error: function (data){
                        var response = data.responseJSON.errors
                        formContainer.find('.error-wrap').html('<ul class="alert alert-danger"></ul>');
                        $.each(response,function (value,index){
                            formContainer.find('.error-wrap ul').append('<li>'+value+'</li>');
                        });
                        el.text('Login');
                    }
                });
            });


            var defaulGateway = $('#site_global_payment_gateway').val();
            $('.payment-gateway-wrapper ul li[data-gateway="'+defaulGateway+'"]').addClass('selected');

            $(document).on('click','.payment-gateway-wrapper > ul > li',function (e) {
                e.preventDefault();
                $(this).addClass('selected').siblings().removeClass('selected');
                $('.payment-gateway-wrapper').find(('input')).val($(this).data('gateway'));
            });

            $(document).on('change','#guest_logout',function (e) {
                e.preventDefault();
                var infoTab = $('#nav-profile-tab');
                var nextBtn = $('.next-step-btn');
                if($(this).is(':checked')){
                    $('.login-form').hide();
                    infoTab.attr('disabled',false).removeClass('disabled');
                    nextBtn.show();
                }else{
                    $('.login-form').show();
                    infoTab.attr('disabled',true).addClass('disabled');
                    nextBtn.hide();
                }
            });
            $(document).on('click','.next-step-btn',function(e){
                var infoTab = $('#nav-profile-tab');
                infoTab.attr('disabled',false).removeClass('disabled').addClass('active').siblings().removeClass('active');
                $('#nav-profile').addClass('show active').siblings().removeClass('show active');
            });

        });
    </script>
@endsection