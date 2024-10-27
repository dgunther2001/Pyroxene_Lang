; ModuleID = '../list/cpp/list.cpp'
source_filename = "../list/cpp/list.cpp"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx14.5.0"

%class.slib_list = type { %"class.std::__1::vector" }
%"class.std::__1::vector" = type { ptr, ptr, %"class.std::__1::__compressed_pair" }
%"class.std::__1::__compressed_pair" = type { %"struct.std::__1::__compressed_pair_elem" }
%"struct.std::__1::__compressed_pair_elem" = type { ptr }
%"class.std::__1::basic_string" = type { %"class.std::__1::__compressed_pair.1" }
%"class.std::__1::__compressed_pair.1" = type { %"struct.std::__1::__compressed_pair_elem.2" }
%"struct.std::__1::__compressed_pair_elem.2" = type { %"struct.std::__1::basic_string<char>::__rep" }
%"struct.std::__1::basic_string<char>::__rep" = type { %union.anon }
%union.anon = type { %"struct.std::__1::basic_string<char>::__long" }
%"struct.std::__1::basic_string<char>::__long" = type { ptr, i64, i64 }
%"class.std::__1::__wrap_iter" = type { ptr }
%"class.std::__1::__wrap_iter.7" = type { ptr }
%"struct.std::__1::__split_buffer" = type { ptr, ptr, ptr, %"class.std::__1::__compressed_pair.34" }
%"class.std::__1::__compressed_pair.34" = type { %"struct.std::__1::__compressed_pair_elem", %"struct.std::__1::__compressed_pair_elem.35" }
%"struct.std::__1::__compressed_pair_elem.35" = type { ptr }
%class.slib_list.8 = type { %"class.std::__1::vector.9" }
%"class.std::__1::vector.9" = type { ptr, ptr, %"class.std::__1::__compressed_pair.10" }
%"class.std::__1::__compressed_pair.10" = type { %"struct.std::__1::__compressed_pair_elem.11" }
%"struct.std::__1::__compressed_pair_elem.11" = type { ptr }
%"class.std::__1::__wrap_iter.16" = type { ptr }
%"class.std::__1::__wrap_iter.17" = type { ptr }
%"struct.std::__1::__split_buffer.38" = type { ptr, ptr, ptr, %"class.std::__1::__compressed_pair.39" }
%"class.std::__1::__compressed_pair.39" = type { %"struct.std::__1::__compressed_pair_elem.11", %"struct.std::__1::__compressed_pair_elem.40" }
%"struct.std::__1::__compressed_pair_elem.40" = type { ptr }
%class.slib_list.18 = type { %"class.std::__1::vector.19" }
%"class.std::__1::vector.19" = type { ptr, ptr, %"class.std::__1::__compressed_pair.20" }
%"class.std::__1::__compressed_pair.20" = type { %"struct.std::__1::__compressed_pair_elem.21" }
%"struct.std::__1::__compressed_pair_elem.21" = type { ptr }
%"class.std::__1::__wrap_iter.22" = type { ptr }
%"class.std::__1::__wrap_iter.23" = type { ptr }
%"struct.std::__1::__split_buffer.47" = type { ptr, ptr, ptr, %"class.std::__1::__compressed_pair.48" }
%"class.std::__1::__compressed_pair.48" = type { %"struct.std::__1::__compressed_pair_elem.21", %"struct.std::__1::__compressed_pair_elem.49" }
%"struct.std::__1::__compressed_pair_elem.49" = type { ptr }
%class.slib_list.24 = type { %"class.std::__1::vector.25" }
%"class.std::__1::vector.25" = type { ptr, i64, %"class.std::__1::__compressed_pair.26" }
%"class.std::__1::__compressed_pair.26" = type { %"struct.std::__1::__compressed_pair_elem.27" }
%"struct.std::__1::__compressed_pair_elem.27" = type { i64 }
%"class.std::__1::__bit_iterator.32" = type <{ ptr, i32, [4 x i8] }>
%"class.std::__1::__bit_iterator" = type <{ ptr, i32, [4 x i8] }>
%"class.std::__1::__bit_reference" = type { ptr, i64 }
%"class.std::__1::allocator.56" = type { i8 }
%"struct.std::__1::__default_init_tag" = type { i8 }
%"struct.std::__1::vector<int>::_ConstructTransaction" = type { ptr, ptr, ptr }
%"class.std::__1::reverse_iterator" = type { ptr, ptr }
%"struct.std::__1::__less" = type { i8 }
%"struct.std::__1::__allocation_result" = type { ptr, i64 }
%"struct.std::__1::pair" = type { %"class.std::__1::reverse_iterator", %"class.std::__1::reverse_iterator" }
%"struct.std::__1::__overload" = type { i8 }
%"struct.std::__1::integral_constant" = type { i8 }
%"class.std::__1::move_iterator" = type { ptr }
%"struct.std::__1::pair.36" = type { ptr, ptr }
%"struct.std::__1::__overload.37" = type { i8 }
%"struct.std::__1::__split_buffer<int, std::__1::allocator<int> &>::_ConstructTransaction" = type { ptr, ptr, ptr }
%"struct.std::__1::random_access_iterator_tag" = type { i8 }
%"struct.std::__1::vector<float>::_ConstructTransaction" = type { ptr, ptr, ptr }
%"class.std::__1::reverse_iterator.42" = type { ptr, ptr }
%"struct.std::__1::__allocation_result.41" = type { ptr, i64 }
%"struct.std::__1::pair.44" = type { %"class.std::__1::reverse_iterator.42", %"class.std::__1::reverse_iterator.42" }
%"class.std::__1::move_iterator.46" = type { ptr }
%"struct.std::__1::pair.45" = type { ptr, ptr }
%"struct.std::__1::__split_buffer<float, std::__1::allocator<float> &>::_ConstructTransaction" = type { ptr, ptr, ptr }
%"struct.std::__1::vector<char>::_ConstructTransaction" = type { ptr, ptr, ptr }
%"class.std::__1::reverse_iterator.51" = type { ptr, ptr }
%"struct.std::__1::__allocation_result.50" = type { ptr, i64 }
%"struct.std::__1::pair.53" = type { %"class.std::__1::reverse_iterator.51", %"class.std::__1::reverse_iterator.51" }
%"class.std::__1::move_iterator.55" = type { ptr }
%"struct.std::__1::pair.54" = type { ptr, ptr }
%"struct.std::__1::__split_buffer<char, std::__1::allocator<char> &>::_ConstructTransaction" = type { ptr, ptr, ptr }
%"struct.std::__1::__allocation_result.59" = type { ptr, i64 }
%"struct.std::__1::pair.60" = type { %"class.std::__1::__bit_iterator", %"class.std::__1::__bit_iterator" }
%"class.std::__1::allocator.29" = type { i8 }
%"struct.std::__1::__overload.61" = type { i8 }
%"class.std::__1::vector<bool>::__destroy_vector" = type { ptr }
%"struct.std::__1::pair.62" = type { ptr, ptr }
%"struct.std::__1::pair.63" = type { ptr, ptr }

@.str = private unnamed_addr constant [28 x i8] c"Insertion index less than 0\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"Index out of range\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"vector\00", align 1
@_ZTISt12length_error = external constant ptr
@_ZTVSt12length_error = external unnamed_addr constant { [5 x ptr] }, align 8
@_ZTISt20bad_array_new_length = external constant ptr
@_ZTISt12out_of_range = external constant ptr
@_ZTVSt12out_of_range = external unnamed_addr constant { [5 x ptr] }, align 8

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define weak_odr ptr @_ZN9slib_listIiEC2Ev(ptr noundef returned %0) unnamed_addr #0 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %class.slib_list, ptr %3, i32 0, i32 0
  %5 = call ptr @_ZNSt3__16vectorIiNS_9allocatorIiEEEC1B8ue170006Ev(ptr noundef %4) #12
  ret ptr %3
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden ptr @_ZNSt3__16vectorIiNS_9allocatorIiEEEC1B8ue170006Ev(ptr noundef returned %0) unnamed_addr #0 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = call ptr @_ZNSt3__16vectorIiNS_9allocatorIiEEEC2B8ue170006Ev(ptr noundef %3) #12
  ret ptr %3
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define weak_odr ptr @_ZN9slib_listIiEC1Ev(ptr noundef returned %0) unnamed_addr #0 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = call ptr @_ZN9slib_listIiEC2Ev(ptr noundef %3)
  ret ptr %3
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define weak_odr void @_ZN9slib_listIiE6insertEii(ptr noundef %0, i32 noundef %1, i32 noundef %2) #1 align 2 personality ptr @__gxx_personality_v0 {
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %"class.std::__1::basic_string", align 8
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = alloca %"class.std::__1::__wrap_iter", align 8
  %11 = alloca %"class.std::__1::__wrap_iter.7", align 8
  %12 = alloca %"class.std::__1::__wrap_iter.7", align 8
  %13 = alloca %"class.std::__1::__wrap_iter.7", align 8
  store ptr %0, ptr %4, align 8
  store i32 %1, ptr %5, align 4
  store i32 %2, ptr %6, align 4
  %14 = load ptr, ptr %4, align 8
  %15 = load i32, ptr %6, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %26

17:                                               ; preds = %3
  %18 = call ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ue170006ILi0EEEPKc(ptr noundef %7, ptr noundef @.str)
  invoke void @_ZN9slib_util10list_errorERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE(ptr noundef nonnull align 8 dereferenceable(24) %7)
          to label %19 unwind label %21

19:                                               ; preds = %17
  %20 = call ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef %7) #12
  br label %26

21:                                               ; preds = %17
  %22 = landingpad { ptr, i32 }
          cleanup
  %23 = extractvalue { ptr, i32 } %22, 0
  store ptr %23, ptr %8, align 8
  %24 = extractvalue { ptr, i32 } %22, 1
  store i32 %24, ptr %9, align 4
  %25 = call ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef %7) #12
  br label %53

26:                                               ; preds = %19, %3
  %27 = load i32, ptr %6, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %class.slib_list, ptr %14, i32 0, i32 0
  %30 = call i64 @_ZNKSt3__16vectorIiNS_9allocatorIiEEE4sizeB8ue170006Ev(ptr noundef %29) #12
  %31 = icmp ugt i64 %28, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = getelementptr inbounds %class.slib_list, ptr %14, i32 0, i32 0
  call void @_ZNSt3__16vectorIiNS_9allocatorIiEEE9push_backB8ue170006ERKi(ptr noundef %33, ptr noundef nonnull align 4 dereferenceable(4) %5)
  br label %52

34:                                               ; preds = %26
  %35 = getelementptr inbounds %class.slib_list, ptr %14, i32 0, i32 0
  %36 = getelementptr inbounds %class.slib_list, ptr %14, i32 0, i32 0
  %37 = call i64 @_ZNSt3__16vectorIiNS_9allocatorIiEEE5beginB8ue170006Ev(ptr noundef %36) #12
  %38 = getelementptr inbounds %"class.std::__1::__wrap_iter.7", ptr %12, i32 0, i32 0
  %39 = inttoptr i64 %37 to ptr
  store ptr %39, ptr %38, align 8
  %40 = load i32, ptr %6, align 4
  %41 = sext i32 %40 to i64
  %42 = call i64 @_ZNKSt3__111__wrap_iterIPiEplB8ue170006El(ptr noundef %12, i64 noundef %41) #12
  %43 = getelementptr inbounds %"class.std::__1::__wrap_iter.7", ptr %11, i32 0, i32 0
  %44 = inttoptr i64 %42 to ptr
  store ptr %44, ptr %43, align 8
  %45 = call ptr @_ZNSt3__111__wrap_iterIPKiEC1B8ue170006IPiEERKNS0_IT_EEPNS_9enable_ifIXsr14is_convertibleIS6_S2_EE5valueEvE4typeE(ptr noundef %10, ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef null) #12
  %46 = getelementptr inbounds %"class.std::__1::__wrap_iter", ptr %10, i32 0, i32 0
  %47 = load ptr, ptr %46, align 8
  %48 = ptrtoint ptr %47 to i64
  %49 = call i64 @_ZNSt3__16vectorIiNS_9allocatorIiEEE6insertENS_11__wrap_iterIPKiEERS5_(ptr noundef %35, i64 %48, ptr noundef nonnull align 4 dereferenceable(4) %5)
  %50 = getelementptr inbounds %"class.std::__1::__wrap_iter.7", ptr %13, i32 0, i32 0
  %51 = inttoptr i64 %49 to ptr
  store ptr %51, ptr %50, align 8
  br label %52

52:                                               ; preds = %34, %32
  ret void

53:                                               ; preds = %21
  %54 = load ptr, ptr %8, align 8
  %55 = load i32, ptr %9, align 4
  %56 = insertvalue { ptr, i32 } undef, ptr %54, 0
  %57 = insertvalue { ptr, i32 } %56, i32 %55, 1
  resume { ptr, i32 } %57
}

declare void @_ZN9slib_util10list_errorERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE(ptr noundef nonnull align 8 dereferenceable(24)) #2

; Function Attrs: noinline optnone ssp uwtable(sync)
define linkonce_odr ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ue170006ILi0EEEPKc(ptr noundef returned %0, ptr noundef %1) unnamed_addr #3 align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = load ptr, ptr %4, align 8
  %7 = call ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ue170006ILi0EEEPKc(ptr noundef %5, ptr noundef %6)
  ret ptr %5
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind
declare ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef returned) unnamed_addr #4

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden i64 @_ZNKSt3__16vectorIiNS_9allocatorIiEEE4sizeB8ue170006Ev(ptr noundef %0) #5 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.std::__1::vector", ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %"class.std::__1::vector", ptr %3, i32 0, i32 0
  %7 = load ptr, ptr %6, align 8
  %8 = ptrtoint ptr %5 to i64
  %9 = ptrtoint ptr %7 to i64
  %10 = sub i64 %8, %9
  %11 = sdiv exact i64 %10, 4
  ret i64 %11
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNSt3__16vectorIiNS_9allocatorIiEEE9push_backB8ue170006ERKi(ptr noundef %0, ptr noundef nonnull align 4 dereferenceable(4) %1) #1 align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = getelementptr inbounds %"class.std::__1::vector", ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 8
  %8 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__16vectorIiNS_9allocatorIiEEE9__end_capB8ue170006Ev(ptr noundef %5) #12
  %9 = load ptr, ptr %8, align 8
  %10 = icmp ne ptr %7, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load ptr, ptr %4, align 8
  call void @_ZNSt3__16vectorIiNS_9allocatorIiEEE22__construct_one_at_endB8ue170006IJRKiEEEvDpOT_(ptr noundef %5, ptr noundef nonnull align 4 dereferenceable(4) %12)
  br label %15

13:                                               ; preds = %2
  %14 = load ptr, ptr %4, align 8
  call void @_ZNSt3__16vectorIiNS_9allocatorIiEEE21__push_back_slow_pathIRKiEEvOT_(ptr noundef %5, ptr noundef nonnull align 4 dereferenceable(4) %14)
  br label %15

15:                                               ; preds = %13, %11
  ret void
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden i64 @_ZNSt3__16vectorIiNS_9allocatorIiEEE6insertENS_11__wrap_iterIPKiEERS5_(ptr noundef %0, i64 %1, ptr noundef nonnull align 4 dereferenceable(4) %2) #1 align 2 personality ptr @__gxx_personality_v0 {
  %4 = alloca %"class.std::__1::__wrap_iter.7", align 8
  %5 = alloca %"class.std::__1::__wrap_iter", align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca %"class.std::__1::__wrap_iter.7", align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca %"struct.std::__1::__split_buffer", align 8
  %13 = alloca ptr, align 8
  %14 = alloca i32, align 4
  %15 = getelementptr inbounds %"class.std::__1::__wrap_iter", ptr %5, i32 0, i32 0
  %16 = inttoptr i64 %1 to ptr
  store ptr %16, ptr %15, align 8
  store ptr %0, ptr %6, align 8
  store ptr %2, ptr %7, align 8
  %17 = load ptr, ptr %6, align 8
  %18 = getelementptr inbounds %"class.std::__1::vector", ptr %17, i32 0, i32 0
  %19 = load ptr, ptr %18, align 8
  %20 = call i64 @_ZNSt3__16vectorIiNS_9allocatorIiEEE5beginB8ue170006Ev(ptr noundef %17) #12
  %21 = getelementptr inbounds %"class.std::__1::__wrap_iter.7", ptr %9, i32 0, i32 0
  %22 = inttoptr i64 %20 to ptr
  store ptr %22, ptr %21, align 8
  %23 = call i64 @_ZNSt3__1miB8ue170006IPKiPiEEDTmicldtfp_4baseEcldtfp0_4baseEERKNS_11__wrap_iterIT_EERKNS5_IT0_EE(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %9) #12
  %24 = getelementptr inbounds i32, ptr %19, i64 %23
  store ptr %24, ptr %8, align 8
  %25 = getelementptr inbounds %"class.std::__1::vector", ptr %17, i32 0, i32 1
  %26 = load ptr, ptr %25, align 8
  %27 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__16vectorIiNS_9allocatorIiEEE9__end_capB8ue170006Ev(ptr noundef %17) #12
  %28 = load ptr, ptr %27, align 8
  %29 = icmp ult ptr %26, %28
  br i1 %29, label %30, label %61

30:                                               ; preds = %3
  %31 = load ptr, ptr %8, align 8
  %32 = getelementptr inbounds %"class.std::__1::vector", ptr %17, i32 0, i32 1
  %33 = load ptr, ptr %32, align 8
  %34 = icmp eq ptr %31, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  %36 = load ptr, ptr %7, align 8
  call void @_ZNSt3__16vectorIiNS_9allocatorIiEEE22__construct_one_at_endB8ue170006IJRKiEEEvDpOT_(ptr noundef %17, ptr noundef nonnull align 4 dereferenceable(4) %36)
  br label %60

37:                                               ; preds = %30
  %38 = load ptr, ptr %8, align 8
  %39 = getelementptr inbounds %"class.std::__1::vector", ptr %17, i32 0, i32 1
  %40 = load ptr, ptr %39, align 8
  %41 = load ptr, ptr %8, align 8
  %42 = getelementptr inbounds i32, ptr %41, i64 1
  call void @_ZNSt3__16vectorIiNS_9allocatorIiEEE12__move_rangeEPiS4_S4_(ptr noundef %17, ptr noundef %38, ptr noundef %40, ptr noundef %42)
  %43 = load ptr, ptr %7, align 8
  %44 = call ptr @_ZNSt3__114pointer_traitsIPKiE10pointer_toB8ue170006ERS1_(ptr noundef nonnull align 4 dereferenceable(4) %43) #12
  store ptr %44, ptr %10, align 8
  %45 = load ptr, ptr %8, align 8
  %46 = load ptr, ptr %10, align 8
  %47 = icmp ule ptr %45, %46
  br i1 %47, label %48, label %56

48:                                               ; preds = %37
  %49 = load ptr, ptr %10, align 8
  %50 = getelementptr inbounds %"class.std::__1::vector", ptr %17, i32 0, i32 1
  %51 = load ptr, ptr %50, align 8
  %52 = icmp ult ptr %49, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %48
  %54 = load ptr, ptr %10, align 8
  %55 = getelementptr inbounds i32, ptr %54, i32 1
  store ptr %55, ptr %10, align 8
  br label %56

56:                                               ; preds = %53, %48, %37
  %57 = load ptr, ptr %10, align 8
  %58 = load i32, ptr %57, align 4
  %59 = load ptr, ptr %8, align 8
  store i32 %58, ptr %59, align 4
  br label %60

60:                                               ; preds = %56, %35
  br label %86

61:                                               ; preds = %3
  %62 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__16vectorIiNS_9allocatorIiEEE7__allocB8ue170006Ev(ptr noundef %17) #12
  store ptr %62, ptr %11, align 8
  %63 = call i64 @_ZNKSt3__16vectorIiNS_9allocatorIiEEE4sizeB8ue170006Ev(ptr noundef %17) #12
  %64 = add i64 %63, 1
  %65 = call i64 @_ZNKSt3__16vectorIiNS_9allocatorIiEEE11__recommendB8ue170006Em(ptr noundef %17, i64 noundef %64)
  %66 = load ptr, ptr %8, align 8
  %67 = getelementptr inbounds %"class.std::__1::vector", ptr %17, i32 0, i32 0
  %68 = load ptr, ptr %67, align 8
  %69 = ptrtoint ptr %66 to i64
  %70 = ptrtoint ptr %68 to i64
  %71 = sub i64 %69, %70
  %72 = sdiv exact i64 %71, 4
  %73 = load ptr, ptr %11, align 8
  %74 = call ptr @_ZNSt3__114__split_bufferIiRNS_9allocatorIiEEEC1EmmS3_(ptr noundef %12, i64 noundef %65, i64 noundef %72, ptr noundef nonnull align 1 dereferenceable(1) %73)
  %75 = load ptr, ptr %7, align 8
  invoke void @_ZNSt3__114__split_bufferIiRNS_9allocatorIiEEE9push_backB8ue170006ERKi(ptr noundef %12, ptr noundef nonnull align 4 dereferenceable(4) %75)
          to label %76 unwind label %81

76:                                               ; preds = %61
  %77 = load ptr, ptr %8, align 8
  %78 = invoke ptr @_ZNSt3__16vectorIiNS_9allocatorIiEEE26__swap_out_circular_bufferERNS_14__split_bufferIiRS2_EEPi(ptr noundef %17, ptr noundef nonnull align 8 dereferenceable(40) %12, ptr noundef %77)
          to label %79 unwind label %81

79:                                               ; preds = %76
  store ptr %78, ptr %8, align 8
  %80 = call ptr @_ZNSt3__114__split_bufferIiRNS_9allocatorIiEEED1Ev(ptr noundef %12) #12
  br label %86

81:                                               ; preds = %76, %61
  %82 = landingpad { ptr, i32 }
          cleanup
  %83 = extractvalue { ptr, i32 } %82, 0
  store ptr %83, ptr %13, align 8
  %84 = extractvalue { ptr, i32 } %82, 1
  store i32 %84, ptr %14, align 4
  %85 = call ptr @_ZNSt3__114__split_bufferIiRNS_9allocatorIiEEED1Ev(ptr noundef %12) #12
  br label %94

86:                                               ; preds = %79, %60
  %87 = load ptr, ptr %8, align 8
  %88 = call i64 @_ZNSt3__16vectorIiNS_9allocatorIiEEE11__make_iterB8ue170006EPi(ptr noundef %17, ptr noundef %87) #12
  %89 = getelementptr inbounds %"class.std::__1::__wrap_iter.7", ptr %4, i32 0, i32 0
  %90 = inttoptr i64 %88 to ptr
  store ptr %90, ptr %89, align 8
  %91 = getelementptr inbounds %"class.std::__1::__wrap_iter.7", ptr %4, i32 0, i32 0
  %92 = load ptr, ptr %91, align 8
  %93 = ptrtoint ptr %92 to i64
  ret i64 %93

94:                                               ; preds = %81
  %95 = load ptr, ptr %13, align 8
  %96 = load i32, ptr %14, align 4
  %97 = insertvalue { ptr, i32 } undef, ptr %95, 0
  %98 = insertvalue { ptr, i32 } %97, i32 %96, 1
  resume { ptr, i32 } %98
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden i64 @_ZNSt3__16vectorIiNS_9allocatorIiEEE5beginB8ue170006Ev(ptr noundef %0) #5 align 2 {
  %2 = alloca %"class.std::__1::__wrap_iter.7", align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %"class.std::__1::vector", ptr %4, i32 0, i32 0
  %6 = load ptr, ptr %5, align 8
  %7 = call i64 @_ZNSt3__16vectorIiNS_9allocatorIiEEE11__make_iterB8ue170006EPi(ptr noundef %4, ptr noundef %6) #12
  %8 = getelementptr inbounds %"class.std::__1::__wrap_iter.7", ptr %2, i32 0, i32 0
  %9 = inttoptr i64 %7 to ptr
  store ptr %9, ptr %8, align 8
  %10 = getelementptr inbounds %"class.std::__1::__wrap_iter.7", ptr %2, i32 0, i32 0
  %11 = load ptr, ptr %10, align 8
  %12 = ptrtoint ptr %11 to i64
  ret i64 %12
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden i64 @_ZNKSt3__111__wrap_iterIPiEplB8ue170006El(ptr noundef %0, i64 noundef %1) #5 align 2 {
  %3 = alloca %"class.std::__1::__wrap_iter.7", align 8
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
  store i64 %1, ptr %5, align 8
  %6 = load ptr, ptr %4, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %3, ptr align 8 %6, i64 8, i1 false)
  %7 = load i64, ptr %5, align 8
  %8 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__111__wrap_iterIPiEpLB8ue170006El(ptr noundef %3, i64 noundef %7) #12
  %9 = getelementptr inbounds %"class.std::__1::__wrap_iter.7", ptr %3, i32 0, i32 0
  %10 = load ptr, ptr %9, align 8
  %11 = ptrtoint ptr %10 to i64
  ret i64 %11
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr ptr @_ZNSt3__111__wrap_iterIPKiEC1B8ue170006IPiEERKNS0_IT_EEPNS_9enable_ifIXsr14is_convertibleIS6_S2_EE5valueEvE4typeE(ptr noundef returned %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2) unnamed_addr #0 align 2 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  %7 = load ptr, ptr %4, align 8
  %8 = load ptr, ptr %5, align 8
  %9 = load ptr, ptr %6, align 8
  %10 = call ptr @_ZNSt3__111__wrap_iterIPKiEC2B8ue170006IPiEERKNS0_IT_EEPNS_9enable_ifIXsr14is_convertibleIS6_S2_EE5valueEvE4typeE(ptr noundef %7, ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef %9) #12
  ret ptr %7
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define weak_odr i32 @_ZN9slib_listIiE6removeEi(ptr noundef %0, i32 noundef %1) #1 align 2 personality ptr @__gxx_personality_v0 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca %"class.std::__1::basic_string", align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %"class.std::__1::__wrap_iter", align 8
  %10 = alloca %"class.std::__1::__wrap_iter.7", align 8
  %11 = alloca %"class.std::__1::__wrap_iter.7", align 8
  %12 = alloca %"class.std::__1::__wrap_iter.7", align 8
  store ptr %0, ptr %3, align 8
  store i32 %1, ptr %4, align 4
  %13 = load ptr, ptr %3, align 8
  %14 = load i32, ptr %4, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %22, label %16

16:                                               ; preds = %2
  %17 = load i32, ptr %4, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %class.slib_list, ptr %13, i32 0, i32 0
  %20 = call i64 @_ZNKSt3__16vectorIiNS_9allocatorIiEEE4sizeB8ue170006Ev(ptr noundef %19) #12
  %21 = icmp uge i64 %18, %20
  br i1 %21, label %22, label %31

22:                                               ; preds = %16, %2
  %23 = call ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ue170006ILi0EEEPKc(ptr noundef %5, ptr noundef @.str.1)
  invoke void @_ZN9slib_util10list_errorERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE(ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %24 unwind label %26

24:                                               ; preds = %22
  %25 = call ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef %5) #12
  br label %31

26:                                               ; preds = %22
  %27 = landingpad { ptr, i32 }
          cleanup
  %28 = extractvalue { ptr, i32 } %27, 0
  store ptr %28, ptr %6, align 8
  %29 = extractvalue { ptr, i32 } %27, 1
  store i32 %29, ptr %7, align 4
  %30 = call ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef %5) #12
  br label %55

31:                                               ; preds = %24, %16
  %32 = getelementptr inbounds %class.slib_list, ptr %13, i32 0, i32 0
  %33 = load i32, ptr %4, align 4
  %34 = sext i32 %33 to i64
  %35 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt3__16vectorIiNS_9allocatorIiEEE2atEm(ptr noundef %32, i64 noundef %34)
  %36 = load i32, ptr %35, align 4
  store i32 %36, ptr %8, align 4
  %37 = getelementptr inbounds %class.slib_list, ptr %13, i32 0, i32 0
  %38 = getelementptr inbounds %class.slib_list, ptr %13, i32 0, i32 0
  %39 = call i64 @_ZNSt3__16vectorIiNS_9allocatorIiEEE5beginB8ue170006Ev(ptr noundef %38) #12
  %40 = getelementptr inbounds %"class.std::__1::__wrap_iter.7", ptr %11, i32 0, i32 0
  %41 = inttoptr i64 %39 to ptr
  store ptr %41, ptr %40, align 8
  %42 = load i32, ptr %4, align 4
  %43 = sext i32 %42 to i64
  %44 = call i64 @_ZNKSt3__111__wrap_iterIPiEplB8ue170006El(ptr noundef %11, i64 noundef %43) #12
  %45 = getelementptr inbounds %"class.std::__1::__wrap_iter.7", ptr %10, i32 0, i32 0
  %46 = inttoptr i64 %44 to ptr
  store ptr %46, ptr %45, align 8
  %47 = call ptr @_ZNSt3__111__wrap_iterIPKiEC1B8ue170006IPiEERKNS0_IT_EEPNS_9enable_ifIXsr14is_convertibleIS6_S2_EE5valueEvE4typeE(ptr noundef %9, ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef null) #12
  %48 = getelementptr inbounds %"class.std::__1::__wrap_iter", ptr %9, i32 0, i32 0
  %49 = load ptr, ptr %48, align 8
  %50 = ptrtoint ptr %49 to i64
  %51 = call i64 @_ZNSt3__16vectorIiNS_9allocatorIiEEE5eraseB8ue170006ENS_11__wrap_iterIPKiEE(ptr noundef %37, i64 %50)
  %52 = getelementptr inbounds %"class.std::__1::__wrap_iter.7", ptr %12, i32 0, i32 0
  %53 = inttoptr i64 %51 to ptr
  store ptr %53, ptr %52, align 8
  %54 = load i32, ptr %8, align 4
  ret i32 %54

55:                                               ; preds = %26
  %56 = load ptr, ptr %6, align 8
  %57 = load i32, ptr %7, align 4
  %58 = insertvalue { ptr, i32 } undef, ptr %56, 0
  %59 = insertvalue { ptr, i32 } %58, i32 %57, 1
  resume { ptr, i32 } %59
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt3__16vectorIiNS_9allocatorIiEEE2atEm(ptr noundef %0, i64 noundef %1) #1 align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  store ptr %0, ptr %3, align 8
  store i64 %1, ptr %4, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = load i64, ptr %4, align 8
  %7 = call i64 @_ZNKSt3__16vectorIiNS_9allocatorIiEEE4sizeB8ue170006Ev(ptr noundef %5) #12
  %8 = icmp uge i64 %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  call void @_ZNKSt3__16vectorIiNS_9allocatorIiEEE20__throw_out_of_rangeB8ue170006Ev(ptr noundef %5) #13
  unreachable

10:                                               ; preds = %2
  %11 = getelementptr inbounds %"class.std::__1::vector", ptr %5, i32 0, i32 0
  %12 = load ptr, ptr %11, align 8
  %13 = load i64, ptr %4, align 8
  %14 = getelementptr inbounds i32, ptr %12, i64 %13
  ret ptr %14
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden i64 @_ZNSt3__16vectorIiNS_9allocatorIiEEE5eraseB8ue170006ENS_11__wrap_iterIPKiEE(ptr noundef %0, i64 %1) #1 align 2 {
  %3 = alloca %"class.std::__1::__wrap_iter.7", align 8
  %4 = alloca %"class.std::__1::__wrap_iter", align 8
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  %7 = alloca %"class.std::__1::__wrap_iter", align 8
  %8 = alloca ptr, align 8
  %9 = getelementptr inbounds %"class.std::__1::__wrap_iter", ptr %4, i32 0, i32 0
  %10 = inttoptr i64 %1 to ptr
  store ptr %10, ptr %9, align 8
  store ptr %0, ptr %5, align 8
  %11 = load ptr, ptr %5, align 8
  %12 = call i64 @_ZNKSt3__16vectorIiNS_9allocatorIiEEE6cbeginB8ue170006Ev(ptr noundef %11) #12
  %13 = getelementptr inbounds %"class.std::__1::__wrap_iter", ptr %7, i32 0, i32 0
  %14 = inttoptr i64 %12 to ptr
  store ptr %14, ptr %13, align 8
  %15 = call i64 @_ZNSt3__1miB8ue170006IPKiS2_EEDTmicldtfp_4baseEcldtfp0_4baseEERKNS_11__wrap_iterIT_EERKNS4_IT0_EE(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %7) #12
  store i64 %15, ptr %6, align 8
  %16 = getelementptr inbounds %"class.std::__1::vector", ptr %11, i32 0, i32 0
  %17 = load ptr, ptr %16, align 8
  %18 = load i64, ptr %6, align 8
  %19 = getelementptr inbounds i32, ptr %17, i64 %18
  store ptr %19, ptr %8, align 8
  %20 = load ptr, ptr %8, align 8
  %21 = getelementptr inbounds i32, ptr %20, i64 1
  %22 = getelementptr inbounds %"class.std::__1::vector", ptr %11, i32 0, i32 1
  %23 = load ptr, ptr %22, align 8
  %24 = load ptr, ptr %8, align 8
  %25 = call ptr @_ZNSt3__14moveB8ue170006IPiS1_EET0_T_S3_S2_(ptr noundef %21, ptr noundef %23, ptr noundef %24)
  call void @_ZNSt3__16vectorIiNS_9allocatorIiEEE17__destruct_at_endB8ue170006EPi(ptr noundef %11, ptr noundef %25) #12
  %26 = load ptr, ptr %8, align 8
  %27 = call i64 @_ZNSt3__16vectorIiNS_9allocatorIiEEE11__make_iterB8ue170006EPi(ptr noundef %11, ptr noundef %26) #12
  %28 = getelementptr inbounds %"class.std::__1::__wrap_iter.7", ptr %3, i32 0, i32 0
  %29 = inttoptr i64 %27 to ptr
  store ptr %29, ptr %28, align 8
  %30 = getelementptr inbounds %"class.std::__1::__wrap_iter.7", ptr %3, i32 0, i32 0
  %31 = load ptr, ptr %30, align 8
  %32 = ptrtoint ptr %31 to i64
  ret i64 %32
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define weak_odr i32 @_ZN9slib_listIiE2atEi(ptr noundef %0, i32 noundef %1) #1 align 2 personality ptr @__gxx_personality_v0 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca %"class.std::__1::basic_string", align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  store i32 %1, ptr %4, align 4
  %8 = load ptr, ptr %3, align 8
  %9 = load i32, ptr %4, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %17, label %11

11:                                               ; preds = %2
  %12 = load i32, ptr %4, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %class.slib_list, ptr %8, i32 0, i32 0
  %15 = call i64 @_ZNKSt3__16vectorIiNS_9allocatorIiEEE4sizeB8ue170006Ev(ptr noundef %14) #12
  %16 = icmp uge i64 %13, %15
  br i1 %16, label %17, label %26

17:                                               ; preds = %11, %2
  %18 = call ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ue170006ILi0EEEPKc(ptr noundef %5, ptr noundef @.str.1)
  invoke void @_ZN9slib_util10list_errorERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE(ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %19 unwind label %21

19:                                               ; preds = %17
  %20 = call ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef %5) #12
  br label %26

21:                                               ; preds = %17
  %22 = landingpad { ptr, i32 }
          cleanup
  %23 = extractvalue { ptr, i32 } %22, 0
  store ptr %23, ptr %6, align 8
  %24 = extractvalue { ptr, i32 } %22, 1
  store i32 %24, ptr %7, align 4
  %25 = call ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef %5) #12
  br label %32

26:                                               ; preds = %19, %11
  %27 = getelementptr inbounds %class.slib_list, ptr %8, i32 0, i32 0
  %28 = load i32, ptr %4, align 4
  %29 = sext i32 %28 to i64
  %30 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt3__16vectorIiNS_9allocatorIiEEE2atEm(ptr noundef %27, i64 noundef %29)
  %31 = load i32, ptr %30, align 4
  ret i32 %31

32:                                               ; preds = %21
  %33 = load ptr, ptr %6, align 8
  %34 = load i32, ptr %7, align 4
  %35 = insertvalue { ptr, i32 } undef, ptr %33, 0
  %36 = insertvalue { ptr, i32 } %35, i32 %34, 1
  resume { ptr, i32 } %36
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define weak_odr i32 @_ZN9slib_listIiE4sizeEv(ptr noundef %0) #5 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %class.slib_list, ptr %3, i32 0, i32 0
  %5 = call i64 @_ZNKSt3__16vectorIiNS_9allocatorIiEEE4sizeB8ue170006Ev(ptr noundef %4) #12
  %6 = trunc i64 %5 to i32
  ret i32 %6
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define weak_odr ptr @_ZN9slib_listIfEC2Ev(ptr noundef returned %0) unnamed_addr #0 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %class.slib_list.8, ptr %3, i32 0, i32 0
  %5 = call ptr @_ZNSt3__16vectorIfNS_9allocatorIfEEEC1B8ue170006Ev(ptr noundef %4) #12
  ret ptr %3
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden ptr @_ZNSt3__16vectorIfNS_9allocatorIfEEEC1B8ue170006Ev(ptr noundef returned %0) unnamed_addr #0 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = call ptr @_ZNSt3__16vectorIfNS_9allocatorIfEEEC2B8ue170006Ev(ptr noundef %3) #12
  ret ptr %3
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define weak_odr ptr @_ZN9slib_listIfEC1Ev(ptr noundef returned %0) unnamed_addr #0 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = call ptr @_ZN9slib_listIfEC2Ev(ptr noundef %3)
  ret ptr %3
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define weak_odr void @_ZN9slib_listIfE6insertEfi(ptr noundef %0, float noundef %1, i32 noundef %2) #1 align 2 personality ptr @__gxx_personality_v0 {
  %4 = alloca ptr, align 8
  %5 = alloca float, align 4
  %6 = alloca i32, align 4
  %7 = alloca %"class.std::__1::basic_string", align 8
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = alloca %"class.std::__1::__wrap_iter.16", align 8
  %11 = alloca %"class.std::__1::__wrap_iter.17", align 8
  %12 = alloca %"class.std::__1::__wrap_iter.17", align 8
  %13 = alloca %"class.std::__1::__wrap_iter.17", align 8
  store ptr %0, ptr %4, align 8
  store float %1, ptr %5, align 4
  store i32 %2, ptr %6, align 4
  %14 = load ptr, ptr %4, align 8
  %15 = load i32, ptr %6, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %26

17:                                               ; preds = %3
  %18 = call ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ue170006ILi0EEEPKc(ptr noundef %7, ptr noundef @.str)
  invoke void @_ZN9slib_util10list_errorERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE(ptr noundef nonnull align 8 dereferenceable(24) %7)
          to label %19 unwind label %21

19:                                               ; preds = %17
  %20 = call ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef %7) #12
  br label %26

21:                                               ; preds = %17
  %22 = landingpad { ptr, i32 }
          cleanup
  %23 = extractvalue { ptr, i32 } %22, 0
  store ptr %23, ptr %8, align 8
  %24 = extractvalue { ptr, i32 } %22, 1
  store i32 %24, ptr %9, align 4
  %25 = call ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef %7) #12
  br label %53

26:                                               ; preds = %19, %3
  %27 = load i32, ptr %6, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %class.slib_list.8, ptr %14, i32 0, i32 0
  %30 = call i64 @_ZNKSt3__16vectorIfNS_9allocatorIfEEE4sizeB8ue170006Ev(ptr noundef %29) #12
  %31 = icmp ugt i64 %28, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = getelementptr inbounds %class.slib_list.8, ptr %14, i32 0, i32 0
  call void @_ZNSt3__16vectorIfNS_9allocatorIfEEE9push_backB8ue170006ERKf(ptr noundef %33, ptr noundef nonnull align 4 dereferenceable(4) %5)
  br label %52

34:                                               ; preds = %26
  %35 = getelementptr inbounds %class.slib_list.8, ptr %14, i32 0, i32 0
  %36 = getelementptr inbounds %class.slib_list.8, ptr %14, i32 0, i32 0
  %37 = call i64 @_ZNSt3__16vectorIfNS_9allocatorIfEEE5beginB8ue170006Ev(ptr noundef %36) #12
  %38 = getelementptr inbounds %"class.std::__1::__wrap_iter.17", ptr %12, i32 0, i32 0
  %39 = inttoptr i64 %37 to ptr
  store ptr %39, ptr %38, align 8
  %40 = load i32, ptr %6, align 4
  %41 = sext i32 %40 to i64
  %42 = call i64 @_ZNKSt3__111__wrap_iterIPfEplB8ue170006El(ptr noundef %12, i64 noundef %41) #12
  %43 = getelementptr inbounds %"class.std::__1::__wrap_iter.17", ptr %11, i32 0, i32 0
  %44 = inttoptr i64 %42 to ptr
  store ptr %44, ptr %43, align 8
  %45 = call ptr @_ZNSt3__111__wrap_iterIPKfEC1B8ue170006IPfEERKNS0_IT_EEPNS_9enable_ifIXsr14is_convertibleIS6_S2_EE5valueEvE4typeE(ptr noundef %10, ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef null) #12
  %46 = getelementptr inbounds %"class.std::__1::__wrap_iter.16", ptr %10, i32 0, i32 0
  %47 = load ptr, ptr %46, align 8
  %48 = ptrtoint ptr %47 to i64
  %49 = call i64 @_ZNSt3__16vectorIfNS_9allocatorIfEEE6insertENS_11__wrap_iterIPKfEERS5_(ptr noundef %35, i64 %48, ptr noundef nonnull align 4 dereferenceable(4) %5)
  %50 = getelementptr inbounds %"class.std::__1::__wrap_iter.17", ptr %13, i32 0, i32 0
  %51 = inttoptr i64 %49 to ptr
  store ptr %51, ptr %50, align 8
  br label %52

52:                                               ; preds = %34, %32
  ret void

53:                                               ; preds = %21
  %54 = load ptr, ptr %8, align 8
  %55 = load i32, ptr %9, align 4
  %56 = insertvalue { ptr, i32 } undef, ptr %54, 0
  %57 = insertvalue { ptr, i32 } %56, i32 %55, 1
  resume { ptr, i32 } %57
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden i64 @_ZNKSt3__16vectorIfNS_9allocatorIfEEE4sizeB8ue170006Ev(ptr noundef %0) #5 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.std::__1::vector.9", ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %"class.std::__1::vector.9", ptr %3, i32 0, i32 0
  %7 = load ptr, ptr %6, align 8
  %8 = ptrtoint ptr %5 to i64
  %9 = ptrtoint ptr %7 to i64
  %10 = sub i64 %8, %9
  %11 = sdiv exact i64 %10, 4
  ret i64 %11
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNSt3__16vectorIfNS_9allocatorIfEEE9push_backB8ue170006ERKf(ptr noundef %0, ptr noundef nonnull align 4 dereferenceable(4) %1) #1 align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = getelementptr inbounds %"class.std::__1::vector.9", ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 8
  %8 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__16vectorIfNS_9allocatorIfEEE9__end_capB8ue170006Ev(ptr noundef %5) #12
  %9 = load ptr, ptr %8, align 8
  %10 = icmp ne ptr %7, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load ptr, ptr %4, align 8
  call void @_ZNSt3__16vectorIfNS_9allocatorIfEEE22__construct_one_at_endB8ue170006IJRKfEEEvDpOT_(ptr noundef %5, ptr noundef nonnull align 4 dereferenceable(4) %12)
  br label %15

13:                                               ; preds = %2
  %14 = load ptr, ptr %4, align 8
  call void @_ZNSt3__16vectorIfNS_9allocatorIfEEE21__push_back_slow_pathIRKfEEvOT_(ptr noundef %5, ptr noundef nonnull align 4 dereferenceable(4) %14)
  br label %15

15:                                               ; preds = %13, %11
  ret void
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden i64 @_ZNSt3__16vectorIfNS_9allocatorIfEEE6insertENS_11__wrap_iterIPKfEERS5_(ptr noundef %0, i64 %1, ptr noundef nonnull align 4 dereferenceable(4) %2) #1 align 2 personality ptr @__gxx_personality_v0 {
  %4 = alloca %"class.std::__1::__wrap_iter.17", align 8
  %5 = alloca %"class.std::__1::__wrap_iter.16", align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca %"class.std::__1::__wrap_iter.17", align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca %"struct.std::__1::__split_buffer.38", align 8
  %13 = alloca ptr, align 8
  %14 = alloca i32, align 4
  %15 = getelementptr inbounds %"class.std::__1::__wrap_iter.16", ptr %5, i32 0, i32 0
  %16 = inttoptr i64 %1 to ptr
  store ptr %16, ptr %15, align 8
  store ptr %0, ptr %6, align 8
  store ptr %2, ptr %7, align 8
  %17 = load ptr, ptr %6, align 8
  %18 = getelementptr inbounds %"class.std::__1::vector.9", ptr %17, i32 0, i32 0
  %19 = load ptr, ptr %18, align 8
  %20 = call i64 @_ZNSt3__16vectorIfNS_9allocatorIfEEE5beginB8ue170006Ev(ptr noundef %17) #12
  %21 = getelementptr inbounds %"class.std::__1::__wrap_iter.17", ptr %9, i32 0, i32 0
  %22 = inttoptr i64 %20 to ptr
  store ptr %22, ptr %21, align 8
  %23 = call i64 @_ZNSt3__1miB8ue170006IPKfPfEEDTmicldtfp_4baseEcldtfp0_4baseEERKNS_11__wrap_iterIT_EERKNS5_IT0_EE(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %9) #12
  %24 = getelementptr inbounds float, ptr %19, i64 %23
  store ptr %24, ptr %8, align 8
  %25 = getelementptr inbounds %"class.std::__1::vector.9", ptr %17, i32 0, i32 1
  %26 = load ptr, ptr %25, align 8
  %27 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__16vectorIfNS_9allocatorIfEEE9__end_capB8ue170006Ev(ptr noundef %17) #12
  %28 = load ptr, ptr %27, align 8
  %29 = icmp ult ptr %26, %28
  br i1 %29, label %30, label %61

30:                                               ; preds = %3
  %31 = load ptr, ptr %8, align 8
  %32 = getelementptr inbounds %"class.std::__1::vector.9", ptr %17, i32 0, i32 1
  %33 = load ptr, ptr %32, align 8
  %34 = icmp eq ptr %31, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  %36 = load ptr, ptr %7, align 8
  call void @_ZNSt3__16vectorIfNS_9allocatorIfEEE22__construct_one_at_endB8ue170006IJRKfEEEvDpOT_(ptr noundef %17, ptr noundef nonnull align 4 dereferenceable(4) %36)
  br label %60

37:                                               ; preds = %30
  %38 = load ptr, ptr %8, align 8
  %39 = getelementptr inbounds %"class.std::__1::vector.9", ptr %17, i32 0, i32 1
  %40 = load ptr, ptr %39, align 8
  %41 = load ptr, ptr %8, align 8
  %42 = getelementptr inbounds float, ptr %41, i64 1
  call void @_ZNSt3__16vectorIfNS_9allocatorIfEEE12__move_rangeEPfS4_S4_(ptr noundef %17, ptr noundef %38, ptr noundef %40, ptr noundef %42)
  %43 = load ptr, ptr %7, align 8
  %44 = call ptr @_ZNSt3__114pointer_traitsIPKfE10pointer_toB8ue170006ERS1_(ptr noundef nonnull align 4 dereferenceable(4) %43) #12
  store ptr %44, ptr %10, align 8
  %45 = load ptr, ptr %8, align 8
  %46 = load ptr, ptr %10, align 8
  %47 = icmp ule ptr %45, %46
  br i1 %47, label %48, label %56

48:                                               ; preds = %37
  %49 = load ptr, ptr %10, align 8
  %50 = getelementptr inbounds %"class.std::__1::vector.9", ptr %17, i32 0, i32 1
  %51 = load ptr, ptr %50, align 8
  %52 = icmp ult ptr %49, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %48
  %54 = load ptr, ptr %10, align 8
  %55 = getelementptr inbounds float, ptr %54, i32 1
  store ptr %55, ptr %10, align 8
  br label %56

56:                                               ; preds = %53, %48, %37
  %57 = load ptr, ptr %10, align 8
  %58 = load float, ptr %57, align 4
  %59 = load ptr, ptr %8, align 8
  store float %58, ptr %59, align 4
  br label %60

60:                                               ; preds = %56, %35
  br label %86

61:                                               ; preds = %3
  %62 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__16vectorIfNS_9allocatorIfEEE7__allocB8ue170006Ev(ptr noundef %17) #12
  store ptr %62, ptr %11, align 8
  %63 = call i64 @_ZNKSt3__16vectorIfNS_9allocatorIfEEE4sizeB8ue170006Ev(ptr noundef %17) #12
  %64 = add i64 %63, 1
  %65 = call i64 @_ZNKSt3__16vectorIfNS_9allocatorIfEEE11__recommendB8ue170006Em(ptr noundef %17, i64 noundef %64)
  %66 = load ptr, ptr %8, align 8
  %67 = getelementptr inbounds %"class.std::__1::vector.9", ptr %17, i32 0, i32 0
  %68 = load ptr, ptr %67, align 8
  %69 = ptrtoint ptr %66 to i64
  %70 = ptrtoint ptr %68 to i64
  %71 = sub i64 %69, %70
  %72 = sdiv exact i64 %71, 4
  %73 = load ptr, ptr %11, align 8
  %74 = call ptr @_ZNSt3__114__split_bufferIfRNS_9allocatorIfEEEC1EmmS3_(ptr noundef %12, i64 noundef %65, i64 noundef %72, ptr noundef nonnull align 1 dereferenceable(1) %73)
  %75 = load ptr, ptr %7, align 8
  invoke void @_ZNSt3__114__split_bufferIfRNS_9allocatorIfEEE9push_backB8ue170006ERKf(ptr noundef %12, ptr noundef nonnull align 4 dereferenceable(4) %75)
          to label %76 unwind label %81

76:                                               ; preds = %61
  %77 = load ptr, ptr %8, align 8
  %78 = invoke ptr @_ZNSt3__16vectorIfNS_9allocatorIfEEE26__swap_out_circular_bufferERNS_14__split_bufferIfRS2_EEPf(ptr noundef %17, ptr noundef nonnull align 8 dereferenceable(40) %12, ptr noundef %77)
          to label %79 unwind label %81

79:                                               ; preds = %76
  store ptr %78, ptr %8, align 8
  %80 = call ptr @_ZNSt3__114__split_bufferIfRNS_9allocatorIfEEED1Ev(ptr noundef %12) #12
  br label %86

81:                                               ; preds = %76, %61
  %82 = landingpad { ptr, i32 }
          cleanup
  %83 = extractvalue { ptr, i32 } %82, 0
  store ptr %83, ptr %13, align 8
  %84 = extractvalue { ptr, i32 } %82, 1
  store i32 %84, ptr %14, align 4
  %85 = call ptr @_ZNSt3__114__split_bufferIfRNS_9allocatorIfEEED1Ev(ptr noundef %12) #12
  br label %94

86:                                               ; preds = %79, %60
  %87 = load ptr, ptr %8, align 8
  %88 = call i64 @_ZNSt3__16vectorIfNS_9allocatorIfEEE11__make_iterB8ue170006EPf(ptr noundef %17, ptr noundef %87) #12
  %89 = getelementptr inbounds %"class.std::__1::__wrap_iter.17", ptr %4, i32 0, i32 0
  %90 = inttoptr i64 %88 to ptr
  store ptr %90, ptr %89, align 8
  %91 = getelementptr inbounds %"class.std::__1::__wrap_iter.17", ptr %4, i32 0, i32 0
  %92 = load ptr, ptr %91, align 8
  %93 = ptrtoint ptr %92 to i64
  ret i64 %93

94:                                               ; preds = %81
  %95 = load ptr, ptr %13, align 8
  %96 = load i32, ptr %14, align 4
  %97 = insertvalue { ptr, i32 } undef, ptr %95, 0
  %98 = insertvalue { ptr, i32 } %97, i32 %96, 1
  resume { ptr, i32 } %98
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden i64 @_ZNSt3__16vectorIfNS_9allocatorIfEEE5beginB8ue170006Ev(ptr noundef %0) #5 align 2 {
  %2 = alloca %"class.std::__1::__wrap_iter.17", align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %"class.std::__1::vector.9", ptr %4, i32 0, i32 0
  %6 = load ptr, ptr %5, align 8
  %7 = call i64 @_ZNSt3__16vectorIfNS_9allocatorIfEEE11__make_iterB8ue170006EPf(ptr noundef %4, ptr noundef %6) #12
  %8 = getelementptr inbounds %"class.std::__1::__wrap_iter.17", ptr %2, i32 0, i32 0
  %9 = inttoptr i64 %7 to ptr
  store ptr %9, ptr %8, align 8
  %10 = getelementptr inbounds %"class.std::__1::__wrap_iter.17", ptr %2, i32 0, i32 0
  %11 = load ptr, ptr %10, align 8
  %12 = ptrtoint ptr %11 to i64
  ret i64 %12
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden i64 @_ZNKSt3__111__wrap_iterIPfEplB8ue170006El(ptr noundef %0, i64 noundef %1) #5 align 2 {
  %3 = alloca %"class.std::__1::__wrap_iter.17", align 8
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
  store i64 %1, ptr %5, align 8
  %6 = load ptr, ptr %4, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %3, ptr align 8 %6, i64 8, i1 false)
  %7 = load i64, ptr %5, align 8
  %8 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__111__wrap_iterIPfEpLB8ue170006El(ptr noundef %3, i64 noundef %7) #12
  %9 = getelementptr inbounds %"class.std::__1::__wrap_iter.17", ptr %3, i32 0, i32 0
  %10 = load ptr, ptr %9, align 8
  %11 = ptrtoint ptr %10 to i64
  ret i64 %11
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr ptr @_ZNSt3__111__wrap_iterIPKfEC1B8ue170006IPfEERKNS0_IT_EEPNS_9enable_ifIXsr14is_convertibleIS6_S2_EE5valueEvE4typeE(ptr noundef returned %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2) unnamed_addr #0 align 2 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  %7 = load ptr, ptr %4, align 8
  %8 = load ptr, ptr %5, align 8
  %9 = load ptr, ptr %6, align 8
  %10 = call ptr @_ZNSt3__111__wrap_iterIPKfEC2B8ue170006IPfEERKNS0_IT_EEPNS_9enable_ifIXsr14is_convertibleIS6_S2_EE5valueEvE4typeE(ptr noundef %7, ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef %9) #12
  ret ptr %7
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define weak_odr float @_ZN9slib_listIfE6removeEi(ptr noundef %0, i32 noundef %1) #1 align 2 personality ptr @__gxx_personality_v0 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca %"class.std::__1::basic_string", align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca float, align 4
  %9 = alloca %"class.std::__1::__wrap_iter.16", align 8
  %10 = alloca %"class.std::__1::__wrap_iter.17", align 8
  %11 = alloca %"class.std::__1::__wrap_iter.17", align 8
  %12 = alloca %"class.std::__1::__wrap_iter.17", align 8
  store ptr %0, ptr %3, align 8
  store i32 %1, ptr %4, align 4
  %13 = load ptr, ptr %3, align 8
  %14 = load i32, ptr %4, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %22, label %16

16:                                               ; preds = %2
  %17 = load i32, ptr %4, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %class.slib_list.8, ptr %13, i32 0, i32 0
  %20 = call i64 @_ZNKSt3__16vectorIfNS_9allocatorIfEEE4sizeB8ue170006Ev(ptr noundef %19) #12
  %21 = icmp uge i64 %18, %20
  br i1 %21, label %22, label %31

22:                                               ; preds = %16, %2
  %23 = call ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ue170006ILi0EEEPKc(ptr noundef %5, ptr noundef @.str.1)
  invoke void @_ZN9slib_util10list_errorERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE(ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %24 unwind label %26

24:                                               ; preds = %22
  %25 = call ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef %5) #12
  br label %31

26:                                               ; preds = %22
  %27 = landingpad { ptr, i32 }
          cleanup
  %28 = extractvalue { ptr, i32 } %27, 0
  store ptr %28, ptr %6, align 8
  %29 = extractvalue { ptr, i32 } %27, 1
  store i32 %29, ptr %7, align 4
  %30 = call ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef %5) #12
  br label %55

31:                                               ; preds = %24, %16
  %32 = getelementptr inbounds %class.slib_list.8, ptr %13, i32 0, i32 0
  %33 = load i32, ptr %4, align 4
  %34 = sext i32 %33 to i64
  %35 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt3__16vectorIfNS_9allocatorIfEEE2atEm(ptr noundef %32, i64 noundef %34)
  %36 = load float, ptr %35, align 4
  store float %36, ptr %8, align 4
  %37 = getelementptr inbounds %class.slib_list.8, ptr %13, i32 0, i32 0
  %38 = getelementptr inbounds %class.slib_list.8, ptr %13, i32 0, i32 0
  %39 = call i64 @_ZNSt3__16vectorIfNS_9allocatorIfEEE5beginB8ue170006Ev(ptr noundef %38) #12
  %40 = getelementptr inbounds %"class.std::__1::__wrap_iter.17", ptr %11, i32 0, i32 0
  %41 = inttoptr i64 %39 to ptr
  store ptr %41, ptr %40, align 8
  %42 = load i32, ptr %4, align 4
  %43 = sext i32 %42 to i64
  %44 = call i64 @_ZNKSt3__111__wrap_iterIPfEplB8ue170006El(ptr noundef %11, i64 noundef %43) #12
  %45 = getelementptr inbounds %"class.std::__1::__wrap_iter.17", ptr %10, i32 0, i32 0
  %46 = inttoptr i64 %44 to ptr
  store ptr %46, ptr %45, align 8
  %47 = call ptr @_ZNSt3__111__wrap_iterIPKfEC1B8ue170006IPfEERKNS0_IT_EEPNS_9enable_ifIXsr14is_convertibleIS6_S2_EE5valueEvE4typeE(ptr noundef %9, ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef null) #12
  %48 = getelementptr inbounds %"class.std::__1::__wrap_iter.16", ptr %9, i32 0, i32 0
  %49 = load ptr, ptr %48, align 8
  %50 = ptrtoint ptr %49 to i64
  %51 = call i64 @_ZNSt3__16vectorIfNS_9allocatorIfEEE5eraseB8ue170006ENS_11__wrap_iterIPKfEE(ptr noundef %37, i64 %50)
  %52 = getelementptr inbounds %"class.std::__1::__wrap_iter.17", ptr %12, i32 0, i32 0
  %53 = inttoptr i64 %51 to ptr
  store ptr %53, ptr %52, align 8
  %54 = load float, ptr %8, align 4
  ret float %54

55:                                               ; preds = %26
  %56 = load ptr, ptr %6, align 8
  %57 = load i32, ptr %7, align 4
  %58 = insertvalue { ptr, i32 } undef, ptr %56, 0
  %59 = insertvalue { ptr, i32 } %58, i32 %57, 1
  resume { ptr, i32 } %59
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt3__16vectorIfNS_9allocatorIfEEE2atEm(ptr noundef %0, i64 noundef %1) #1 align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  store ptr %0, ptr %3, align 8
  store i64 %1, ptr %4, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = load i64, ptr %4, align 8
  %7 = call i64 @_ZNKSt3__16vectorIfNS_9allocatorIfEEE4sizeB8ue170006Ev(ptr noundef %5) #12
  %8 = icmp uge i64 %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  call void @_ZNKSt3__16vectorIfNS_9allocatorIfEEE20__throw_out_of_rangeB8ue170006Ev(ptr noundef %5) #13
  unreachable

10:                                               ; preds = %2
  %11 = getelementptr inbounds %"class.std::__1::vector.9", ptr %5, i32 0, i32 0
  %12 = load ptr, ptr %11, align 8
  %13 = load i64, ptr %4, align 8
  %14 = getelementptr inbounds float, ptr %12, i64 %13
  ret ptr %14
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden i64 @_ZNSt3__16vectorIfNS_9allocatorIfEEE5eraseB8ue170006ENS_11__wrap_iterIPKfEE(ptr noundef %0, i64 %1) #1 align 2 {
  %3 = alloca %"class.std::__1::__wrap_iter.17", align 8
  %4 = alloca %"class.std::__1::__wrap_iter.16", align 8
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  %7 = alloca %"class.std::__1::__wrap_iter.16", align 8
  %8 = alloca ptr, align 8
  %9 = getelementptr inbounds %"class.std::__1::__wrap_iter.16", ptr %4, i32 0, i32 0
  %10 = inttoptr i64 %1 to ptr
  store ptr %10, ptr %9, align 8
  store ptr %0, ptr %5, align 8
  %11 = load ptr, ptr %5, align 8
  %12 = call i64 @_ZNKSt3__16vectorIfNS_9allocatorIfEEE6cbeginB8ue170006Ev(ptr noundef %11) #12
  %13 = getelementptr inbounds %"class.std::__1::__wrap_iter.16", ptr %7, i32 0, i32 0
  %14 = inttoptr i64 %12 to ptr
  store ptr %14, ptr %13, align 8
  %15 = call i64 @_ZNSt3__1miB8ue170006IPKfS2_EEDTmicldtfp_4baseEcldtfp0_4baseEERKNS_11__wrap_iterIT_EERKNS4_IT0_EE(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %7) #12
  store i64 %15, ptr %6, align 8
  %16 = getelementptr inbounds %"class.std::__1::vector.9", ptr %11, i32 0, i32 0
  %17 = load ptr, ptr %16, align 8
  %18 = load i64, ptr %6, align 8
  %19 = getelementptr inbounds float, ptr %17, i64 %18
  store ptr %19, ptr %8, align 8
  %20 = load ptr, ptr %8, align 8
  %21 = getelementptr inbounds float, ptr %20, i64 1
  %22 = getelementptr inbounds %"class.std::__1::vector.9", ptr %11, i32 0, i32 1
  %23 = load ptr, ptr %22, align 8
  %24 = load ptr, ptr %8, align 8
  %25 = call ptr @_ZNSt3__14moveB8ue170006IPfS1_EET0_T_S3_S2_(ptr noundef %21, ptr noundef %23, ptr noundef %24)
  call void @_ZNSt3__16vectorIfNS_9allocatorIfEEE17__destruct_at_endB8ue170006EPf(ptr noundef %11, ptr noundef %25) #12
  %26 = load ptr, ptr %8, align 8
  %27 = call i64 @_ZNSt3__16vectorIfNS_9allocatorIfEEE11__make_iterB8ue170006EPf(ptr noundef %11, ptr noundef %26) #12
  %28 = getelementptr inbounds %"class.std::__1::__wrap_iter.17", ptr %3, i32 0, i32 0
  %29 = inttoptr i64 %27 to ptr
  store ptr %29, ptr %28, align 8
  %30 = getelementptr inbounds %"class.std::__1::__wrap_iter.17", ptr %3, i32 0, i32 0
  %31 = load ptr, ptr %30, align 8
  %32 = ptrtoint ptr %31 to i64
  ret i64 %32
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define weak_odr float @_ZN9slib_listIfE2atEi(ptr noundef %0, i32 noundef %1) #1 align 2 personality ptr @__gxx_personality_v0 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca %"class.std::__1::basic_string", align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  store i32 %1, ptr %4, align 4
  %8 = load ptr, ptr %3, align 8
  %9 = load i32, ptr %4, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %17, label %11

11:                                               ; preds = %2
  %12 = load i32, ptr %4, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %class.slib_list.8, ptr %8, i32 0, i32 0
  %15 = call i64 @_ZNKSt3__16vectorIfNS_9allocatorIfEEE4sizeB8ue170006Ev(ptr noundef %14) #12
  %16 = icmp uge i64 %13, %15
  br i1 %16, label %17, label %26

17:                                               ; preds = %11, %2
  %18 = call ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ue170006ILi0EEEPKc(ptr noundef %5, ptr noundef @.str.1)
  invoke void @_ZN9slib_util10list_errorERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE(ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %19 unwind label %21

19:                                               ; preds = %17
  %20 = call ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef %5) #12
  br label %26

21:                                               ; preds = %17
  %22 = landingpad { ptr, i32 }
          cleanup
  %23 = extractvalue { ptr, i32 } %22, 0
  store ptr %23, ptr %6, align 8
  %24 = extractvalue { ptr, i32 } %22, 1
  store i32 %24, ptr %7, align 4
  %25 = call ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef %5) #12
  br label %32

26:                                               ; preds = %19, %11
  %27 = getelementptr inbounds %class.slib_list.8, ptr %8, i32 0, i32 0
  %28 = load i32, ptr %4, align 4
  %29 = sext i32 %28 to i64
  %30 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt3__16vectorIfNS_9allocatorIfEEE2atEm(ptr noundef %27, i64 noundef %29)
  %31 = load float, ptr %30, align 4
  ret float %31

32:                                               ; preds = %21
  %33 = load ptr, ptr %6, align 8
  %34 = load i32, ptr %7, align 4
  %35 = insertvalue { ptr, i32 } undef, ptr %33, 0
  %36 = insertvalue { ptr, i32 } %35, i32 %34, 1
  resume { ptr, i32 } %36
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define weak_odr i32 @_ZN9slib_listIfE4sizeEv(ptr noundef %0) #5 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %class.slib_list.8, ptr %3, i32 0, i32 0
  %5 = call i64 @_ZNKSt3__16vectorIfNS_9allocatorIfEEE4sizeB8ue170006Ev(ptr noundef %4) #12
  %6 = trunc i64 %5 to i32
  ret i32 %6
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define weak_odr ptr @_ZN9slib_listIcEC2Ev(ptr noundef returned %0) unnamed_addr #0 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %class.slib_list.18, ptr %3, i32 0, i32 0
  %5 = call ptr @_ZNSt3__16vectorIcNS_9allocatorIcEEEC1B8ue170006Ev(ptr noundef %4) #12
  ret ptr %3
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden ptr @_ZNSt3__16vectorIcNS_9allocatorIcEEEC1B8ue170006Ev(ptr noundef returned %0) unnamed_addr #0 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = call ptr @_ZNSt3__16vectorIcNS_9allocatorIcEEEC2B8ue170006Ev(ptr noundef %3) #12
  ret ptr %3
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define weak_odr ptr @_ZN9slib_listIcEC1Ev(ptr noundef returned %0) unnamed_addr #0 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = call ptr @_ZN9slib_listIcEC2Ev(ptr noundef %3)
  ret ptr %3
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define weak_odr void @_ZN9slib_listIcE6insertEci(ptr noundef %0, i8 noundef signext %1, i32 noundef %2) #1 align 2 personality ptr @__gxx_personality_v0 {
  %4 = alloca ptr, align 8
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca %"class.std::__1::basic_string", align 8
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = alloca %"class.std::__1::__wrap_iter.22", align 8
  %11 = alloca %"class.std::__1::__wrap_iter.23", align 8
  %12 = alloca %"class.std::__1::__wrap_iter.23", align 8
  %13 = alloca %"class.std::__1::__wrap_iter.23", align 8
  store ptr %0, ptr %4, align 8
  store i8 %1, ptr %5, align 1
  store i32 %2, ptr %6, align 4
  %14 = load ptr, ptr %4, align 8
  %15 = load i32, ptr %6, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %26

17:                                               ; preds = %3
  %18 = call ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ue170006ILi0EEEPKc(ptr noundef %7, ptr noundef @.str)
  invoke void @_ZN9slib_util10list_errorERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE(ptr noundef nonnull align 8 dereferenceable(24) %7)
          to label %19 unwind label %21

19:                                               ; preds = %17
  %20 = call ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef %7) #12
  br label %26

21:                                               ; preds = %17
  %22 = landingpad { ptr, i32 }
          cleanup
  %23 = extractvalue { ptr, i32 } %22, 0
  store ptr %23, ptr %8, align 8
  %24 = extractvalue { ptr, i32 } %22, 1
  store i32 %24, ptr %9, align 4
  %25 = call ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef %7) #12
  br label %53

26:                                               ; preds = %19, %3
  %27 = load i32, ptr %6, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %class.slib_list.18, ptr %14, i32 0, i32 0
  %30 = call i64 @_ZNKSt3__16vectorIcNS_9allocatorIcEEE4sizeB8ue170006Ev(ptr noundef %29) #12
  %31 = icmp ugt i64 %28, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = getelementptr inbounds %class.slib_list.18, ptr %14, i32 0, i32 0
  call void @_ZNSt3__16vectorIcNS_9allocatorIcEEE9push_backB8ue170006ERKc(ptr noundef %33, ptr noundef nonnull align 1 dereferenceable(1) %5)
  br label %52

34:                                               ; preds = %26
  %35 = getelementptr inbounds %class.slib_list.18, ptr %14, i32 0, i32 0
  %36 = getelementptr inbounds %class.slib_list.18, ptr %14, i32 0, i32 0
  %37 = call i64 @_ZNSt3__16vectorIcNS_9allocatorIcEEE5beginB8ue170006Ev(ptr noundef %36) #12
  %38 = getelementptr inbounds %"class.std::__1::__wrap_iter.23", ptr %12, i32 0, i32 0
  %39 = inttoptr i64 %37 to ptr
  store ptr %39, ptr %38, align 8
  %40 = load i32, ptr %6, align 4
  %41 = sext i32 %40 to i64
  %42 = call i64 @_ZNKSt3__111__wrap_iterIPcEplB8ue170006El(ptr noundef %12, i64 noundef %41) #12
  %43 = getelementptr inbounds %"class.std::__1::__wrap_iter.23", ptr %11, i32 0, i32 0
  %44 = inttoptr i64 %42 to ptr
  store ptr %44, ptr %43, align 8
  %45 = call ptr @_ZNSt3__111__wrap_iterIPKcEC1B8ue170006IPcEERKNS0_IT_EEPNS_9enable_ifIXsr14is_convertibleIS6_S2_EE5valueEvE4typeE(ptr noundef %10, ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef null) #12
  %46 = getelementptr inbounds %"class.std::__1::__wrap_iter.22", ptr %10, i32 0, i32 0
  %47 = load ptr, ptr %46, align 8
  %48 = ptrtoint ptr %47 to i64
  %49 = call i64 @_ZNSt3__16vectorIcNS_9allocatorIcEEE6insertENS_11__wrap_iterIPKcEERS5_(ptr noundef %35, i64 %48, ptr noundef nonnull align 1 dereferenceable(1) %5)
  %50 = getelementptr inbounds %"class.std::__1::__wrap_iter.23", ptr %13, i32 0, i32 0
  %51 = inttoptr i64 %49 to ptr
  store ptr %51, ptr %50, align 8
  br label %52

52:                                               ; preds = %34, %32
  ret void

53:                                               ; preds = %21
  %54 = load ptr, ptr %8, align 8
  %55 = load i32, ptr %9, align 4
  %56 = insertvalue { ptr, i32 } undef, ptr %54, 0
  %57 = insertvalue { ptr, i32 } %56, i32 %55, 1
  resume { ptr, i32 } %57
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden i64 @_ZNKSt3__16vectorIcNS_9allocatorIcEEE4sizeB8ue170006Ev(ptr noundef %0) #5 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.std::__1::vector.19", ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %"class.std::__1::vector.19", ptr %3, i32 0, i32 0
  %7 = load ptr, ptr %6, align 8
  %8 = ptrtoint ptr %5 to i64
  %9 = ptrtoint ptr %7 to i64
  %10 = sub i64 %8, %9
  ret i64 %10
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNSt3__16vectorIcNS_9allocatorIcEEE9push_backB8ue170006ERKc(ptr noundef %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #1 align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = getelementptr inbounds %"class.std::__1::vector.19", ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 8
  %8 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__16vectorIcNS_9allocatorIcEEE9__end_capB8ue170006Ev(ptr noundef %5) #12
  %9 = load ptr, ptr %8, align 8
  %10 = icmp ne ptr %7, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load ptr, ptr %4, align 8
  call void @_ZNSt3__16vectorIcNS_9allocatorIcEEE22__construct_one_at_endB8ue170006IJRKcEEEvDpOT_(ptr noundef %5, ptr noundef nonnull align 1 dereferenceable(1) %12)
  br label %15

13:                                               ; preds = %2
  %14 = load ptr, ptr %4, align 8
  call void @_ZNSt3__16vectorIcNS_9allocatorIcEEE21__push_back_slow_pathIRKcEEvOT_(ptr noundef %5, ptr noundef nonnull align 1 dereferenceable(1) %14)
  br label %15

15:                                               ; preds = %13, %11
  ret void
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden i64 @_ZNSt3__16vectorIcNS_9allocatorIcEEE6insertENS_11__wrap_iterIPKcEERS5_(ptr noundef %0, i64 %1, ptr noundef nonnull align 1 dereferenceable(1) %2) #1 align 2 personality ptr @__gxx_personality_v0 {
  %4 = alloca %"class.std::__1::__wrap_iter.23", align 8
  %5 = alloca %"class.std::__1::__wrap_iter.22", align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca %"class.std::__1::__wrap_iter.23", align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca %"struct.std::__1::__split_buffer.47", align 8
  %13 = alloca ptr, align 8
  %14 = alloca i32, align 4
  %15 = getelementptr inbounds %"class.std::__1::__wrap_iter.22", ptr %5, i32 0, i32 0
  %16 = inttoptr i64 %1 to ptr
  store ptr %16, ptr %15, align 8
  store ptr %0, ptr %6, align 8
  store ptr %2, ptr %7, align 8
  %17 = load ptr, ptr %6, align 8
  %18 = getelementptr inbounds %"class.std::__1::vector.19", ptr %17, i32 0, i32 0
  %19 = load ptr, ptr %18, align 8
  %20 = call i64 @_ZNSt3__16vectorIcNS_9allocatorIcEEE5beginB8ue170006Ev(ptr noundef %17) #12
  %21 = getelementptr inbounds %"class.std::__1::__wrap_iter.23", ptr %9, i32 0, i32 0
  %22 = inttoptr i64 %20 to ptr
  store ptr %22, ptr %21, align 8
  %23 = call i64 @_ZNSt3__1miB8ue170006IPKcPcEEDTmicldtfp_4baseEcldtfp0_4baseEERKNS_11__wrap_iterIT_EERKNS5_IT0_EE(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %9) #12
  %24 = getelementptr inbounds i8, ptr %19, i64 %23
  store ptr %24, ptr %8, align 8
  %25 = getelementptr inbounds %"class.std::__1::vector.19", ptr %17, i32 0, i32 1
  %26 = load ptr, ptr %25, align 8
  %27 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__16vectorIcNS_9allocatorIcEEE9__end_capB8ue170006Ev(ptr noundef %17) #12
  %28 = load ptr, ptr %27, align 8
  %29 = icmp ult ptr %26, %28
  br i1 %29, label %30, label %61

30:                                               ; preds = %3
  %31 = load ptr, ptr %8, align 8
  %32 = getelementptr inbounds %"class.std::__1::vector.19", ptr %17, i32 0, i32 1
  %33 = load ptr, ptr %32, align 8
  %34 = icmp eq ptr %31, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  %36 = load ptr, ptr %7, align 8
  call void @_ZNSt3__16vectorIcNS_9allocatorIcEEE22__construct_one_at_endB8ue170006IJRKcEEEvDpOT_(ptr noundef %17, ptr noundef nonnull align 1 dereferenceable(1) %36)
  br label %60

37:                                               ; preds = %30
  %38 = load ptr, ptr %8, align 8
  %39 = getelementptr inbounds %"class.std::__1::vector.19", ptr %17, i32 0, i32 1
  %40 = load ptr, ptr %39, align 8
  %41 = load ptr, ptr %8, align 8
  %42 = getelementptr inbounds i8, ptr %41, i64 1
  call void @_ZNSt3__16vectorIcNS_9allocatorIcEEE12__move_rangeEPcS4_S4_(ptr noundef %17, ptr noundef %38, ptr noundef %40, ptr noundef %42)
  %43 = load ptr, ptr %7, align 8
  %44 = call ptr @_ZNSt3__114pointer_traitsIPKcE10pointer_toB8ue170006ERS1_(ptr noundef nonnull align 1 dereferenceable(1) %43) #12
  store ptr %44, ptr %10, align 8
  %45 = load ptr, ptr %8, align 8
  %46 = load ptr, ptr %10, align 8
  %47 = icmp ule ptr %45, %46
  br i1 %47, label %48, label %56

48:                                               ; preds = %37
  %49 = load ptr, ptr %10, align 8
  %50 = getelementptr inbounds %"class.std::__1::vector.19", ptr %17, i32 0, i32 1
  %51 = load ptr, ptr %50, align 8
  %52 = icmp ult ptr %49, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %48
  %54 = load ptr, ptr %10, align 8
  %55 = getelementptr inbounds i8, ptr %54, i32 1
  store ptr %55, ptr %10, align 8
  br label %56

56:                                               ; preds = %53, %48, %37
  %57 = load ptr, ptr %10, align 8
  %58 = load i8, ptr %57, align 1
  %59 = load ptr, ptr %8, align 8
  store i8 %58, ptr %59, align 1
  br label %60

60:                                               ; preds = %56, %35
  br label %85

61:                                               ; preds = %3
  %62 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__16vectorIcNS_9allocatorIcEEE7__allocB8ue170006Ev(ptr noundef %17) #12
  store ptr %62, ptr %11, align 8
  %63 = call i64 @_ZNKSt3__16vectorIcNS_9allocatorIcEEE4sizeB8ue170006Ev(ptr noundef %17) #12
  %64 = add i64 %63, 1
  %65 = call i64 @_ZNKSt3__16vectorIcNS_9allocatorIcEEE11__recommendB8ue170006Em(ptr noundef %17, i64 noundef %64)
  %66 = load ptr, ptr %8, align 8
  %67 = getelementptr inbounds %"class.std::__1::vector.19", ptr %17, i32 0, i32 0
  %68 = load ptr, ptr %67, align 8
  %69 = ptrtoint ptr %66 to i64
  %70 = ptrtoint ptr %68 to i64
  %71 = sub i64 %69, %70
  %72 = load ptr, ptr %11, align 8
  %73 = call ptr @_ZNSt3__114__split_bufferIcRNS_9allocatorIcEEEC1EmmS3_(ptr noundef %12, i64 noundef %65, i64 noundef %71, ptr noundef nonnull align 1 dereferenceable(1) %72)
  %74 = load ptr, ptr %7, align 8
  invoke void @_ZNSt3__114__split_bufferIcRNS_9allocatorIcEEE9push_backB8ue170006ERKc(ptr noundef %12, ptr noundef nonnull align 1 dereferenceable(1) %74)
          to label %75 unwind label %80

75:                                               ; preds = %61
  %76 = load ptr, ptr %8, align 8
  %77 = invoke ptr @_ZNSt3__16vectorIcNS_9allocatorIcEEE26__swap_out_circular_bufferERNS_14__split_bufferIcRS2_EEPc(ptr noundef %17, ptr noundef nonnull align 8 dereferenceable(40) %12, ptr noundef %76)
          to label %78 unwind label %80

78:                                               ; preds = %75
  store ptr %77, ptr %8, align 8
  %79 = call ptr @_ZNSt3__114__split_bufferIcRNS_9allocatorIcEEED1Ev(ptr noundef %12) #12
  br label %85

80:                                               ; preds = %75, %61
  %81 = landingpad { ptr, i32 }
          cleanup
  %82 = extractvalue { ptr, i32 } %81, 0
  store ptr %82, ptr %13, align 8
  %83 = extractvalue { ptr, i32 } %81, 1
  store i32 %83, ptr %14, align 4
  %84 = call ptr @_ZNSt3__114__split_bufferIcRNS_9allocatorIcEEED1Ev(ptr noundef %12) #12
  br label %93

85:                                               ; preds = %78, %60
  %86 = load ptr, ptr %8, align 8
  %87 = call i64 @_ZNSt3__16vectorIcNS_9allocatorIcEEE11__make_iterB8ue170006EPc(ptr noundef %17, ptr noundef %86) #12
  %88 = getelementptr inbounds %"class.std::__1::__wrap_iter.23", ptr %4, i32 0, i32 0
  %89 = inttoptr i64 %87 to ptr
  store ptr %89, ptr %88, align 8
  %90 = getelementptr inbounds %"class.std::__1::__wrap_iter.23", ptr %4, i32 0, i32 0
  %91 = load ptr, ptr %90, align 8
  %92 = ptrtoint ptr %91 to i64
  ret i64 %92

93:                                               ; preds = %80
  %94 = load ptr, ptr %13, align 8
  %95 = load i32, ptr %14, align 4
  %96 = insertvalue { ptr, i32 } undef, ptr %94, 0
  %97 = insertvalue { ptr, i32 } %96, i32 %95, 1
  resume { ptr, i32 } %97
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden i64 @_ZNSt3__16vectorIcNS_9allocatorIcEEE5beginB8ue170006Ev(ptr noundef %0) #5 align 2 {
  %2 = alloca %"class.std::__1::__wrap_iter.23", align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %"class.std::__1::vector.19", ptr %4, i32 0, i32 0
  %6 = load ptr, ptr %5, align 8
  %7 = call i64 @_ZNSt3__16vectorIcNS_9allocatorIcEEE11__make_iterB8ue170006EPc(ptr noundef %4, ptr noundef %6) #12
  %8 = getelementptr inbounds %"class.std::__1::__wrap_iter.23", ptr %2, i32 0, i32 0
  %9 = inttoptr i64 %7 to ptr
  store ptr %9, ptr %8, align 8
  %10 = getelementptr inbounds %"class.std::__1::__wrap_iter.23", ptr %2, i32 0, i32 0
  %11 = load ptr, ptr %10, align 8
  %12 = ptrtoint ptr %11 to i64
  ret i64 %12
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden i64 @_ZNKSt3__111__wrap_iterIPcEplB8ue170006El(ptr noundef %0, i64 noundef %1) #5 align 2 {
  %3 = alloca %"class.std::__1::__wrap_iter.23", align 8
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
  store i64 %1, ptr %5, align 8
  %6 = load ptr, ptr %4, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %3, ptr align 8 %6, i64 8, i1 false)
  %7 = load i64, ptr %5, align 8
  %8 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__111__wrap_iterIPcEpLB8ue170006El(ptr noundef %3, i64 noundef %7) #12
  %9 = getelementptr inbounds %"class.std::__1::__wrap_iter.23", ptr %3, i32 0, i32 0
  %10 = load ptr, ptr %9, align 8
  %11 = ptrtoint ptr %10 to i64
  ret i64 %11
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr ptr @_ZNSt3__111__wrap_iterIPKcEC1B8ue170006IPcEERKNS0_IT_EEPNS_9enable_ifIXsr14is_convertibleIS6_S2_EE5valueEvE4typeE(ptr noundef returned %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2) unnamed_addr #0 align 2 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  %7 = load ptr, ptr %4, align 8
  %8 = load ptr, ptr %5, align 8
  %9 = load ptr, ptr %6, align 8
  %10 = call ptr @_ZNSt3__111__wrap_iterIPKcEC2B8ue170006IPcEERKNS0_IT_EEPNS_9enable_ifIXsr14is_convertibleIS6_S2_EE5valueEvE4typeE(ptr noundef %7, ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef %9) #12
  ret ptr %7
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define weak_odr signext i8 @_ZN9slib_listIcE6removeEi(ptr noundef %0, i32 noundef %1) #1 align 2 personality ptr @__gxx_personality_v0 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca %"class.std::__1::basic_string", align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = alloca %"class.std::__1::__wrap_iter.22", align 8
  %10 = alloca %"class.std::__1::__wrap_iter.23", align 8
  %11 = alloca %"class.std::__1::__wrap_iter.23", align 8
  %12 = alloca %"class.std::__1::__wrap_iter.23", align 8
  store ptr %0, ptr %3, align 8
  store i32 %1, ptr %4, align 4
  %13 = load ptr, ptr %3, align 8
  %14 = load i32, ptr %4, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %22, label %16

16:                                               ; preds = %2
  %17 = load i32, ptr %4, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %class.slib_list.18, ptr %13, i32 0, i32 0
  %20 = call i64 @_ZNKSt3__16vectorIcNS_9allocatorIcEEE4sizeB8ue170006Ev(ptr noundef %19) #12
  %21 = icmp uge i64 %18, %20
  br i1 %21, label %22, label %31

22:                                               ; preds = %16, %2
  %23 = call ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ue170006ILi0EEEPKc(ptr noundef %5, ptr noundef @.str.1)
  invoke void @_ZN9slib_util10list_errorERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE(ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %24 unwind label %26

24:                                               ; preds = %22
  %25 = call ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef %5) #12
  br label %31

26:                                               ; preds = %22
  %27 = landingpad { ptr, i32 }
          cleanup
  %28 = extractvalue { ptr, i32 } %27, 0
  store ptr %28, ptr %6, align 8
  %29 = extractvalue { ptr, i32 } %27, 1
  store i32 %29, ptr %7, align 4
  %30 = call ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef %5) #12
  br label %55

31:                                               ; preds = %24, %16
  %32 = getelementptr inbounds %class.slib_list.18, ptr %13, i32 0, i32 0
  %33 = load i32, ptr %4, align 4
  %34 = sext i32 %33 to i64
  %35 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__16vectorIcNS_9allocatorIcEEE2atEm(ptr noundef %32, i64 noundef %34)
  %36 = load i8, ptr %35, align 1
  store i8 %36, ptr %8, align 1
  %37 = getelementptr inbounds %class.slib_list.18, ptr %13, i32 0, i32 0
  %38 = getelementptr inbounds %class.slib_list.18, ptr %13, i32 0, i32 0
  %39 = call i64 @_ZNSt3__16vectorIcNS_9allocatorIcEEE5beginB8ue170006Ev(ptr noundef %38) #12
  %40 = getelementptr inbounds %"class.std::__1::__wrap_iter.23", ptr %11, i32 0, i32 0
  %41 = inttoptr i64 %39 to ptr
  store ptr %41, ptr %40, align 8
  %42 = load i32, ptr %4, align 4
  %43 = sext i32 %42 to i64
  %44 = call i64 @_ZNKSt3__111__wrap_iterIPcEplB8ue170006El(ptr noundef %11, i64 noundef %43) #12
  %45 = getelementptr inbounds %"class.std::__1::__wrap_iter.23", ptr %10, i32 0, i32 0
  %46 = inttoptr i64 %44 to ptr
  store ptr %46, ptr %45, align 8
  %47 = call ptr @_ZNSt3__111__wrap_iterIPKcEC1B8ue170006IPcEERKNS0_IT_EEPNS_9enable_ifIXsr14is_convertibleIS6_S2_EE5valueEvE4typeE(ptr noundef %9, ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef null) #12
  %48 = getelementptr inbounds %"class.std::__1::__wrap_iter.22", ptr %9, i32 0, i32 0
  %49 = load ptr, ptr %48, align 8
  %50 = ptrtoint ptr %49 to i64
  %51 = call i64 @_ZNSt3__16vectorIcNS_9allocatorIcEEE5eraseB8ue170006ENS_11__wrap_iterIPKcEE(ptr noundef %37, i64 %50)
  %52 = getelementptr inbounds %"class.std::__1::__wrap_iter.23", ptr %12, i32 0, i32 0
  %53 = inttoptr i64 %51 to ptr
  store ptr %53, ptr %52, align 8
  %54 = load i8, ptr %8, align 1
  ret i8 %54

55:                                               ; preds = %26
  %56 = load ptr, ptr %6, align 8
  %57 = load i32, ptr %7, align 4
  %58 = insertvalue { ptr, i32 } undef, ptr %56, 0
  %59 = insertvalue { ptr, i32 } %58, i32 %57, 1
  resume { ptr, i32 } %59
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__16vectorIcNS_9allocatorIcEEE2atEm(ptr noundef %0, i64 noundef %1) #1 align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  store ptr %0, ptr %3, align 8
  store i64 %1, ptr %4, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = load i64, ptr %4, align 8
  %7 = call i64 @_ZNKSt3__16vectorIcNS_9allocatorIcEEE4sizeB8ue170006Ev(ptr noundef %5) #12
  %8 = icmp uge i64 %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  call void @_ZNKSt3__16vectorIcNS_9allocatorIcEEE20__throw_out_of_rangeB8ue170006Ev(ptr noundef %5) #13
  unreachable

10:                                               ; preds = %2
  %11 = getelementptr inbounds %"class.std::__1::vector.19", ptr %5, i32 0, i32 0
  %12 = load ptr, ptr %11, align 8
  %13 = load i64, ptr %4, align 8
  %14 = getelementptr inbounds i8, ptr %12, i64 %13
  ret ptr %14
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden i64 @_ZNSt3__16vectorIcNS_9allocatorIcEEE5eraseB8ue170006ENS_11__wrap_iterIPKcEE(ptr noundef %0, i64 %1) #1 align 2 {
  %3 = alloca %"class.std::__1::__wrap_iter.23", align 8
  %4 = alloca %"class.std::__1::__wrap_iter.22", align 8
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  %7 = alloca %"class.std::__1::__wrap_iter.22", align 8
  %8 = alloca ptr, align 8
  %9 = getelementptr inbounds %"class.std::__1::__wrap_iter.22", ptr %4, i32 0, i32 0
  %10 = inttoptr i64 %1 to ptr
  store ptr %10, ptr %9, align 8
  store ptr %0, ptr %5, align 8
  %11 = load ptr, ptr %5, align 8
  %12 = call i64 @_ZNKSt3__16vectorIcNS_9allocatorIcEEE6cbeginB8ue170006Ev(ptr noundef %11) #12
  %13 = getelementptr inbounds %"class.std::__1::__wrap_iter.22", ptr %7, i32 0, i32 0
  %14 = inttoptr i64 %12 to ptr
  store ptr %14, ptr %13, align 8
  %15 = call i64 @_ZNSt3__1miB8ue170006IPKcS2_EEDTmicldtfp_4baseEcldtfp0_4baseEERKNS_11__wrap_iterIT_EERKNS4_IT0_EE(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %7) #12
  store i64 %15, ptr %6, align 8
  %16 = getelementptr inbounds %"class.std::__1::vector.19", ptr %11, i32 0, i32 0
  %17 = load ptr, ptr %16, align 8
  %18 = load i64, ptr %6, align 8
  %19 = getelementptr inbounds i8, ptr %17, i64 %18
  store ptr %19, ptr %8, align 8
  %20 = load ptr, ptr %8, align 8
  %21 = getelementptr inbounds i8, ptr %20, i64 1
  %22 = getelementptr inbounds %"class.std::__1::vector.19", ptr %11, i32 0, i32 1
  %23 = load ptr, ptr %22, align 8
  %24 = load ptr, ptr %8, align 8
  %25 = call ptr @_ZNSt3__14moveB8ue170006IPcS1_EET0_T_S3_S2_(ptr noundef %21, ptr noundef %23, ptr noundef %24)
  call void @_ZNSt3__16vectorIcNS_9allocatorIcEEE17__destruct_at_endB8ue170006EPc(ptr noundef %11, ptr noundef %25) #12
  %26 = load ptr, ptr %8, align 8
  %27 = call i64 @_ZNSt3__16vectorIcNS_9allocatorIcEEE11__make_iterB8ue170006EPc(ptr noundef %11, ptr noundef %26) #12
  %28 = getelementptr inbounds %"class.std::__1::__wrap_iter.23", ptr %3, i32 0, i32 0
  %29 = inttoptr i64 %27 to ptr
  store ptr %29, ptr %28, align 8
  %30 = getelementptr inbounds %"class.std::__1::__wrap_iter.23", ptr %3, i32 0, i32 0
  %31 = load ptr, ptr %30, align 8
  %32 = ptrtoint ptr %31 to i64
  ret i64 %32
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define weak_odr signext i8 @_ZN9slib_listIcE2atEi(ptr noundef %0, i32 noundef %1) #1 align 2 personality ptr @__gxx_personality_v0 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca %"class.std::__1::basic_string", align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  store i32 %1, ptr %4, align 4
  %8 = load ptr, ptr %3, align 8
  %9 = load i32, ptr %4, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %17, label %11

11:                                               ; preds = %2
  %12 = load i32, ptr %4, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %class.slib_list.18, ptr %8, i32 0, i32 0
  %15 = call i64 @_ZNKSt3__16vectorIcNS_9allocatorIcEEE4sizeB8ue170006Ev(ptr noundef %14) #12
  %16 = icmp uge i64 %13, %15
  br i1 %16, label %17, label %26

17:                                               ; preds = %11, %2
  %18 = call ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ue170006ILi0EEEPKc(ptr noundef %5, ptr noundef @.str.1)
  invoke void @_ZN9slib_util10list_errorERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE(ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %19 unwind label %21

19:                                               ; preds = %17
  %20 = call ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef %5) #12
  br label %26

21:                                               ; preds = %17
  %22 = landingpad { ptr, i32 }
          cleanup
  %23 = extractvalue { ptr, i32 } %22, 0
  store ptr %23, ptr %6, align 8
  %24 = extractvalue { ptr, i32 } %22, 1
  store i32 %24, ptr %7, align 4
  %25 = call ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef %5) #12
  br label %32

26:                                               ; preds = %19, %11
  %27 = getelementptr inbounds %class.slib_list.18, ptr %8, i32 0, i32 0
  %28 = load i32, ptr %4, align 4
  %29 = sext i32 %28 to i64
  %30 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__16vectorIcNS_9allocatorIcEEE2atEm(ptr noundef %27, i64 noundef %29)
  %31 = load i8, ptr %30, align 1
  ret i8 %31

32:                                               ; preds = %21
  %33 = load ptr, ptr %6, align 8
  %34 = load i32, ptr %7, align 4
  %35 = insertvalue { ptr, i32 } undef, ptr %33, 0
  %36 = insertvalue { ptr, i32 } %35, i32 %34, 1
  resume { ptr, i32 } %36
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define weak_odr i32 @_ZN9slib_listIcE4sizeEv(ptr noundef %0) #5 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %class.slib_list.18, ptr %3, i32 0, i32 0
  %5 = call i64 @_ZNKSt3__16vectorIcNS_9allocatorIcEEE4sizeB8ue170006Ev(ptr noundef %4) #12
  %6 = trunc i64 %5 to i32
  ret i32 %6
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define weak_odr ptr @_ZN9slib_listIbEC2Ev(ptr noundef returned %0) unnamed_addr #0 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %class.slib_list.24, ptr %3, i32 0, i32 0
  %5 = call ptr @_ZNSt3__16vectorIbNS_9allocatorIbEEEC1B8ue170006Ev(ptr noundef %4) #12
  ret ptr %3
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden ptr @_ZNSt3__16vectorIbNS_9allocatorIbEEEC1B8ue170006Ev(ptr noundef returned %0) unnamed_addr #0 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = call ptr @_ZNSt3__16vectorIbNS_9allocatorIbEEEC2B8ue170006Ev(ptr noundef %3) #12
  ret ptr %3
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define weak_odr ptr @_ZN9slib_listIbEC1Ev(ptr noundef returned %0) unnamed_addr #0 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = call ptr @_ZN9slib_listIbEC2Ev(ptr noundef %3)
  ret ptr %3
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define weak_odr void @_ZN9slib_listIbE6insertEbi(ptr noundef %0, i1 noundef zeroext %1, i32 noundef %2) #1 align 2 personality ptr @__gxx_personality_v0 {
  %4 = alloca ptr, align 8
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca %"class.std::__1::basic_string", align 8
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = alloca %"class.std::__1::__bit_iterator.32", align 8
  %11 = alloca %"class.std::__1::__bit_iterator", align 8
  %12 = alloca %"class.std::__1::__bit_iterator", align 8
  %13 = alloca %"class.std::__1::__bit_iterator", align 8
  store ptr %0, ptr %4, align 8
  %14 = zext i1 %1 to i8
  store i8 %14, ptr %5, align 1
  store i32 %2, ptr %6, align 4
  %15 = load ptr, ptr %4, align 8
  %16 = load i32, ptr %6, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %27

18:                                               ; preds = %3
  %19 = call ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ue170006ILi0EEEPKc(ptr noundef %7, ptr noundef @.str)
  invoke void @_ZN9slib_util10list_errorERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE(ptr noundef nonnull align 8 dereferenceable(24) %7)
          to label %20 unwind label %22

20:                                               ; preds = %18
  %21 = call ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef %7) #12
  br label %27

22:                                               ; preds = %18
  %23 = landingpad { ptr, i32 }
          cleanup
  %24 = extractvalue { ptr, i32 } %23, 0
  store ptr %24, ptr %8, align 8
  %25 = extractvalue { ptr, i32 } %23, 1
  store i32 %25, ptr %9, align 4
  %26 = call ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef %7) #12
  br label %43

27:                                               ; preds = %20, %3
  %28 = load i32, ptr %6, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %class.slib_list.24, ptr %15, i32 0, i32 0
  %31 = call i64 @_ZNKSt3__16vectorIbNS_9allocatorIbEEE4sizeB8ue170006Ev(ptr noundef %30) #12
  %32 = icmp ugt i64 %29, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = getelementptr inbounds %class.slib_list.24, ptr %15, i32 0, i32 0
  call void @_ZNSt3__16vectorIbNS_9allocatorIbEEE9push_backERKb(ptr noundef %34, ptr noundef nonnull align 1 dereferenceable(1) %5)
  br label %42

35:                                               ; preds = %27
  %36 = getelementptr inbounds %class.slib_list.24, ptr %15, i32 0, i32 0
  %37 = getelementptr inbounds %class.slib_list.24, ptr %15, i32 0, i32 0
  call void @_ZNSt3__16vectorIbNS_9allocatorIbEEE5beginB8ue170006Ev(ptr sret(%"class.std::__1::__bit_iterator") align 8 %12, ptr noundef %37) #12
  %38 = load i32, ptr %6, align 4
  %39 = sext i32 %38 to i64
  call void @_ZNKSt3__114__bit_iteratorINS_6vectorIbNS_9allocatorIbEEEELb0ELm0EEplB8ue170006El(ptr sret(%"class.std::__1::__bit_iterator") align 8 %11, ptr noundef %12, i64 noundef %39)
  %40 = call ptr @_ZNSt3__114__bit_iteratorINS_6vectorIbNS_9allocatorIbEEEELb1ELm0EEC1B8ue170006ERKNS0_IS4_Lb0ELm0EEE(ptr noundef %10, ptr noundef nonnull align 8 dereferenceable(12) %11) #12
  %41 = load [2 x i64], ptr %10, align 8
  call void @_ZNSt3__16vectorIbNS_9allocatorIbEEE6insertENS_14__bit_iteratorIS3_Lb1ELm0EEERKb(ptr sret(%"class.std::__1::__bit_iterator") align 8 %13, ptr noundef %36, [2 x i64] %41, ptr noundef nonnull align 1 dereferenceable(1) %5)
  br label %42

42:                                               ; preds = %35, %33
  ret void

43:                                               ; preds = %22
  %44 = load ptr, ptr %8, align 8
  %45 = load i32, ptr %9, align 4
  %46 = insertvalue { ptr, i32 } undef, ptr %44, 0
  %47 = insertvalue { ptr, i32 } %46, i32 %45, 1
  resume { ptr, i32 } %47
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden i64 @_ZNKSt3__16vectorIbNS_9allocatorIbEEE4sizeB8ue170006Ev(ptr noundef %0) #5 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.std::__1::vector.25", ptr %3, i32 0, i32 1
  %5 = load i64, ptr %4, align 8
  ret i64 %5
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNSt3__16vectorIbNS_9allocatorIbEEE9push_backERKb(ptr noundef %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #1 align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca %"class.std::__1::__bit_reference", align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %6 = load ptr, ptr %3, align 8
  %7 = getelementptr inbounds %"class.std::__1::vector.25", ptr %6, i32 0, i32 1
  %8 = load i64, ptr %7, align 8
  %9 = call i64 @_ZNKSt3__16vectorIbNS_9allocatorIbEEE8capacityB8ue170006Ev(ptr noundef %6) #12
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %16

11:                                               ; preds = %2
  %12 = getelementptr inbounds %"class.std::__1::vector.25", ptr %6, i32 0, i32 1
  %13 = load i64, ptr %12, align 8
  %14 = add i64 %13, 1
  %15 = call i64 @_ZNKSt3__16vectorIbNS_9allocatorIbEEE11__recommendB8ue170006Em(ptr noundef %6, i64 noundef %14)
  call void @_ZNSt3__16vectorIbNS_9allocatorIbEEE7reserveEm(ptr noundef %6, i64 noundef %15)
  br label %16

16:                                               ; preds = %11, %2
  %17 = getelementptr inbounds %"class.std::__1::vector.25", ptr %6, i32 0, i32 1
  %18 = load i64, ptr %17, align 8
  %19 = add i64 %18, 1
  store i64 %19, ptr %17, align 8
  %20 = load ptr, ptr %4, align 8
  %21 = load i8, ptr %20, align 1
  %22 = trunc i8 %21 to i1
  %23 = call [2 x i64] @_ZNSt3__16vectorIbNS_9allocatorIbEEE4backB8ue170006Ev(ptr noundef %6)
  store [2 x i64] %23, ptr %5, align 8
  %24 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt3__115__bit_referenceINS_6vectorIbNS_9allocatorIbEEEELb1EEaSB8ue170006Eb(ptr noundef %5, i1 noundef zeroext %22) #12
  ret void
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNSt3__16vectorIbNS_9allocatorIbEEE6insertENS_14__bit_iteratorIS3_Lb1ELm0EEERKb(ptr noalias sret(%"class.std::__1::__bit_iterator") align 8 %0, ptr noundef %1, [2 x i64] %2, ptr noundef nonnull align 1 dereferenceable(1) %3) #1 align 2 personality ptr @__gxx_personality_v0 {
  %5 = alloca ptr, align 8
  %6 = alloca %"class.std::__1::__bit_iterator.32", align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca %"class.std::__1::__bit_iterator.32", align 8
  %10 = alloca %"class.std::__1::__bit_iterator", align 8
  %11 = alloca %"class.std::__1::__bit_iterator.32", align 8
  %12 = alloca %"class.std::__1::__bit_iterator.32", align 8
  %13 = alloca %"class.std::__1::__bit_iterator", align 8
  %14 = alloca %"class.std::__1::__bit_iterator", align 8
  %15 = alloca %"class.std::__1::__bit_iterator", align 8
  %16 = alloca %"class.std::__1::__bit_iterator.32", align 8
  %17 = alloca %"class.std::__1::vector.25", align 8
  %18 = alloca %"class.std::__1::allocator.56", align 1
  %19 = alloca %"class.std::__1::allocator.56", align 1
  %20 = alloca ptr, align 8
  %21 = alloca i32, align 4
  %22 = alloca %"class.std::__1::__bit_iterator", align 8
  %23 = alloca %"class.std::__1::__bit_iterator.32", align 8
  %24 = alloca %"class.std::__1::__bit_iterator.32", align 8
  %25 = alloca %"class.std::__1::__bit_iterator", align 8
  %26 = alloca %"class.std::__1::__bit_iterator.32", align 8
  %27 = alloca %"class.std::__1::__bit_iterator.32", align 8
  %28 = alloca %"class.std::__1::__bit_iterator", align 8
  %29 = alloca %"class.std::__1::__bit_iterator", align 8
  %30 = alloca %"class.std::__1::__bit_reference", align 8
  store ptr %0, ptr %5, align 8
  store [2 x i64] %2, ptr %6, align 8
  store ptr %1, ptr %7, align 8
  store ptr %3, ptr %8, align 8
  %31 = load ptr, ptr %7, align 8
  %32 = call ptr @_ZNSt3__114__bit_iteratorINS_6vectorIbNS_9allocatorIbEEEELb0ELm0EEC1B8ue170006Ev(ptr noundef %0) #12
  %33 = call i64 @_ZNKSt3__16vectorIbNS_9allocatorIbEEE4sizeB8ue170006Ev(ptr noundef %31) #12
  %34 = call i64 @_ZNKSt3__16vectorIbNS_9allocatorIbEEE8capacityB8ue170006Ev(ptr noundef %31) #12
  %35 = icmp ult i64 %33, %34
  br i1 %35, label %36, label %45

36:                                               ; preds = %4
  call void @_ZNSt3__16vectorIbNS_9allocatorIbEEE3endB8ue170006Ev(ptr sret(%"class.std::__1::__bit_iterator") align 8 %10, ptr noundef %31) #12
  %37 = call ptr @_ZNSt3__114__bit_iteratorINS_6vectorIbNS_9allocatorIbEEEELb1ELm0EEC1B8ue170006ERKNS0_IS4_Lb0ELm0EEE(ptr noundef %9, ptr noundef nonnull align 8 dereferenceable(12) %10) #12
  %38 = getelementptr inbounds %"class.std::__1::vector.25", ptr %31, i32 0, i32 1
  %39 = load i64, ptr %38, align 8
  %40 = add i64 %39, 1
  store i64 %40, ptr %38, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %11, ptr align 8 %6, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %12, ptr align 8 %9, i64 16, i1 false)
  call void @_ZNSt3__16vectorIbNS_9allocatorIbEEE3endB8ue170006Ev(ptr sret(%"class.std::__1::__bit_iterator") align 8 %13, ptr noundef %31) #12
  %41 = load [2 x i64], ptr %11, align 8
  %42 = load [2 x i64], ptr %12, align 8
  call void @_ZNSt3__113copy_backwardB8ue170006INS_6vectorIbNS_9allocatorIbEEEELb1EEENS_14__bit_iteratorIT_Lb0EXLi0EEEENS5_IS6_XT0_EXLi0EEEES8_S7_(ptr sret(%"class.std::__1::__bit_iterator") align 8 %14, [2 x i64] %41, [2 x i64] %42, ptr noundef %13)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %16, ptr align 8 %6, i64 16, i1 false)
  %43 = load [2 x i64], ptr %16, align 8
  call void @_ZNSt3__16vectorIbNS_9allocatorIbEEE21__const_iterator_castB8ue170006ENS_14__bit_iteratorIS3_Lb1ELm0EEE(ptr sret(%"class.std::__1::__bit_iterator") align 8 %15, ptr noundef %31, [2 x i64] %43) #12
  %44 = call noundef nonnull align 8 dereferenceable(12) ptr @_ZNSt3__114__bit_iteratorINS_6vectorIbNS_9allocatorIbEEEELb0ELm0EEaSB8ue170006ERKS5_(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(12) %15)
  br label %73

45:                                               ; preds = %4
  call void @_ZNKSt3__16vectorIbNS_9allocatorIbEEE13get_allocatorB8ue170006Ev(ptr noundef %31) #12
  %46 = call ptr @_ZNSt3__16vectorIbNS_9allocatorIbEEEC1B8ue170006ERKS2_(ptr noundef %17, ptr noundef nonnull align 1 dereferenceable(1) %18) #12
  %47 = getelementptr inbounds %"class.std::__1::vector.25", ptr %31, i32 0, i32 1
  %48 = load i64, ptr %47, align 8
  %49 = add i64 %48, 1
  %50 = invoke i64 @_ZNKSt3__16vectorIbNS_9allocatorIbEEE11__recommendB8ue170006Em(ptr noundef %31, i64 noundef %49)
          to label %51 unwind label %68

51:                                               ; preds = %45
  invoke void @_ZNSt3__16vectorIbNS_9allocatorIbEEE7reserveEm(ptr noundef %17, i64 noundef %50)
          to label %52 unwind label %68

52:                                               ; preds = %51
  %53 = getelementptr inbounds %"class.std::__1::vector.25", ptr %31, i32 0, i32 1
  %54 = load i64, ptr %53, align 8
  %55 = add i64 %54, 1
  %56 = getelementptr inbounds %"class.std::__1::vector.25", ptr %17, i32 0, i32 1
  store i64 %55, ptr %56, align 8
  %57 = call [2 x i64] @_ZNKSt3__16vectorIbNS_9allocatorIbEEE6cbeginB8ue170006Ev(ptr noundef %31) #12
  store [2 x i64] %57, ptr %23, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %24, ptr align 8 %6, i64 16, i1 false)
  call void @_ZNSt3__16vectorIbNS_9allocatorIbEEE5beginB8ue170006Ev(ptr sret(%"class.std::__1::__bit_iterator") align 8 %25, ptr noundef %17) #12
  %58 = load [2 x i64], ptr %23, align 8
  %59 = load [2 x i64], ptr %24, align 8
  invoke void @_ZNSt3__14copyB8ue170006INS_6vectorIbNS_9allocatorIbEEEELb1EEENS_14__bit_iteratorIT_Lb0EXLi0EEEENS5_IS6_XT0_EXLi0EEEES8_S7_(ptr sret(%"class.std::__1::__bit_iterator") align 8 %22, [2 x i64] %58, [2 x i64] %59, ptr noundef %25)
          to label %60 unwind label %68

60:                                               ; preds = %52
  %61 = invoke noundef nonnull align 8 dereferenceable(12) ptr @_ZNSt3__114__bit_iteratorINS_6vectorIbNS_9allocatorIbEEEELb0ELm0EEaSB8ue170006ERKS5_(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(12) %22)
          to label %62 unwind label %68

62:                                               ; preds = %60
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %26, ptr align 8 %6, i64 16, i1 false)
  %63 = call [2 x i64] @_ZNKSt3__16vectorIbNS_9allocatorIbEEE4cendB8ue170006Ev(ptr noundef %31) #12
  store [2 x i64] %63, ptr %27, align 8
  call void @_ZNSt3__16vectorIbNS_9allocatorIbEEE3endB8ue170006Ev(ptr sret(%"class.std::__1::__bit_iterator") align 8 %28, ptr noundef %17) #12
  %64 = load [2 x i64], ptr %26, align 8
  %65 = load [2 x i64], ptr %27, align 8
  invoke void @_ZNSt3__113copy_backwardB8ue170006INS_6vectorIbNS_9allocatorIbEEEELb1EEENS_14__bit_iteratorIT_Lb0EXLi0EEEENS5_IS6_XT0_EXLi0EEEES8_S7_(ptr sret(%"class.std::__1::__bit_iterator") align 8 %29, [2 x i64] %64, [2 x i64] %65, ptr noundef %28)
          to label %66 unwind label %68

66:                                               ; preds = %62
  call void @_ZNSt3__16vectorIbNS_9allocatorIbEEE4swapERS3_(ptr noundef %31, ptr noundef nonnull align 8 dereferenceable(24) %17) #12
  %67 = call ptr @_ZNSt3__16vectorIbNS_9allocatorIbEEED1B8ue170006Ev(ptr noundef %17) #12
  br label %73

68:                                               ; preds = %62, %60, %52, %51, %45
  %69 = landingpad { ptr, i32 }
          cleanup
  %70 = extractvalue { ptr, i32 } %69, 0
  store ptr %70, ptr %20, align 8
  %71 = extractvalue { ptr, i32 } %69, 1
  store i32 %71, ptr %21, align 4
  %72 = call ptr @_ZNSt3__16vectorIbNS_9allocatorIbEEED1B8ue170006Ev(ptr noundef %17) #12
  br label %79

73:                                               ; preds = %66, %36
  %74 = load ptr, ptr %8, align 8
  %75 = load i8, ptr %74, align 1
  %76 = trunc i8 %75 to i1
  %77 = call [2 x i64] @_ZNKSt3__114__bit_iteratorINS_6vectorIbNS_9allocatorIbEEEELb0ELm0EEdeB8ue170006Ev(ptr noundef %0) #12
  store [2 x i64] %77, ptr %30, align 8
  %78 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt3__115__bit_referenceINS_6vectorIbNS_9allocatorIbEEEELb1EEaSB8ue170006Eb(ptr noundef %30, i1 noundef zeroext %76) #12
  ret void

79:                                               ; preds = %68
  %80 = load ptr, ptr %20, align 8
  %81 = load i32, ptr %21, align 4
  %82 = insertvalue { ptr, i32 } undef, ptr %80, 0
  %83 = insertvalue { ptr, i32 } %82, i32 %81, 1
  resume { ptr, i32 } %83
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNSt3__16vectorIbNS_9allocatorIbEEE5beginB8ue170006Ev(ptr noalias sret(%"class.std::__1::__bit_iterator") align 8 %0, ptr noundef %1) #5 align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = load ptr, ptr %4, align 8
  call void @_ZNSt3__16vectorIbNS_9allocatorIbEEE11__make_iterB8ue170006Em(ptr sret(%"class.std::__1::__bit_iterator") align 8 %0, ptr noundef %5, i64 noundef 0) #12
  ret void
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNKSt3__114__bit_iteratorINS_6vectorIbNS_9allocatorIbEEEELb0ELm0EEplB8ue170006El(ptr noalias sret(%"class.std::__1::__bit_iterator") align 8 %0, ptr noundef %1, i64 noundef %2) #1 align 2 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store i64 %2, ptr %6, align 8
  %7 = load ptr, ptr %5, align 8
  %8 = call ptr @_ZNSt3__114__bit_iteratorINS_6vectorIbNS_9allocatorIbEEEELb0ELm0EEC1B8ue170006ERKS5_(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(12) %7) #12
  %9 = load i64, ptr %6, align 8
  %10 = call noundef nonnull align 8 dereferenceable(12) ptr @_ZNSt3__114__bit_iteratorINS_6vectorIbNS_9allocatorIbEEEELb0ELm0EEpLB8ue170006El(ptr noundef %0, i64 noundef %9)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden ptr @_ZNSt3__114__bit_iteratorINS_6vectorIbNS_9allocatorIbEEEELb1ELm0EEC1B8ue170006ERKNS0_IS4_Lb0ELm0EEE(ptr noundef returned %0, ptr noundef nonnull align 8 dereferenceable(12) %1) unnamed_addr #0 align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = load ptr, ptr %4, align 8
  %7 = call ptr @_ZNSt3__114__bit_iteratorINS_6vectorIbNS_9allocatorIbEEEELb1ELm0EEC2B8ue170006ERKNS0_IS4_Lb0ELm0EEE(ptr noundef %5, ptr noundef nonnull align 8 dereferenceable(12) %6) #12
  ret ptr %5
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define weak_odr zeroext i1 @_ZN9slib_listIbE6removeEi(ptr noundef %0, i32 noundef %1) #1 align 2 personality ptr @__gxx_personality_v0 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca %"class.std::__1::basic_string", align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = alloca %"class.std::__1::__bit_reference", align 8
  %10 = alloca %"class.std::__1::__bit_iterator.32", align 8
  %11 = alloca %"class.std::__1::__bit_iterator", align 8
  %12 = alloca %"class.std::__1::__bit_iterator", align 8
  %13 = alloca %"class.std::__1::__bit_iterator", align 8
  store ptr %0, ptr %3, align 8
  store i32 %1, ptr %4, align 4
  %14 = load ptr, ptr %3, align 8
  %15 = load i32, ptr %4, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %2
  %18 = load i32, ptr %4, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %class.slib_list.24, ptr %14, i32 0, i32 0
  %21 = call i64 @_ZNKSt3__16vectorIbNS_9allocatorIbEEE4sizeB8ue170006Ev(ptr noundef %20) #12
  %22 = icmp uge i64 %19, %21
  br i1 %22, label %23, label %32

23:                                               ; preds = %17, %2
  %24 = call ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ue170006ILi0EEEPKc(ptr noundef %5, ptr noundef @.str.1)
  invoke void @_ZN9slib_util10list_errorERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE(ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %25 unwind label %27

25:                                               ; preds = %23
  %26 = call ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef %5) #12
  br label %32

27:                                               ; preds = %23
  %28 = landingpad { ptr, i32 }
          cleanup
  %29 = extractvalue { ptr, i32 } %28, 0
  store ptr %29, ptr %6, align 8
  %30 = extractvalue { ptr, i32 } %28, 1
  store i32 %30, ptr %7, align 4
  %31 = call ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef %5) #12
  br label %47

32:                                               ; preds = %25, %17
  %33 = getelementptr inbounds %class.slib_list.24, ptr %14, i32 0, i32 0
  %34 = load i32, ptr %4, align 4
  %35 = sext i32 %34 to i64
  %36 = call [2 x i64] @_ZNSt3__16vectorIbNS_9allocatorIbEEE2atEm(ptr noundef %33, i64 noundef %35)
  store [2 x i64] %36, ptr %9, align 8
  %37 = call zeroext i1 @_ZNKSt3__115__bit_referenceINS_6vectorIbNS_9allocatorIbEEEELb1EEcvbB8ue170006Ev(ptr noundef %9) #12
  %38 = zext i1 %37 to i8
  store i8 %38, ptr %8, align 1
  %39 = getelementptr inbounds %class.slib_list.24, ptr %14, i32 0, i32 0
  %40 = getelementptr inbounds %class.slib_list.24, ptr %14, i32 0, i32 0
  call void @_ZNSt3__16vectorIbNS_9allocatorIbEEE5beginB8ue170006Ev(ptr sret(%"class.std::__1::__bit_iterator") align 8 %12, ptr noundef %40) #12
  %41 = load i32, ptr %4, align 4
  %42 = sext i32 %41 to i64
  call void @_ZNKSt3__114__bit_iteratorINS_6vectorIbNS_9allocatorIbEEEELb0ELm0EEplB8ue170006El(ptr sret(%"class.std::__1::__bit_iterator") align 8 %11, ptr noundef %12, i64 noundef %42)
  %43 = call ptr @_ZNSt3__114__bit_iteratorINS_6vectorIbNS_9allocatorIbEEEELb1ELm0EEC1B8ue170006ERKNS0_IS4_Lb0ELm0EEE(ptr noundef %10, ptr noundef nonnull align 8 dereferenceable(12) %11) #12
  %44 = load [2 x i64], ptr %10, align 8
  call void @_ZNSt3__16vectorIbNS_9allocatorIbEEE5eraseB8ue170006ENS_14__bit_iteratorIS3_Lb1ELm0EEE(ptr sret(%"class.std::__1::__bit_iterator") align 8 %13, ptr noundef %39, [2 x i64] %44)
  %45 = load i8, ptr %8, align 1
  %46 = trunc i8 %45 to i1
  ret i1 %46

47:                                               ; preds = %27
  %48 = load ptr, ptr %6, align 8
  %49 = load i32, ptr %7, align 4
  %50 = insertvalue { ptr, i32 } undef, ptr %48, 0
  %51 = insertvalue { ptr, i32 } %50, i32 %49, 1
  resume { ptr, i32 } %51
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden [2 x i64] @_ZNSt3__16vectorIbNS_9allocatorIbEEE2atEm(ptr noundef %0, i64 noundef %1) #1 align 2 {
  %3 = alloca %"class.std::__1::__bit_reference", align 8
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
  store i64 %1, ptr %5, align 8
  %6 = load ptr, ptr %4, align 8
  %7 = load i64, ptr %5, align 8
  %8 = call i64 @_ZNKSt3__16vectorIbNS_9allocatorIbEEE4sizeB8ue170006Ev(ptr noundef %6) #12
  %9 = icmp uge i64 %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  call void @_ZNKSt3__16vectorIbNS_9allocatorIbEEE20__throw_out_of_rangeB8ue170006Ev(ptr noundef %6) #13
  unreachable

11:                                               ; preds = %2
  %12 = load i64, ptr %5, align 8
  %13 = call [2 x i64] @_ZNSt3__16vectorIbNS_9allocatorIbEEEixB8ue170006Em(ptr noundef %6, i64 noundef %12)
  store [2 x i64] %13, ptr %3, align 8
  %14 = load [2 x i64], ptr %3, align 8
  ret [2 x i64] %14
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden zeroext i1 @_ZNKSt3__115__bit_referenceINS_6vectorIbNS_9allocatorIbEEEELb1EEcvbB8ue170006Ev(ptr noundef %0) #5 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.std::__1::__bit_reference", ptr %3, i32 0, i32 0
  %5 = load ptr, ptr %4, align 8
  %6 = load i64, ptr %5, align 8
  %7 = getelementptr inbounds %"class.std::__1::__bit_reference", ptr %3, i32 0, i32 1
  %8 = load i64, ptr %7, align 8
  %9 = and i64 %6, %8
  %10 = icmp ne i64 %9, 0
  ret i1 %10
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNSt3__16vectorIbNS_9allocatorIbEEE5eraseB8ue170006ENS_14__bit_iteratorIS3_Lb1ELm0EEE(ptr noalias sret(%"class.std::__1::__bit_iterator") align 8 %0, ptr noundef %1, [2 x i64] %2) #1 align 2 {
  %4 = alloca ptr, align 8
  %5 = alloca %"class.std::__1::__bit_iterator.32", align 8
  %6 = alloca ptr, align 8
  %7 = alloca %"class.std::__1::__bit_iterator.32", align 8
  %8 = alloca %"class.std::__1::__bit_iterator.32", align 8
  %9 = alloca %"class.std::__1::__bit_iterator.32", align 8
  %10 = alloca %"class.std::__1::__bit_iterator", align 8
  %11 = alloca %"class.std::__1::__bit_iterator", align 8
  store ptr %0, ptr %4, align 8
  store [2 x i64] %2, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  %12 = load ptr, ptr %6, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %7, ptr align 8 %5, i64 16, i1 false)
  %13 = load [2 x i64], ptr %7, align 8
  call void @_ZNSt3__16vectorIbNS_9allocatorIbEEE21__const_iterator_castB8ue170006ENS_14__bit_iteratorIS3_Lb1ELm0EEE(ptr sret(%"class.std::__1::__bit_iterator") align 8 %0, ptr noundef %12, [2 x i64] %13) #12
  %14 = call [2 x i64] @_ZNKSt3__114__bit_iteratorINS_6vectorIbNS_9allocatorIbEEEELb1ELm0EEplB8ue170006El(ptr noundef %5, i64 noundef 1)
  store [2 x i64] %14, ptr %8, align 8
  %15 = call [2 x i64] @_ZNKSt3__16vectorIbNS_9allocatorIbEEE4cendB8ue170006Ev(ptr noundef %12) #12
  store [2 x i64] %15, ptr %9, align 8
  %16 = call ptr @_ZNSt3__114__bit_iteratorINS_6vectorIbNS_9allocatorIbEEEELb0ELm0EEC1B8ue170006ERKS5_(ptr noundef %10, ptr noundef nonnull align 8 dereferenceable(12) %0) #12
  %17 = load [2 x i64], ptr %8, align 8
  %18 = load [2 x i64], ptr %9, align 8
  call void @_ZNSt3__14copyB8ue170006INS_6vectorIbNS_9allocatorIbEEEELb1EEENS_14__bit_iteratorIT_Lb0EXLi0EEEENS5_IS6_XT0_EXLi0EEEES8_S7_(ptr sret(%"class.std::__1::__bit_iterator") align 8 %11, [2 x i64] %17, [2 x i64] %18, ptr noundef %10)
  %19 = getelementptr inbounds %"class.std::__1::vector.25", ptr %12, i32 0, i32 1
  %20 = load i64, ptr %19, align 8
  %21 = add i64 %20, -1
  store i64 %21, ptr %19, align 8
  ret void
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define weak_odr zeroext i1 @_ZN9slib_listIbE2atEi(ptr noundef %0, i32 noundef %1) #1 align 2 personality ptr @__gxx_personality_v0 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca %"class.std::__1::basic_string", align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca %"class.std::__1::__bit_reference", align 8
  store ptr %0, ptr %3, align 8
  store i32 %1, ptr %4, align 4
  %9 = load ptr, ptr %3, align 8
  %10 = load i32, ptr %4, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %18, label %12

12:                                               ; preds = %2
  %13 = load i32, ptr %4, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %class.slib_list.24, ptr %9, i32 0, i32 0
  %16 = call i64 @_ZNKSt3__16vectorIbNS_9allocatorIbEEE4sizeB8ue170006Ev(ptr noundef %15) #12
  %17 = icmp uge i64 %14, %16
  br i1 %17, label %18, label %27

18:                                               ; preds = %12, %2
  %19 = call ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ue170006ILi0EEEPKc(ptr noundef %5, ptr noundef @.str.1)
  invoke void @_ZN9slib_util10list_errorERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE(ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %20 unwind label %22

20:                                               ; preds = %18
  %21 = call ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef %5) #12
  br label %27

22:                                               ; preds = %18
  %23 = landingpad { ptr, i32 }
          cleanup
  %24 = extractvalue { ptr, i32 } %23, 0
  store ptr %24, ptr %6, align 8
  %25 = extractvalue { ptr, i32 } %23, 1
  store i32 %25, ptr %7, align 4
  %26 = call ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef %5) #12
  br label %33

27:                                               ; preds = %20, %12
  %28 = getelementptr inbounds %class.slib_list.24, ptr %9, i32 0, i32 0
  %29 = load i32, ptr %4, align 4
  %30 = sext i32 %29 to i64
  %31 = call [2 x i64] @_ZNSt3__16vectorIbNS_9allocatorIbEEE2atEm(ptr noundef %28, i64 noundef %30)
  store [2 x i64] %31, ptr %8, align 8
  %32 = call zeroext i1 @_ZNKSt3__115__bit_referenceINS_6vectorIbNS_9allocatorIbEEEELb1EEcvbB8ue170006Ev(ptr noundef %8) #12
  ret i1 %32

33:                                               ; preds = %22
  %34 = load ptr, ptr %6, align 8
  %35 = load i32, ptr %7, align 4
  %36 = insertvalue { ptr, i32 } undef, ptr %34, 0
  %37 = insertvalue { ptr, i32 } %36, i32 %35, 1
  resume { ptr, i32 } %37
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define weak_odr i32 @_ZN9slib_listIbE4sizeEv(ptr noundef %0) #5 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %class.slib_list.24, ptr %3, i32 0, i32 0
  %5 = call i64 @_ZNKSt3__16vectorIbNS_9allocatorIbEEE4sizeB8ue170006Ev(ptr noundef %4) #12
  %6 = trunc i64 %5 to i32
  ret i32 %6
}

; Function Attrs: argmemonly nocallback nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__111__wrap_iterIPiEpLB8ue170006El(ptr noundef %0, i64 noundef %1) #5 align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  store ptr %0, ptr %3, align 8
  store i64 %1, ptr %4, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = load i64, ptr %4, align 8
  %7 = getelementptr inbounds %"class.std::__1::__wrap_iter.7", ptr %5, i32 0, i32 0
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds i32, ptr %8, i64 %6
  store ptr %9, ptr %7, align 8
  ret ptr %5
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr ptr @_ZNSt3__111__wrap_iterIPKiEC2B8ue170006IPiEERKNS0_IT_EEPNS_9enable_ifIXsr14is_convertibleIS6_S2_EE5valueEvE4typeE(ptr noundef returned %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2) unnamed_addr #0 align 2 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  %7 = load ptr, ptr %4, align 8
  %8 = getelementptr inbounds %"class.std::__1::__wrap_iter", ptr %7, i32 0, i32 0
  %9 = load ptr, ptr %5, align 8
  %10 = call ptr @_ZNKSt3__111__wrap_iterIPiE4baseB8ue170006Ev(ptr noundef %9) #12
  store ptr %10, ptr %8, align 8
  ret ptr %7
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden ptr @_ZNKSt3__111__wrap_iterIPiE4baseB8ue170006Ev(ptr noundef %0) #5 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.std::__1::__wrap_iter.7", ptr %3, i32 0, i32 0
  %5 = load ptr, ptr %4, align 8
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__111__wrap_iterIPfEpLB8ue170006El(ptr noundef %0, i64 noundef %1) #5 align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  store ptr %0, ptr %3, align 8
  store i64 %1, ptr %4, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = load i64, ptr %4, align 8
  %7 = getelementptr inbounds %"class.std::__1::__wrap_iter.17", ptr %5, i32 0, i32 0
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds float, ptr %8, i64 %6
  store ptr %9, ptr %7, align 8
  ret ptr %5
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr ptr @_ZNSt3__111__wrap_iterIPKfEC2B8ue170006IPfEERKNS0_IT_EEPNS_9enable_ifIXsr14is_convertibleIS6_S2_EE5valueEvE4typeE(ptr noundef returned %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2) unnamed_addr #0 align 2 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  %7 = load ptr, ptr %4, align 8
  %8 = getelementptr inbounds %"class.std::__1::__wrap_iter.16", ptr %7, i32 0, i32 0
  %9 = load ptr, ptr %5, align 8
  %10 = call ptr @_ZNKSt3__111__wrap_iterIPfE4baseB8ue170006Ev(ptr noundef %9) #12
  store ptr %10, ptr %8, align 8
  ret ptr %7
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden ptr @_ZNKSt3__111__wrap_iterIPfE4baseB8ue170006Ev(ptr noundef %0) #5 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.std::__1::__wrap_iter.17", ptr %3, i32 0, i32 0
  %5 = load ptr, ptr %4, align 8
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__111__wrap_iterIPcEpLB8ue170006El(ptr noundef %0, i64 noundef %1) #5 align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  store ptr %0, ptr %3, align 8
  store i64 %1, ptr %4, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = load i64, ptr %4, align 8
  %7 = getelementptr inbounds %"class.std::__1::__wrap_iter.23", ptr %5, i32 0, i32 0
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds i8, ptr %8, i64 %6
  store ptr %9, ptr %7, align 8
  ret ptr %5
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr ptr @_ZNSt3__111__wrap_iterIPKcEC2B8ue170006IPcEERKNS0_IT_EEPNS_9enable_ifIXsr14is_convertibleIS6_S2_EE5valueEvE4typeE(ptr noundef returned %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2) unnamed_addr #0 align 2 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  %7 = load ptr, ptr %4, align 8
  %8 = getelementptr inbounds %"class.std::__1::__wrap_iter.22", ptr %7, i32 0, i32 0
  %9 = load ptr, ptr %5, align 8
  %10 = call ptr @_ZNKSt3__111__wrap_iterIPcE4baseB8ue170006Ev(ptr noundef %9) #12
  store ptr %10, ptr %8, align 8
  ret ptr %7
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden ptr @_ZNKSt3__111__wrap_iterIPcE4baseB8ue170006Ev(ptr noundef %0) #5 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.std::__1::__wrap_iter.23", ptr %3, i32 0, i32 0
  %5 = load ptr, ptr %4, align 8
  ret ptr %5
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden ptr @_ZNSt3__16vectorIiNS_9allocatorIiEEEC2B8ue170006Ev(ptr noundef returned %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca %"struct.std::__1::__default_init_tag", align 1
  store ptr %0, ptr %2, align 8
  %5 = load ptr, ptr %2, align 8
  %6 = getelementptr inbounds %"class.std::__1::vector", ptr %5, i32 0, i32 0
  store ptr null, ptr %6, align 8
  %7 = getelementptr inbounds %"class.std::__1::vector", ptr %5, i32 0, i32 1
  store ptr null, ptr %7, align 8
  %8 = getelementptr inbounds %"class.std::__1::vector", ptr %5, i32 0, i32 2
  store ptr null, ptr %3, align 8
  %9 = invoke ptr @_ZNSt3__117__compressed_pairIPiNS_9allocatorIiEEEC1B8ue170006IDnNS_18__default_init_tagEEEOT_OT0_(ptr noundef %8, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %10 unwind label %11

10:                                               ; preds = %1
  ret ptr %5

11:                                               ; preds = %1
  %12 = landingpad { ptr, i32 }
          catch ptr null
  %13 = extractvalue { ptr, i32 } %12, 0
  call void @__clang_call_terminate(ptr %13) #14
  unreachable
}

; Function Attrs: noinline optnone ssp uwtable(sync)
define linkonce_odr ptr @_ZNSt3__117__compressed_pairIPiNS_9allocatorIiEEEC1B8ue170006IDnNS_18__default_init_tagEEEOT_OT0_(ptr noundef returned %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #3 align 2 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  %7 = load ptr, ptr %4, align 8
  %8 = load ptr, ptr %5, align 8
  %9 = load ptr, ptr %6, align 8
  %10 = call ptr @_ZNSt3__117__compressed_pairIPiNS_9allocatorIiEEEC2B8ue170006IDnNS_18__default_init_tagEEEOT_OT0_(ptr noundef %7, ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 1 dereferenceable(1) %9)
  ret ptr %7
}

; Function Attrs: noinline noreturn nounwind
define linkonce_odr hidden void @__clang_call_terminate(ptr %0) #7 {
  %2 = call ptr @__cxa_begin_catch(ptr %0) #12
  call void @_ZSt9terminatev() #14
  unreachable
}

declare ptr @__cxa_begin_catch(ptr)

declare void @_ZSt9terminatev()

; Function Attrs: noinline optnone ssp uwtable(sync)
define linkonce_odr ptr @_ZNSt3__117__compressed_pairIPiNS_9allocatorIiEEEC2B8ue170006IDnNS_18__default_init_tagEEEOT_OT0_(ptr noundef returned %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #3 align 2 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca %"struct.std::__1::__default_init_tag", align 1
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  %8 = load ptr, ptr %4, align 8
  %9 = load ptr, ptr %5, align 8
  %10 = call ptr @_ZNSt3__122__compressed_pair_elemIPiLi0ELb0EEC2B8ue170006IDnvEEOT_(ptr noundef %8, ptr noundef nonnull align 8 dereferenceable(8) %9)
  %11 = load ptr, ptr %6, align 8
  %12 = call ptr @_ZNSt3__122__compressed_pair_elemINS_9allocatorIiEELi1ELb1EEC2B8ue170006ENS_18__default_init_tagE(ptr noundef %8)
  ret ptr %8
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr ptr @_ZNSt3__122__compressed_pair_elemIPiLi0ELb0EEC2B8ue170006IDnvEEOT_(ptr noundef returned %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = getelementptr inbounds %"struct.std::__1::__compressed_pair_elem", ptr %5, i32 0, i32 0
  %7 = load ptr, ptr %4, align 8
  store ptr null, ptr %6, align 8
  ret ptr %5
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden ptr @_ZNSt3__122__compressed_pair_elemINS_9allocatorIiEELi1ELb1EEC2B8ue170006ENS_18__default_init_tagE(ptr noundef returned %0) unnamed_addr #0 align 2 {
  %2 = alloca %"struct.std::__1::__default_init_tag", align 1
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  %4 = load ptr, ptr %3, align 8
  %5 = call ptr @_ZNSt3__19allocatorIiEC2B8ue170006Ev(ptr noundef %4) #12
  ret ptr %4
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden ptr @_ZNSt3__19allocatorIiEC2B8ue170006Ev(ptr noundef returned %0) unnamed_addr #0 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = call ptr @_ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIiEEEC2B8ue170006Ev(ptr noundef %3) #12
  ret ptr %3
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden ptr @_ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIiEEEC2B8ue170006Ev(ptr noundef returned %0) unnamed_addr #0 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  ret ptr %3
}

; Function Attrs: noinline optnone ssp uwtable(sync)
define linkonce_odr ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ue170006ILi0EEEPKc(ptr noundef returned %0, ptr noundef %1) unnamed_addr #3 align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca %"struct.std::__1::__default_init_tag", align 1
  %6 = alloca %"struct.std::__1::__default_init_tag", align 1
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %7 = load ptr, ptr %3, align 8
  %8 = getelementptr inbounds %"class.std::__1::basic_string", ptr %7, i32 0, i32 0
  %9 = call ptr @_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC1B8ue170006INS_18__default_init_tagESA_EEOT_OT0_(ptr noundef %8, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 1 dereferenceable(1) %6)
  %10 = load ptr, ptr %4, align 8
  %11 = load ptr, ptr %4, align 8
  %12 = call i64 @_ZNSt3__111char_traitsIcE6lengthB8ue170006EPKc(ptr noundef %11) #12
  call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initEPKcm(ptr noundef %7, ptr noundef %10, i64 noundef %12)
  ret ptr %7
}

; Function Attrs: noinline optnone ssp uwtable(sync)
define linkonce_odr ptr @_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC1B8ue170006INS_18__default_init_tagESA_EEOT_OT0_(ptr noundef returned %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #3 align 2 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  %7 = load ptr, ptr %4, align 8
  %8 = load ptr, ptr %5, align 8
  %9 = load ptr, ptr %6, align 8
  %10 = call ptr @_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC2B8ue170006INS_18__default_init_tagESA_EEOT_OT0_(ptr noundef %7, ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 1 dereferenceable(1) %9)
  ret ptr %7
}

declare void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initEPKcm(ptr noundef, ptr noundef, i64 noundef) #2

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden i64 @_ZNSt3__111char_traitsIcE6lengthB8ue170006EPKc(ptr noundef %0) #5 align 2 personality ptr @__gxx_personality_v0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = invoke i64 @_ZNSt3__118__constexpr_strlenB8ue170006EPKc(ptr noundef %3)
          to label %5 unwind label %6

5:                                                ; preds = %1
  ret i64 %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          catch ptr null
  %8 = extractvalue { ptr, i32 } %7, 0
  call void @__clang_call_terminate(ptr %8) #14
  unreachable
}

; Function Attrs: noinline optnone ssp uwtable(sync)
define linkonce_odr ptr @_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC2B8ue170006INS_18__default_init_tagESA_EEOT_OT0_(ptr noundef returned %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #3 align 2 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca %"struct.std::__1::__default_init_tag", align 1
  %8 = alloca %"struct.std::__1::__default_init_tag", align 1
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  %9 = load ptr, ptr %4, align 8
  %10 = load ptr, ptr %5, align 8
  %11 = call ptr @_ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EEC2B8ue170006ENS_18__default_init_tagE(ptr noundef %9)
  %12 = load ptr, ptr %6, align 8
  %13 = call ptr @_ZNSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EEC2B8ue170006ENS_18__default_init_tagE(ptr noundef %9)
  ret ptr %9
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden ptr @_ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EEC2B8ue170006ENS_18__default_init_tagE(ptr noundef returned %0) unnamed_addr #0 align 2 {
  %2 = alloca %"struct.std::__1::__default_init_tag", align 1
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %"struct.std::__1::__compressed_pair_elem.2", ptr %4, i32 0, i32 0
  ret ptr %4
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden ptr @_ZNSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EEC2B8ue170006ENS_18__default_init_tagE(ptr noundef returned %0) unnamed_addr #0 align 2 {
  %2 = alloca %"struct.std::__1::__default_init_tag", align 1
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  %4 = load ptr, ptr %3, align 8
  %5 = call ptr @_ZNSt3__19allocatorIcEC2B8ue170006Ev(ptr noundef %4) #12
  ret ptr %4
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden ptr @_ZNSt3__19allocatorIcEC2B8ue170006Ev(ptr noundef returned %0) unnamed_addr #0 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = call ptr @_ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIcEEEC2B8ue170006Ev(ptr noundef %3) #12
  ret ptr %3
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden ptr @_ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIcEEEC2B8ue170006Ev(ptr noundef returned %0) unnamed_addr #0 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden i64 @_ZNSt3__118__constexpr_strlenB8ue170006EPKc(ptr noundef %0) #5 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = call i64 @strlen(ptr noundef %3) #12
  ret i64 %4
}

; Function Attrs: nounwind
declare i64 @strlen(ptr noundef) #4

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__16vectorIiNS_9allocatorIiEEE9__end_capB8ue170006Ev(ptr noundef %0) #5 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.std::__1::vector", ptr %3, i32 0, i32 2
  %5 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__117__compressed_pairIPiNS_9allocatorIiEEE5firstB8ue170006Ev(ptr noundef %4) #12
  ret ptr %5
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr void @_ZNSt3__16vectorIiNS_9allocatorIiEEE22__construct_one_at_endB8ue170006IJRKiEEEvDpOT_(ptr noundef %0, ptr noundef nonnull align 4 dereferenceable(4) %1) #1 align 2 personality ptr @__gxx_personality_v0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca %"struct.std::__1::vector<int>::_ConstructTransaction", align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %8 = load ptr, ptr %3, align 8
  %9 = call ptr @_ZNSt3__16vectorIiNS_9allocatorIiEEE21_ConstructTransactionC1B8ue170006ERS3_m(ptr noundef %5, ptr noundef nonnull align 8 dereferenceable(24) %8, i64 noundef 1)
  %10 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__16vectorIiNS_9allocatorIiEEE7__allocB8ue170006Ev(ptr noundef %8) #12
  %11 = getelementptr inbounds %"struct.std::__1::vector<int>::_ConstructTransaction", ptr %5, i32 0, i32 1
  %12 = load ptr, ptr %11, align 8
  %13 = call ptr @_ZNSt3__112__to_addressB8ue170006IiEEPT_S2_(ptr noundef %12) #12
  %14 = load ptr, ptr %4, align 8
  invoke void @_ZNSt3__116allocator_traitsINS_9allocatorIiEEE9constructB8ue170006IiJRKiEvEEvRS2_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %10, ptr noundef %13, ptr noundef nonnull align 4 dereferenceable(4) %14)
          to label %15 unwind label %20

15:                                               ; preds = %2
  %16 = getelementptr inbounds %"struct.std::__1::vector<int>::_ConstructTransaction", ptr %5, i32 0, i32 1
  %17 = load ptr, ptr %16, align 8
  %18 = getelementptr inbounds i32, ptr %17, i32 1
  store ptr %18, ptr %16, align 8
  %19 = call ptr @_ZNSt3__16vectorIiNS_9allocatorIiEEE21_ConstructTransactionD1B8ue170006Ev(ptr noundef %5) #12
  ret void

20:                                               ; preds = %2
  %21 = landingpad { ptr, i32 }
          cleanup
  %22 = extractvalue { ptr, i32 } %21, 0
  store ptr %22, ptr %6, align 8
  %23 = extractvalue { ptr, i32 } %21, 1
  store i32 %23, ptr %7, align 4
  %24 = call ptr @_ZNSt3__16vectorIiNS_9allocatorIiEEE21_ConstructTransactionD1B8ue170006Ev(ptr noundef %5) #12
  br label %25

25:                                               ; preds = %20
  %26 = load ptr, ptr %6, align 8
  %27 = load i32, ptr %7, align 4
  %28 = insertvalue { ptr, i32 } undef, ptr %26, 0
  %29 = insertvalue { ptr, i32 } %28, i32 %27, 1
  resume { ptr, i32 } %29
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr void @_ZNSt3__16vectorIiNS_9allocatorIiEEE21__push_back_slow_pathIRKiEEvOT_(ptr noundef %0, ptr noundef nonnull align 4 dereferenceable(4) %1) #1 align 2 personality ptr @__gxx_personality_v0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca %"struct.std::__1::__split_buffer", align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %9 = load ptr, ptr %3, align 8
  %10 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__16vectorIiNS_9allocatorIiEEE7__allocB8ue170006Ev(ptr noundef %9) #12
  store ptr %10, ptr %5, align 8
  %11 = call i64 @_ZNKSt3__16vectorIiNS_9allocatorIiEEE4sizeB8ue170006Ev(ptr noundef %9) #12
  %12 = add i64 %11, 1
  %13 = call i64 @_ZNKSt3__16vectorIiNS_9allocatorIiEEE11__recommendB8ue170006Em(ptr noundef %9, i64 noundef %12)
  %14 = call i64 @_ZNKSt3__16vectorIiNS_9allocatorIiEEE4sizeB8ue170006Ev(ptr noundef %9) #12
  %15 = load ptr, ptr %5, align 8
  %16 = call ptr @_ZNSt3__114__split_bufferIiRNS_9allocatorIiEEEC1EmmS3_(ptr noundef %6, i64 noundef %13, i64 noundef %14, ptr noundef nonnull align 1 dereferenceable(1) %15)
  %17 = load ptr, ptr %5, align 8
  %18 = getelementptr inbounds %"struct.std::__1::__split_buffer", ptr %6, i32 0, i32 2
  %19 = load ptr, ptr %18, align 8
  %20 = call ptr @_ZNSt3__112__to_addressB8ue170006IiEEPT_S2_(ptr noundef %19) #12
  %21 = load ptr, ptr %4, align 8
  invoke void @_ZNSt3__116allocator_traitsINS_9allocatorIiEEE9constructB8ue170006IiJRKiEvEEvRS2_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %17, ptr noundef %20, ptr noundef nonnull align 4 dereferenceable(4) %21)
          to label %22 unwind label %28

22:                                               ; preds = %2
  %23 = getelementptr inbounds %"struct.std::__1::__split_buffer", ptr %6, i32 0, i32 2
  %24 = load ptr, ptr %23, align 8
  %25 = getelementptr inbounds i32, ptr %24, i32 1
  store ptr %25, ptr %23, align 8
  invoke void @_ZNSt3__16vectorIiNS_9allocatorIiEEE26__swap_out_circular_bufferERNS_14__split_bufferIiRS2_EE(ptr noundef %9, ptr noundef nonnull align 8 dereferenceable(40) %6)
          to label %26 unwind label %28

26:                                               ; preds = %22
  %27 = call ptr @_ZNSt3__114__split_bufferIiRNS_9allocatorIiEEED1Ev(ptr noundef %6) #12
  ret void

28:                                               ; preds = %22, %2
  %29 = landingpad { ptr, i32 }
          cleanup
  %30 = extractvalue { ptr, i32 } %29, 0
  store ptr %30, ptr %7, align 8
  %31 = extractvalue { ptr, i32 } %29, 1
  store i32 %31, ptr %8, align 4
  %32 = call ptr @_ZNSt3__114__split_bufferIiRNS_9allocatorIiEEED1Ev(ptr noundef %6) #12
  br label %33

33:                                               ; preds = %28
  %34 = load ptr, ptr %7, align 8
  %35 = load i32, ptr %8, align 4
  %36 = insertvalue { ptr, i32 } undef, ptr %34, 0
  %37 = insertvalue { ptr, i32 } %36, i32 %35, 1
  resume { ptr, i32 } %37
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__117__compressed_pairIPiNS_9allocatorIiEEE5firstB8ue170006Ev(ptr noundef %0) #5 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__122__compressed_pair_elemIPiLi0ELb0EE5__getB8ue170006Ev(ptr noundef %3) #12
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__122__compressed_pair_elemIPiLi0ELb0EE5__getB8ue170006Ev(ptr noundef %0) #5 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"struct.std::__1::__compressed_pair_elem", ptr %3, i32 0, i32 0
  ret ptr %4
}

; Function Attrs: noinline optnone ssp uwtable(sync)
define linkonce_odr hidden ptr @_ZNSt3__16vectorIiNS_9allocatorIiEEE21_ConstructTransactionC1B8ue170006ERS3_m(ptr noundef returned %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %2) unnamed_addr #3 align 2 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store i64 %2, ptr %6, align 8
  %7 = load ptr, ptr %4, align 8
  %8 = load ptr, ptr %5, align 8
  %9 = load i64, ptr %6, align 8
  %10 = call ptr @_ZNSt3__16vectorIiNS_9allocatorIiEEE21_ConstructTransactionC2B8ue170006ERS3_m(ptr noundef %7, ptr noundef nonnull align 8 dereferenceable(24) %8, i64 noundef %9)
  ret ptr %7
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr void @_ZNSt3__116allocator_traitsINS_9allocatorIiEEE9constructB8ue170006IiJRKiEvEEvRS2_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) #1 align 2 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  %7 = load ptr, ptr %4, align 8
  %8 = load ptr, ptr %5, align 8
  %9 = load ptr, ptr %6, align 8
  call void @_ZNSt3__19allocatorIiE9constructB8ue170006IiJRKiEEEvPT_DpOT0_(ptr noundef %7, ptr noundef %8, ptr noundef nonnull align 4 dereferenceable(4) %9)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__16vectorIiNS_9allocatorIiEEE7__allocB8ue170006Ev(ptr noundef %0) #5 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.std::__1::vector", ptr %3, i32 0, i32 2
  %5 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__117__compressed_pairIPiNS_9allocatorIiEEE6secondB8ue170006Ev(ptr noundef %4) #12
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden ptr @_ZNSt3__112__to_addressB8ue170006IiEEPT_S2_(ptr noundef %0) #5 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  ret ptr %3
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden ptr @_ZNSt3__16vectorIiNS_9allocatorIiEEE21_ConstructTransactionD1B8ue170006Ev(ptr noundef returned %0) unnamed_addr #0 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = call ptr @_ZNSt3__16vectorIiNS_9allocatorIiEEE21_ConstructTransactionD2B8ue170006Ev(ptr noundef %3) #12
  ret ptr %3
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden ptr @_ZNSt3__16vectorIiNS_9allocatorIiEEE21_ConstructTransactionC2B8ue170006ERS3_m(ptr noundef returned %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %2) unnamed_addr #0 align 2 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store i64 %2, ptr %6, align 8
  %7 = load ptr, ptr %4, align 8
  %8 = getelementptr inbounds %"struct.std::__1::vector<int>::_ConstructTransaction", ptr %7, i32 0, i32 0
  %9 = load ptr, ptr %5, align 8
  store ptr %9, ptr %8, align 8
  %10 = getelementptr inbounds %"struct.std::__1::vector<int>::_ConstructTransaction", ptr %7, i32 0, i32 1
  %11 = load ptr, ptr %5, align 8
  %12 = getelementptr inbounds %"class.std::__1::vector", ptr %11, i32 0, i32 1
  %13 = load ptr, ptr %12, align 8
  store ptr %13, ptr %10, align 8
  %14 = getelementptr inbounds %"struct.std::__1::vector<int>::_ConstructTransaction", ptr %7, i32 0, i32 2
  %15 = load ptr, ptr %5, align 8
  %16 = getelementptr inbounds %"class.std::__1::vector", ptr %15, i32 0, i32 1
  %17 = load ptr, ptr %16, align 8
  %18 = load i64, ptr %6, align 8
  %19 = getelementptr inbounds i32, ptr %17, i64 %18
  store ptr %19, ptr %14, align 8
  ret ptr %7
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr void @_ZNSt3__19allocatorIiE9constructB8ue170006IiJRKiEEEvPT_DpOT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) #5 align 2 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  %7 = load ptr, ptr %4, align 8
  %8 = load ptr, ptr %5, align 8
  %9 = load ptr, ptr %6, align 8
  %10 = load i32, ptr %9, align 4
  store i32 %10, ptr %8, align 4
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__117__compressed_pairIPiNS_9allocatorIiEEE6secondB8ue170006Ev(ptr noundef %0) #5 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__122__compressed_pair_elemINS_9allocatorIiEELi1ELb1EE5__getB8ue170006Ev(ptr noundef %3) #12
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__122__compressed_pair_elemINS_9allocatorIiEELi1ELb1EE5__getB8ue170006Ev(ptr noundef %0) #5 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  ret ptr %3
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden ptr @_ZNSt3__16vectorIiNS_9allocatorIiEEE21_ConstructTransactionD2B8ue170006Ev(ptr noundef returned %0) unnamed_addr #0 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"struct.std::__1::vector<int>::_ConstructTransaction", ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %"struct.std::__1::vector<int>::_ConstructTransaction", ptr %3, i32 0, i32 0
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %"class.std::__1::vector", ptr %7, i32 0, i32 1
  store ptr %5, ptr %8, align 8
  ret ptr %3
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden i64 @_ZNKSt3__16vectorIiNS_9allocatorIiEEE11__recommendB8ue170006Em(ptr noundef %0, i64 noundef %1) #1 align 2 {
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
  store i64 %1, ptr %5, align 8
  %9 = load ptr, ptr %4, align 8
  %10 = call i64 @_ZNKSt3__16vectorIiNS_9allocatorIiEEE8max_sizeEv(ptr noundef %9) #12
  store i64 %10, ptr %6, align 8
  %11 = load i64, ptr %5, align 8
  %12 = load i64, ptr %6, align 8
  %13 = icmp ugt i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  call void @_ZNKSt3__16vectorIiNS_9allocatorIiEEE20__throw_length_errorB8ue170006Ev(ptr noundef %9) #13
  unreachable

15:                                               ; preds = %2
  %16 = call i64 @_ZNKSt3__16vectorIiNS_9allocatorIiEEE8capacityB8ue170006Ev(ptr noundef %9) #12
  store i64 %16, ptr %7, align 8
  %17 = load i64, ptr %7, align 8
  %18 = load i64, ptr %6, align 8
  %19 = udiv i64 %18, 2
  %20 = icmp uge i64 %17, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %15
  %22 = load i64, ptr %6, align 8
  store i64 %22, ptr %3, align 8
  br label %28

23:                                               ; preds = %15
  %24 = load i64, ptr %7, align 8
  %25 = mul i64 2, %24
  store i64 %25, ptr %8, align 8
  %26 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__13maxB8ue170006ImEERKT_S3_S3_(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %5)
  %27 = load i64, ptr %26, align 8
  store i64 %27, ptr %3, align 8
  br label %28

28:                                               ; preds = %23, %21
  %29 = load i64, ptr %3, align 8
  ret i64 %29
}

; Function Attrs: noinline optnone ssp uwtable(sync)
define linkonce_odr hidden ptr @_ZNSt3__114__split_bufferIiRNS_9allocatorIiEEEC1EmmS3_(ptr noundef returned %0, i64 noundef %1, i64 noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) unnamed_addr #3 align 2 {
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
  store i64 %1, ptr %6, align 8
  store i64 %2, ptr %7, align 8
  store ptr %3, ptr %8, align 8
  %9 = load ptr, ptr %5, align 8
  %10 = load i64, ptr %6, align 8
  %11 = load i64, ptr %7, align 8
  %12 = load ptr, ptr %8, align 8
  %13 = call ptr @_ZNSt3__114__split_bufferIiRNS_9allocatorIiEEEC2EmmS3_(ptr noundef %9, i64 noundef %10, i64 noundef %11, ptr noundef nonnull align 1 dereferenceable(1) %12)
  ret ptr %9
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNSt3__16vectorIiNS_9allocatorIiEEE26__swap_out_circular_bufferERNS_14__split_bufferIiRS2_EE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(40) %1) #1 align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca %"class.std::__1::reverse_iterator", align 8
  %6 = alloca %"class.std::__1::reverse_iterator", align 8
  %7 = alloca %"class.std::__1::reverse_iterator", align 8
  %8 = alloca %"class.std::__1::reverse_iterator", align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %9 = load ptr, ptr %3, align 8
  call void @_ZNKSt3__16vectorIiNS_9allocatorIiEEE17__annotate_deleteB8ue170006Ev(ptr noundef %9) #12
  %10 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__16vectorIiNS_9allocatorIiEEE7__allocB8ue170006Ev(ptr noundef %9) #12
  %11 = getelementptr inbounds %"class.std::__1::vector", ptr %9, i32 0, i32 1
  %12 = load ptr, ptr %11, align 8
  %13 = call ptr @_ZNSt3__116reverse_iteratorIPiEC1B8ue170006ES1_(ptr noundef %6, ptr noundef %12)
  %14 = getelementptr inbounds %"class.std::__1::vector", ptr %9, i32 0, i32 0
  %15 = load ptr, ptr %14, align 8
  %16 = call ptr @_ZNSt3__116reverse_iteratorIPiEC1B8ue170006ES1_(ptr noundef %7, ptr noundef %15)
  %17 = load ptr, ptr %4, align 8
  %18 = getelementptr inbounds %"struct.std::__1::__split_buffer", ptr %17, i32 0, i32 1
  %19 = load ptr, ptr %18, align 8
  %20 = call ptr @_ZNSt3__116reverse_iteratorIPiEC1B8ue170006ES1_(ptr noundef %8, ptr noundef %19)
  %21 = load [2 x i64], ptr %6, align 8
  %22 = load [2 x i64], ptr %7, align 8
  %23 = load [2 x i64], ptr %8, align 8
  %24 = call [2 x i64] @_ZNSt3__142__uninitialized_allocator_move_if_noexceptB8ue170006INS_9allocatorIiEENS_16reverse_iteratorIPiEES5_ivEET1_RT_T0_S9_S6_(ptr noundef nonnull align 1 dereferenceable(1) %10, [2 x i64] %21, [2 x i64] %22, [2 x i64] %23)
  store [2 x i64] %24, ptr %5, align 8
  %25 = call ptr @_ZNKSt3__116reverse_iteratorIPiE4baseB8ue170006Ev(ptr noundef %5)
  %26 = load ptr, ptr %4, align 8
  %27 = getelementptr inbounds %"struct.std::__1::__split_buffer", ptr %26, i32 0, i32 1
  store ptr %25, ptr %27, align 8
  %28 = getelementptr inbounds %"class.std::__1::vector", ptr %9, i32 0, i32 0
  %29 = load ptr, ptr %4, align 8
  %30 = getelementptr inbounds %"struct.std::__1::__split_buffer", ptr %29, i32 0, i32 1
  call void @_ZNSt3__14swapB8ue170006IPiEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS3_EE5valueEvE4typeERS3_S6_(ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef nonnull align 8 dereferenceable(8) %30) #12
  %31 = getelementptr inbounds %"class.std::__1::vector", ptr %9, i32 0, i32 1
  %32 = load ptr, ptr %4, align 8
  %33 = getelementptr inbounds %"struct.std::__1::__split_buffer", ptr %32, i32 0, i32 2
  call void @_ZNSt3__14swapB8ue170006IPiEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS3_EE5valueEvE4typeERS3_S6_(ptr noundef nonnull align 8 dereferenceable(8) %31, ptr noundef nonnull align 8 dereferenceable(8) %33) #12
  %34 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__16vectorIiNS_9allocatorIiEEE9__end_capB8ue170006Ev(ptr noundef %9) #12
  %35 = load ptr, ptr %4, align 8
  %36 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__114__split_bufferIiRNS_9allocatorIiEEE9__end_capB8ue170006Ev(ptr noundef %35) #12
  call void @_ZNSt3__14swapB8ue170006IPiEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS3_EE5valueEvE4typeERS3_S6_(ptr noundef nonnull align 8 dereferenceable(8) %34, ptr noundef nonnull align 8 dereferenceable(8) %36) #12
  %37 = load ptr, ptr %4, align 8
  %38 = getelementptr inbounds %"struct.std::__1::__split_buffer", ptr %37, i32 0, i32 1
  %39 = load ptr, ptr %38, align 8
  %40 = load ptr, ptr %4, align 8
  %41 = getelementptr inbounds %"struct.std::__1::__split_buffer", ptr %40, i32 0, i32 0
  store ptr %39, ptr %41, align 8
  %42 = call i64 @_ZNKSt3__16vectorIiNS_9allocatorIiEEE4sizeB8ue170006Ev(ptr noundef %9) #12
  call void @_ZNKSt3__16vectorIiNS_9allocatorIiEEE14__annotate_newB8ue170006Em(ptr noundef %9, i64 noundef %42) #12
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden ptr @_ZNSt3__114__split_bufferIiRNS_9allocatorIiEEED1Ev(ptr noundef returned %0) unnamed_addr #0 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = call ptr @_ZNSt3__114__split_bufferIiRNS_9allocatorIiEEED2Ev(ptr noundef %3) #12
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden i64 @_ZNKSt3__16vectorIiNS_9allocatorIiEEE8max_sizeEv(ptr noundef %0) #5 align 2 personality ptr @__gxx_personality_v0 {
  %2 = alloca ptr, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store ptr %0, ptr %2, align 8
  %5 = load ptr, ptr %2, align 8
  %6 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt3__16vectorIiNS_9allocatorIiEEE7__allocB8ue170006Ev(ptr noundef %5) #12
  %7 = call i64 @_ZNSt3__116allocator_traitsINS_9allocatorIiEEE8max_sizeB8ue170006IS2_vEEmRKS2_(ptr noundef nonnull align 1 dereferenceable(1) %6) #12
  store i64 %7, ptr %3, align 8
  %8 = call i64 @_ZNSt3__114numeric_limitsIlE3maxB8ue170006Ev() #12
  store i64 %8, ptr %4, align 8
  %9 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__13minB8ue170006ImEERKT_S3_S3_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %10 unwind label %12

10:                                               ; preds = %1
  %11 = load i64, ptr %9, align 8
  ret i64 %11

12:                                               ; preds = %1
  %13 = landingpad { ptr, i32 }
          catch ptr null
  %14 = extractvalue { ptr, i32 } %13, 0
  call void @__clang_call_terminate(ptr %14) #14
  unreachable
}

; Function Attrs: mustprogress noinline noreturn optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNKSt3__16vectorIiNS_9allocatorIiEEE20__throw_length_errorB8ue170006Ev(ptr noundef %0) #8 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  call void @_ZNSt3__120__throw_length_errorB8ue170006EPKc(ptr noundef @.str.2) #13
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden i64 @_ZNKSt3__16vectorIiNS_9allocatorIiEEE8capacityB8ue170006Ev(ptr noundef %0) #5 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt3__16vectorIiNS_9allocatorIiEEE9__end_capB8ue170006Ev(ptr noundef %3) #12
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %"class.std::__1::vector", ptr %3, i32 0, i32 0
  %7 = load ptr, ptr %6, align 8
  %8 = ptrtoint ptr %5 to i64
  %9 = ptrtoint ptr %7 to i64
  %10 = sub i64 %8, %9
  %11 = sdiv exact i64 %10, 4
  ret i64 %11
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__13maxB8ue170006ImEERKT_S3_S3_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #1 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca %"struct.std::__1::__less", align 1
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %6 = load ptr, ptr %3, align 8
  %7 = load ptr, ptr %4, align 8
  %8 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__13maxB8ue170006ImNS_6__lessIvvEEEERKT_S5_S5_T0_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %7)
  ret ptr %8
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__13minB8ue170006ImEERKT_S3_S3_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #1 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca %"struct.std::__1::__less", align 1
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %6 = load ptr, ptr %3, align 8
  %7 = load ptr, ptr %4, align 8
  %8 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__13minB8ue170006ImNS_6__lessIvvEEEERKT_S5_S5_T0_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %7)
  ret ptr %8
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr i64 @_ZNSt3__116allocator_traitsINS_9allocatorIiEEE8max_sizeB8ue170006IS2_vEEmRKS2_(ptr noundef nonnull align 1 dereferenceable(1) %0) #5 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = call i64 @_ZNKSt3__19allocatorIiE8max_sizeB8ue170006Ev(ptr noundef %3) #12
  ret i64 %4
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt3__16vectorIiNS_9allocatorIiEEE7__allocB8ue170006Ev(ptr noundef %0) #5 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.std::__1::vector", ptr %3, i32 0, i32 2
  %5 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt3__117__compressed_pairIPiNS_9allocatorIiEEE6secondB8ue170006Ev(ptr noundef %4) #12
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden i64 @_ZNSt3__114numeric_limitsIlE3maxB8ue170006Ev() #5 align 2 {
  %1 = call i64 @_ZNSt3__123__libcpp_numeric_limitsIlLb1EE3maxB8ue170006Ev() #12
  ret i64 %1
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__13minB8ue170006ImNS_6__lessIvvEEEERKT_S5_S5_T0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #1 {
  %3 = alloca %"struct.std::__1::__less", align 1
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  %6 = load ptr, ptr %5, align 8
  %7 = load ptr, ptr %4, align 8
  %8 = call zeroext i1 @_ZNKSt3__16__lessIvvEclB8ue170006ImmEEbRKT_RKT0_(ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %7)
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = load ptr, ptr %5, align 8
  br label %13

11:                                               ; preds = %2
  %12 = load ptr, ptr %4, align 8
  br label %13

13:                                               ; preds = %11, %9
  %14 = phi ptr [ %10, %9 ], [ %12, %11 ]
  ret ptr %14
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden zeroext i1 @_ZNKSt3__16__lessIvvEclB8ue170006ImmEEbRKT_RKT0_(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #5 align 2 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  %7 = load ptr, ptr %4, align 8
  %8 = load ptr, ptr %5, align 8
  %9 = load i64, ptr %8, align 8
  %10 = load ptr, ptr %6, align 8
  %11 = load i64, ptr %10, align 8
  %12 = icmp ult i64 %9, %11
  ret i1 %12
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden i64 @_ZNKSt3__19allocatorIiE8max_sizeB8ue170006Ev(ptr noundef %0) #5 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  ret i64 4611686018427387903
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt3__117__compressed_pairIPiNS_9allocatorIiEEE6secondB8ue170006Ev(ptr noundef %0) #5 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt3__122__compressed_pair_elemINS_9allocatorIiEELi1ELb1EE5__getB8ue170006Ev(ptr noundef %3) #12
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt3__122__compressed_pair_elemINS_9allocatorIiEELi1ELb1EE5__getB8ue170006Ev(ptr noundef %0) #5 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden i64 @_ZNSt3__123__libcpp_numeric_limitsIlLb1EE3maxB8ue170006Ev() #5 align 2 {
  ret i64 9223372036854775807
}

; Function Attrs: mustprogress noinline noreturn optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNSt3__120__throw_length_errorB8ue170006EPKc(ptr noundef %0) #8 personality ptr @__gxx_personality_v0 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
  %5 = call ptr @__cxa_allocate_exception(i64 16) #12
  %6 = load ptr, ptr %2, align 8
  %7 = invoke ptr @_ZNSt12length_errorC1B8ue170006EPKc(ptr noundef %5, ptr noundef %6)
          to label %8 unwind label %9

8:                                                ; preds = %1
  call void @__cxa_throw(ptr %5, ptr @_ZTISt12length_error, ptr @_ZNSt12length_errorD1Ev) #13
  unreachable

9:                                                ; preds = %1
  %10 = landingpad { ptr, i32 }
          cleanup
  %11 = extractvalue { ptr, i32 } %10, 0
  store ptr %11, ptr %3, align 8
  %12 = extractvalue { ptr, i32 } %10, 1
  store i32 %12, ptr %4, align 4
  call void @__cxa_free_exception(ptr %5) #12
  br label %13

13:                                               ; preds = %9
  %14 = load ptr, ptr %3, align 8
  %15 = load i32, ptr %4, align 4
  %16 = insertvalue { ptr, i32 } undef, ptr %14, 0
  %17 = insertvalue { ptr, i32 } %16, i32 %15, 1
  resume { ptr, i32 } %17
}

declare ptr @__cxa_allocate_exception(i64)

; Function Attrs: noinline optnone ssp uwtable(sync)
define linkonce_odr hidden ptr @_ZNSt12length_errorC1B8ue170006EPKc(ptr noundef returned %0, ptr noundef %1) unnamed_addr #3 align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = load ptr, ptr %4, align 8
  %7 = call ptr @_ZNSt12length_errorC2B8ue170006EPKc(ptr noundef %5, ptr noundef %6)
  ret ptr %5
}

declare void @__cxa_free_exception(ptr)

; Function Attrs: nounwind
declare ptr @_ZNSt12length_errorD1Ev(ptr noundef returned) unnamed_addr #4

declare void @__cxa_throw(ptr, ptr, ptr)

; Function Attrs: noinline optnone ssp uwtable(sync)
define linkonce_odr hidden ptr @_ZNSt12length_errorC2B8ue170006EPKc(ptr noundef returned %0, ptr noundef %1) unnamed_addr #3 align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = load ptr, ptr %4, align 8
  %7 = call ptr @_ZNSt11logic_errorC2EPKc(ptr noundef %5, ptr noundef %6)
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVSt12length_error, i32 0, inrange i32 0, i32 2), ptr %5, align 8
  ret ptr %5
}

declare ptr @_ZNSt11logic_errorC2EPKc(ptr noundef returned, ptr noundef) unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt3__16vectorIiNS_9allocatorIiEEE9__end_capB8ue170006Ev(ptr noundef %0) #5 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.std::__1::vector", ptr %3, i32 0, i32 2
  %5 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt3__117__compressed_pairIPiNS_9allocatorIiEEE5firstB8ue170006Ev(ptr noundef %4) #12
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt3__117__compressed_pairIPiNS_9allocatorIiEEE5firstB8ue170006Ev(ptr noundef %0) #5 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt3__122__compressed_pair_elemIPiLi0ELb0EE5__getB8ue170006Ev(ptr noundef %3) #12
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt3__122__compressed_pair_elemIPiLi0ELb0EE5__getB8ue170006Ev(ptr noundef %0) #5 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"struct.std::__1::__compressed_pair_elem", ptr %3, i32 0, i32 0
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__13maxB8ue170006ImNS_6__lessIvvEEEERKT_S5_S5_T0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #5 {
  %3 = alloca %"struct.std::__1::__less", align 1
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  %6 = load ptr, ptr %4, align 8
  %7 = load ptr, ptr %5, align 8
  %8 = call zeroext i1 @_ZNKSt3__16__lessIvvEclB8ue170006ImmEEbRKT_RKT0_(ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %7)
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = load ptr, ptr %5, align 8
  br label %13

11:                                               ; preds = %2
  %12 = load ptr, ptr %4, align 8
  br label %13

13:                                               ; preds = %11, %9
  %14 = phi ptr [ %10, %9 ], [ %12, %11 ]
  ret ptr %14
}

; Function Attrs: noinline optnone ssp uwtable(sync)
define linkonce_odr hidden ptr @_ZNSt3__114__split_bufferIiRNS_9allocatorIiEEEC2EmmS3_(ptr noundef returned %0, i64 noundef %1, i64 noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) unnamed_addr #3 align 2 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca %"struct.std::__1::__allocation_result", align 8
  store ptr %0, ptr %6, align 8
  store i64 %1, ptr %7, align 8
  store i64 %2, ptr %8, align 8
  store ptr %3, ptr %9, align 8
  %12 = load ptr, ptr %6, align 8
  store ptr %12, ptr %5, align 8
  %13 = getelementptr inbounds %"struct.std::__1::__split_buffer", ptr %12, i32 0, i32 3
  store ptr null, ptr %10, align 8
  %14 = load ptr, ptr %9, align 8
  %15 = call ptr @_ZNSt3__117__compressed_pairIPiRNS_9allocatorIiEEEC1B8ue170006IDnS4_EEOT_OT0_(ptr noundef %13, ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 1 dereferenceable(1) %14)
  %16 = load i64, ptr %7, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %4
  %19 = getelementptr inbounds %"struct.std::__1::__split_buffer", ptr %12, i32 0, i32 0
  store ptr null, ptr %19, align 8
  br label %29

20:                                               ; preds = %4
  %21 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__114__split_bufferIiRNS_9allocatorIiEEE7__allocB8ue170006Ev(ptr noundef %12) #12
  %22 = load i64, ptr %7, align 8
  %23 = call [2 x i64] @_ZNSt3__119__allocate_at_leastB8ue170006INS_9allocatorIiEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS5_m(ptr noundef nonnull align 1 dereferenceable(1) %21, i64 noundef %22)
  store [2 x i64] %23, ptr %11, align 8
  %24 = getelementptr inbounds %"struct.std::__1::__allocation_result", ptr %11, i32 0, i32 0
  %25 = load ptr, ptr %24, align 8
  %26 = getelementptr inbounds %"struct.std::__1::__split_buffer", ptr %12, i32 0, i32 0
  store ptr %25, ptr %26, align 8
  %27 = getelementptr inbounds %"struct.std::__1::__allocation_result", ptr %11, i32 0, i32 1
  %28 = load i64, ptr %27, align 8
  store i64 %28, ptr %7, align 8
  br label %29

29:                                               ; preds = %20, %18
  %30 = getelementptr inbounds %"struct.std::__1::__split_buffer", ptr %12, i32 0, i32 0
  %31 = load ptr, ptr %30, align 8
  %32 = load i64, ptr %8, align 8
  %33 = getelementptr inbounds i32, ptr %31, i64 %32
  %34 = getelementptr inbounds %"struct.std::__1::__split_buffer", ptr %12, i32 0, i32 2
  store ptr %33, ptr %34, align 8
  %35 = getelementptr inbounds %"struct.std::__1::__split_buffer", ptr %12, i32 0, i32 1
  store ptr %33, ptr %35, align 8
  %36 = getelementptr inbounds %"struct.std::__1::__split_buffer", ptr %12, i32 0, i32 0
  %37 = load ptr, ptr %36, align 8
  %38 = load i64, ptr %7, align 8
  %39 = getelementptr inbounds i32, ptr %37, i64 %38
  %40 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__114__split_bufferIiRNS_9allocatorIiEEE9__end_capB8ue170006Ev(ptr noundef %12) #12
  store ptr %39, ptr %40, align 8
  %41 = load ptr, ptr %5, align 8
  ret ptr %41
}

; Function Attrs: noinline optnone ssp uwtable(sync)
define linkonce_odr ptr @_ZNSt3__117__compressed_pairIPiRNS_9allocatorIiEEEC1B8ue170006IDnS4_EEOT_OT0_(ptr noundef returned %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #3 align 2 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  %7 = load ptr, ptr %4, align 8
  %8 = load ptr, ptr %5, align 8
  %9 = load ptr, ptr %6, align 8
  %10 = call ptr @_ZNSt3__117__compressed_pairIPiRNS_9allocatorIiEEEC2B8ue170006IDnS4_EEOT_OT0_(ptr noundef %7, ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 1 dereferenceable(1) %9)
  ret ptr %7
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden [2 x i64] @_ZNSt3__119__allocate_at_leastB8ue170006INS_9allocatorIiEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS5_m(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1) #1 {
  %3 = alloca %"struct.std::__1::__allocation_result", align 8
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
  store i64 %1, ptr %5, align 8
  %6 = getelementptr inbounds %"struct.std::__1::__allocation_result", ptr %3, i32 0, i32 0
  %7 = load ptr, ptr %4, align 8
  %8 = load i64, ptr %5, align 8
  %9 = call ptr @_ZNSt3__19allocatorIiE8allocateB8ue170006Em(ptr noundef %7, i64 noundef %8)
  store ptr %9, ptr %6, align 8
  %10 = getelementptr inbounds %"struct.std::__1::__allocation_result", ptr %3, i32 0, i32 1
  %11 = load i64, ptr %5, align 8
  store i64 %11, ptr %10, align 8
  %12 = load [2 x i64], ptr %3, align 8
  ret [2 x i64] %12
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__114__split_bufferIiRNS_9allocatorIiEEE7__allocB8ue170006Ev(ptr noundef %0) #5 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"struct.std::__1::__split_buffer", ptr %3, i32 0, i32 3
  %5 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__117__compressed_pairIPiRNS_9allocatorIiEEE6secondB8ue170006Ev(ptr noundef %4) #12
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__114__split_bufferIiRNS_9allocatorIiEEE9__end_capB8ue170006Ev(ptr noundef %0) #5 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"struct.std::__1::__split_buffer", ptr %3, i32 0, i32 3
  %5 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__117__compressed_pairIPiRNS_9allocatorIiEEE5firstB8ue170006Ev(ptr noundef %4) #12
  ret ptr %5
}

; Function Attrs: noinline optnone ssp uwtable(sync)
define linkonce_odr ptr @_ZNSt3__117__compressed_pairIPiRNS_9allocatorIiEEEC2B8ue170006IDnS4_EEOT_OT0_(ptr noundef returned %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #3 align 2 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  %7 = load ptr, ptr %4, align 8
  %8 = load ptr, ptr %5, align 8
  %9 = call ptr @_ZNSt3__122__compressed_pair_elemIPiLi0ELb0EEC2B8ue170006IDnvEEOT_(ptr noundef %7, ptr noundef nonnull align 8 dereferenceable(8) %8)
  %10 = getelementptr inbounds i8, ptr %7, i64 8
  %11 = load ptr, ptr %6, align 8
  %12 = call ptr @_ZNSt3__122__compressed_pair_elemIRNS_9allocatorIiEELi1ELb0EEC2B8ue170006IS3_vEEOT_(ptr noundef %10, ptr noundef nonnull align 1 dereferenceable(1) %11)
  ret ptr %7
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr ptr @_ZNSt3__122__compressed_pair_elemIRNS_9allocatorIiEELi1ELb0EEC2B8ue170006IS3_vEEOT_(ptr noundef returned %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #0 align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = getelementptr inbounds %"struct.std::__1::__compressed_pair_elem.35", ptr %5, i32 0, i32 0
  %7 = load ptr, ptr %4, align 8
  store ptr %7, ptr %6, align 8
  ret ptr %5
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden ptr @_ZNSt3__19allocatorIiE8allocateB8ue170006Em(ptr noundef %0, i64 noundef %1) #1 align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  store ptr %0, ptr %3, align 8
  store i64 %1, ptr %4, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = load i64, ptr %4, align 8
  %7 = call i64 @_ZNSt3__116allocator_traitsINS_9allocatorIiEEE8max_sizeB8ue170006IS2_vEEmRKS2_(ptr noundef nonnull align 1 dereferenceable(1) %5) #12
  %8 = icmp ugt i64 %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  call void @_ZSt28__throw_bad_array_new_lengthB8ue170006v() #13
  unreachable

10:                                               ; preds = %2
  %11 = load i64, ptr %4, align 8
  %12 = mul i64 %11, 4
  %13 = call ptr @_ZNSt3__117__libcpp_allocateB8ue170006Emm(i64 noundef %12, i64 noundef 4)
  ret ptr %13
}

; Function Attrs: mustprogress noinline noreturn optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZSt28__throw_bad_array_new_lengthB8ue170006v() #8 {
  %1 = call ptr @__cxa_allocate_exception(i64 8) #12
  %2 = call ptr @_ZNSt20bad_array_new_lengthC1Ev(ptr noundef %1) #12
  call void @__cxa_throw(ptr %1, ptr @_ZTISt20bad_array_new_length, ptr @_ZNSt20bad_array_new_lengthD1Ev) #13
  unreachable
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden ptr @_ZNSt3__117__libcpp_allocateB8ue170006Emm(i64 noundef %0, i64 noundef %1) #1 {
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i64 %0, ptr %4, align 8
  store i64 %1, ptr %5, align 8
  %7 = load i64, ptr %5, align 8
  %8 = call zeroext i1 @_ZNSt3__124__is_overaligned_for_newB8ue170006Em(i64 noundef %7) #12
  br i1 %8, label %9, label %14

9:                                                ; preds = %2
  %10 = load i64, ptr %5, align 8
  store i64 %10, ptr %6, align 8
  %11 = load i64, ptr %4, align 8
  %12 = load i64, ptr %6, align 8
  %13 = call ptr @_ZNSt3__121__libcpp_operator_newB8ue170006IJmSt11align_val_tEEEPvDpT_(i64 noundef %11, i64 noundef %12)
  store ptr %13, ptr %3, align 8
  br label %17

14:                                               ; preds = %2
  %15 = load i64, ptr %4, align 8
  %16 = call ptr @_ZNSt3__121__libcpp_operator_newB8ue170006IJmEEEPvDpT_(i64 noundef %15)
  store ptr %16, ptr %3, align 8
  br label %17

17:                                               ; preds = %14, %9
  %18 = load ptr, ptr %3, align 8
  ret ptr %18
}

; Function Attrs: nounwind
declare ptr @_ZNSt20bad_array_new_lengthC1Ev(ptr noundef returned) unnamed_addr #4

; Function Attrs: nounwind
declare ptr @_ZNSt20bad_array_new_lengthD1Ev(ptr noundef returned) unnamed_addr #4

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden zeroext i1 @_ZNSt3__124__is_overaligned_for_newB8ue170006Em(i64 noundef %0) #5 {
  %2 = alloca i64, align 8
  store i64 %0, ptr %2, align 8
  %3 = load i64, ptr %2, align 8
  %4 = icmp ugt i64 %3, 16
  ret i1 %4
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden ptr @_ZNSt3__121__libcpp_operator_newB8ue170006IJmSt11align_val_tEEEPvDpT_(i64 noundef %0, i64 noundef %1) #1 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, ptr %3, align 8
  store i64 %1, ptr %4, align 8
  %5 = load i64, ptr %3, align 8
  %6 = load i64, ptr %4, align 8
  %7 = call noalias nonnull ptr @_ZnwmSt11align_val_t(i64 noundef %5, i64 noundef %6) #15
  call void @llvm.assume(i1 true) [ "align"(ptr %7, i64 %6) ]
  ret ptr %7
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden ptr @_ZNSt3__121__libcpp_operator_newB8ue170006IJmEEEPvDpT_(i64 noundef %0) #1 {
  %2 = alloca i64, align 8
  store i64 %0, ptr %2, align 8
  %3 = load i64, ptr %2, align 8
  %4 = call noalias nonnull ptr @_Znwm(i64 noundef %3) #15
  ret ptr %4
}

; Function Attrs: nobuiltin allocsize(0)
declare nonnull ptr @_ZnwmSt11align_val_t(i64 noundef, i64 noundef) #9

; Function Attrs: inaccessiblememonly nocallback nofree nosync nounwind willreturn
declare void @llvm.assume(i1 noundef) #10

; Function Attrs: nobuiltin allocsize(0)
declare nonnull ptr @_Znwm(i64 noundef) #9

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__117__compressed_pairIPiRNS_9allocatorIiEEE6secondB8ue170006Ev(ptr noundef %0) #5 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds i8, ptr %3, i64 8
  %5 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__122__compressed_pair_elemIRNS_9allocatorIiEELi1ELb0EE5__getB8ue170006Ev(ptr noundef %4) #12
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__122__compressed_pair_elemIRNS_9allocatorIiEELi1ELb0EE5__getB8ue170006Ev(ptr noundef %0) #5 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"struct.std::__1::__compressed_pair_elem.35", ptr %3, i32 0, i32 0
  %5 = load ptr, ptr %4, align 8
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__117__compressed_pairIPiRNS_9allocatorIiEEE5firstB8ue170006Ev(ptr noundef %0) #5 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__122__compressed_pair_elemIPiLi0ELb0EE5__getB8ue170006Ev(ptr noundef %3) #12
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNKSt3__16vectorIiNS_9allocatorIiEEE17__annotate_deleteB8ue170006Ev(ptr noundef %0) #5 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = call ptr @_ZNKSt3__16vectorIiNS_9allocatorIiEEE4dataB8ue170006Ev(ptr noundef %3) #12
  %5 = call ptr @_ZNKSt3__16vectorIiNS_9allocatorIiEEE4dataB8ue170006Ev(ptr noundef %3) #12
  %6 = call i64 @_ZNKSt3__16vectorIiNS_9allocatorIiEEE8capacityB8ue170006Ev(ptr noundef %3) #12
  %7 = getelementptr inbounds i32, ptr %5, i64 %6
  %8 = call ptr @_ZNKSt3__16vectorIiNS_9allocatorIiEEE4dataB8ue170006Ev(ptr noundef %3) #12
  %9 = call i64 @_ZNKSt3__16vectorIiNS_9allocatorIiEEE4sizeB8ue170006Ev(ptr noundef %3) #12
  %10 = getelementptr inbounds i32, ptr %8, i64 %9
  %11 = call ptr @_ZNKSt3__16vectorIiNS_9allocatorIiEEE4dataB8ue170006Ev(ptr noundef %3) #12
  %12 = call i64 @_ZNKSt3__16vectorIiNS_9allocatorIiEEE8capacityB8ue170006Ev(ptr noundef %3) #12
  %13 = getelementptr inbounds i32, ptr %11, i64 %12
  call void @_ZNKSt3__16vectorIiNS_9allocatorIiEEE31__annotate_contiguous_containerB8ue170006EPKvS5_S5_S5_(ptr noundef %3, ptr noundef %4, ptr noundef %7, ptr noundef %10, ptr noundef %13) #12
  ret void
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden [2 x i64] @_ZNSt3__142__uninitialized_allocator_move_if_noexceptB8ue170006INS_9allocatorIiEENS_16reverse_iteratorIPiEES5_ivEET1_RT_T0_S9_S6_(ptr noundef nonnull align 1 dereferenceable(1) %0, [2 x i64] %1, [2 x i64] %2, [2 x i64] %3) #1 {
  %5 = alloca %"class.std::__1::reverse_iterator", align 8
  %6 = alloca %"class.std::__1::reverse_iterator", align 8
  %7 = alloca %"class.std::__1::reverse_iterator", align 8
  %8 = alloca %"class.std::__1::reverse_iterator", align 8
  %9 = alloca ptr, align 8
  %10 = alloca %"class.std::__1::reverse_iterator", align 8
  %11 = alloca %"class.std::__1::reverse_iterator", align 8
  %12 = alloca %"class.std::__1::reverse_iterator", align 8
  store [2 x i64] %1, ptr %6, align 8
  store [2 x i64] %2, ptr %7, align 8
  store [2 x i64] %3, ptr %8, align 8
  store ptr %0, ptr %9, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %10, ptr align 8 %6, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %11, ptr align 8 %7, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %12, ptr align 8 %8, i64 16, i1 false)
  %13 = load [2 x i64], ptr %10, align 8
  %14 = load [2 x i64], ptr %11, align 8
  %15 = load [2 x i64], ptr %12, align 8
  %16 = call [2 x i64] @_ZNSt3__14moveB8ue170006INS_16reverse_iteratorIPiEES3_EET0_T_S5_S4_([2 x i64] %13, [2 x i64] %14, [2 x i64] %15)
  store [2 x i64] %16, ptr %5, align 8
  %17 = load [2 x i64], ptr %5, align 8
  ret [2 x i64] %17
}

; Function Attrs: noinline optnone ssp uwtable(sync)
define linkonce_odr hidden ptr @_ZNSt3__116reverse_iteratorIPiEC1B8ue170006ES1_(ptr noundef returned %0, ptr noundef %1) unnamed_addr #3 align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = load ptr, ptr %4, align 8
  %7 = call ptr @_ZNSt3__116reverse_iteratorIPiEC2B8ue170006ES1_(ptr noundef %5, ptr noundef %6)
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden ptr @_ZNKSt3__116reverse_iteratorIPiE4baseB8ue170006Ev(ptr noundef %0) #5 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.std::__1::reverse_iterator", ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNSt3__14swapB8ue170006IPiEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS3_EE5valueEvE4typeERS3_S6_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #5 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %6 = load ptr, ptr %3, align 8
  %7 = load ptr, ptr %6, align 8
  store ptr %7, ptr %5, align 8
  %8 = load ptr, ptr %4, align 8
  %9 = load ptr, ptr %8, align 8
  %10 = load ptr, ptr %3, align 8
  store ptr %9, ptr %10, align 8
  %11 = load ptr, ptr %5, align 8
  %12 = load ptr, ptr %4, align 8
  store ptr %11, ptr %12, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNKSt3__16vectorIiNS_9allocatorIiEEE14__annotate_newB8ue170006Em(ptr noundef %0, i64 noundef %1) #5 align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  store ptr %0, ptr %3, align 8
  store i64 %1, ptr %4, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = call ptr @_ZNKSt3__16vectorIiNS_9allocatorIiEEE4dataB8ue170006Ev(ptr noundef %5) #12
  %7 = call ptr @_ZNKSt3__16vectorIiNS_9allocatorIiEEE4dataB8ue170006Ev(ptr noundef %5) #12
  %8 = call i64 @_ZNKSt3__16vectorIiNS_9allocatorIiEEE8capacityB8ue170006Ev(ptr noundef %5) #12
  %9 = getelementptr inbounds i32, ptr %7, i64 %8
  %10 = call ptr @_ZNKSt3__16vectorIiNS_9allocatorIiEEE4dataB8ue170006Ev(ptr noundef %5) #12
  %11 = call i64 @_ZNKSt3__16vectorIiNS_9allocatorIiEEE8capacityB8ue170006Ev(ptr noundef %5) #12
  %12 = getelementptr inbounds i32, ptr %10, i64 %11
  %13 = call ptr @_ZNKSt3__16vectorIiNS_9allocatorIiEEE4dataB8ue170006Ev(ptr noundef %5) #12
  %14 = load i64, ptr %4, align 8
  %15 = getelementptr inbounds i32, ptr %13, i64 %14
  call void @_ZNKSt3__16vectorIiNS_9allocatorIiEEE31__annotate_contiguous_containerB8ue170006EPKvS5_S5_S5_(ptr noundef %5, ptr noundef %6, ptr noundef %9, ptr noundef %12, ptr noundef %15) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNKSt3__16vectorIiNS_9allocatorIiEEE31__annotate_contiguous_containerB8ue170006EPKvS5_S5_S5_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #5 align 2 {
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  store ptr %0, ptr %6, align 8
  store ptr %1, ptr %7, align 8
  store ptr %2, ptr %8, align 8
  store ptr %3, ptr %9, align 8
  store ptr %4, ptr %10, align 8
  %11 = load ptr, ptr %6, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden ptr @_ZNKSt3__16vectorIiNS_9allocatorIiEEE4dataB8ue170006Ev(ptr noundef %0) #5 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.std::__1::vector", ptr %3, i32 0, i32 0
  %5 = load ptr, ptr %4, align 8
  %6 = call ptr @_ZNSt3__112__to_addressB8ue170006IiEEPT_S2_(ptr noundef %5) #12
  ret ptr %6
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden [2 x i64] @_ZNSt3__14moveB8ue170006INS_16reverse_iteratorIPiEES3_EET0_T_S5_S4_([2 x i64] %0, [2 x i64] %1, [2 x i64] %2) #1 {
  %4 = alloca %"class.std::__1::reverse_iterator", align 8
  %5 = alloca %"class.std::__1::reverse_iterator", align 8
  %6 = alloca %"class.std::__1::reverse_iterator", align 8
  %7 = alloca %"class.std::__1::reverse_iterator", align 8
  %8 = alloca %"struct.std::__1::pair", align 8
  %9 = alloca %"class.std::__1::reverse_iterator", align 8
  %10 = alloca %"class.std::__1::reverse_iterator", align 8
  %11 = alloca %"class.std::__1::reverse_iterator", align 8
  store [2 x i64] %0, ptr %5, align 8
  store [2 x i64] %1, ptr %6, align 8
  store [2 x i64] %2, ptr %7, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %9, ptr align 8 %5, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %10, ptr align 8 %6, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %11, ptr align 8 %7, i64 16, i1 false)
  %12 = load [2 x i64], ptr %9, align 8
  %13 = load [2 x i64], ptr %10, align 8
  %14 = load [2 x i64], ptr %11, align 8
  call void @_ZNSt3__16__moveB8ue170006INS_17_ClassicAlgPolicyENS_16reverse_iteratorIPiEES4_S4_EENS_4pairIT0_T2_EES6_T1_S7_(ptr sret(%"struct.std::__1::pair") align 8 %8, [2 x i64] %12, [2 x i64] %13, [2 x i64] %14)
  %15 = getelementptr inbounds %"struct.std::__1::pair", ptr %8, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %4, ptr align 8 %15, i64 16, i1 false)
  %16 = load [2 x i64], ptr %4, align 8
  ret [2 x i64] %16
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNSt3__16__moveB8ue170006INS_17_ClassicAlgPolicyENS_16reverse_iteratorIPiEES4_S4_EENS_4pairIT0_T2_EES6_T1_S7_(ptr noalias sret(%"struct.std::__1::pair") align 8 %0, [2 x i64] %1, [2 x i64] %2, [2 x i64] %3) #1 {
  %5 = alloca %"class.std::__1::reverse_iterator", align 8
  %6 = alloca %"class.std::__1::reverse_iterator", align 8
  %7 = alloca %"class.std::__1::reverse_iterator", align 8
  %8 = alloca %"class.std::__1::reverse_iterator", align 8
  %9 = alloca %"class.std::__1::reverse_iterator", align 8
  %10 = alloca %"class.std::__1::reverse_iterator", align 8
  store [2 x i64] %1, ptr %5, align 8
  store [2 x i64] %2, ptr %6, align 8
  store [2 x i64] %3, ptr %7, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %8, ptr align 8 %5, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %9, ptr align 8 %6, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %10, ptr align 8 %7, i64 16, i1 false)
  %11 = load [2 x i64], ptr %8, align 8
  %12 = load [2 x i64], ptr %9, align 8
  %13 = load [2 x i64], ptr %10, align 8
  call void @_ZNSt3__123__dispatch_copy_or_moveB8ue170006INS_17_ClassicAlgPolicyENS_11__move_loopIS1_EENS_14__move_trivialENS_16reverse_iteratorIPiEES7_S7_EENS_4pairIT2_T4_EES9_T3_SA_(ptr sret(%"struct.std::__1::pair") align 8 %0, [2 x i64] %11, [2 x i64] %12, [2 x i64] %13)
  ret void
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNSt3__123__dispatch_copy_or_moveB8ue170006INS_17_ClassicAlgPolicyENS_11__move_loopIS1_EENS_14__move_trivialENS_16reverse_iteratorIPiEES7_S7_EENS_4pairIT2_T4_EES9_T3_SA_(ptr noalias sret(%"struct.std::__1::pair") align 8 %0, [2 x i64] %1, [2 x i64] %2, [2 x i64] %3) #1 {
  %5 = alloca %"class.std::__1::reverse_iterator", align 8
  %6 = alloca %"class.std::__1::reverse_iterator", align 8
  %7 = alloca %"class.std::__1::reverse_iterator", align 8
  %8 = alloca %"class.std::__1::reverse_iterator", align 8
  %9 = alloca %"class.std::__1::reverse_iterator", align 8
  %10 = alloca %"class.std::__1::reverse_iterator", align 8
  store [2 x i64] %1, ptr %5, align 8
  store [2 x i64] %2, ptr %6, align 8
  store [2 x i64] %3, ptr %7, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %8, ptr align 8 %5, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %9, ptr align 8 %6, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %10, ptr align 8 %7, i64 16, i1 false)
  %11 = load [2 x i64], ptr %8, align 8
  %12 = load [2 x i64], ptr %9, align 8
  %13 = load [2 x i64], ptr %10, align 8
  call void @_ZNSt3__121__unwrap_and_dispatchB8ue170006INS_10__overloadINS_11__move_loopINS_17_ClassicAlgPolicyEEENS_14__move_trivialEEENS_16reverse_iteratorIPiEES9_S9_Li0EEENS_4pairIT0_T2_EESB_T1_SC_(ptr sret(%"struct.std::__1::pair") align 8 %0, [2 x i64] %11, [2 x i64] %12, [2 x i64] %13)
  ret void
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNSt3__121__unwrap_and_dispatchB8ue170006INS_10__overloadINS_11__move_loopINS_17_ClassicAlgPolicyEEENS_14__move_trivialEEENS_16reverse_iteratorIPiEES9_S9_Li0EEENS_4pairIT0_T2_EESB_T1_SC_(ptr noalias sret(%"struct.std::__1::pair") align 8 %0, [2 x i64] %1, [2 x i64] %2, [2 x i64] %3) #1 {
  %5 = alloca %"class.std::__1::reverse_iterator", align 8
  %6 = alloca %"class.std::__1::reverse_iterator", align 8
  %7 = alloca %"class.std::__1::reverse_iterator", align 8
  %8 = alloca %"struct.std::__1::pair", align 8
  %9 = alloca %"class.std::__1::reverse_iterator", align 8
  %10 = alloca %"class.std::__1::reverse_iterator", align 8
  %11 = alloca %"struct.std::__1::pair", align 8
  %12 = alloca %"struct.std::__1::__overload", align 1
  %13 = alloca %"class.std::__1::reverse_iterator", align 8
  %14 = alloca %"class.std::__1::reverse_iterator", align 8
  %15 = alloca %"class.std::__1::reverse_iterator", align 8
  %16 = alloca %"class.std::__1::reverse_iterator", align 8
  %17 = alloca %"class.std::__1::reverse_iterator", align 8
  %18 = alloca %"class.std::__1::reverse_iterator", align 8
  %19 = alloca %"class.std::__1::reverse_iterator", align 8
  %20 = alloca %"class.std::__1::reverse_iterator", align 8
  %21 = alloca %"class.std::__1::reverse_iterator", align 8
  %22 = alloca %"class.std::__1::reverse_iterator", align 8
  store [2 x i64] %1, ptr %5, align 8
  store [2 x i64] %2, ptr %6, align 8
  store [2 x i64] %3, ptr %7, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %9, ptr align 8 %5, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %10, ptr align 8 %6, i64 16, i1 false)
  %23 = load [2 x i64], ptr %9, align 8
  %24 = load [2 x i64], ptr %10, align 8
  call void @_ZNSt3__114__unwrap_rangeB8ue170006INS_16reverse_iteratorIPiEES3_EENS_4pairIT0_S5_EET_S7_(ptr sret(%"struct.std::__1::pair") align 8 %8, [2 x i64] %23, [2 x i64] %24)
  %25 = getelementptr inbounds %"struct.std::__1::pair", ptr %8, i32 0, i32 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %13, ptr align 8 %25, i64 16, i1 false)
  %26 = getelementptr inbounds %"struct.std::__1::pair", ptr %8, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %14, ptr align 8 %26, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %16, ptr align 8 %7, i64 16, i1 false)
  %27 = load [2 x i64], ptr %16, align 8
  %28 = call [2 x i64] @_ZNSt3__113__unwrap_iterB8ue170006INS_16reverse_iteratorIPiEENS_18__unwrap_iter_implIS3_Lb0EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEES7_([2 x i64] %27) #12
  store [2 x i64] %28, ptr %15, align 8
  %29 = load [2 x i64], ptr %13, align 8
  %30 = load [2 x i64], ptr %14, align 8
  %31 = load [2 x i64], ptr %15, align 8
  call void @_ZNKSt3__111__move_loopINS_17_ClassicAlgPolicyEEclB8ue170006INS_16reverse_iteratorIPiEES6_S6_EENS_4pairIT_T1_EES8_T0_S9_(ptr sret(%"struct.std::__1::pair") align 8 %11, ptr noundef %12, [2 x i64] %29, [2 x i64] %30, [2 x i64] %31)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %18, ptr align 8 %5, i64 16, i1 false)
  %32 = getelementptr inbounds %"struct.std::__1::pair", ptr %11, i32 0, i32 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %19, ptr align 8 %32, i64 16, i1 false)
  %33 = load [2 x i64], ptr %18, align 8
  %34 = load [2 x i64], ptr %19, align 8
  %35 = call [2 x i64] @_ZNSt3__114__rewrap_rangeB8ue170006INS_16reverse_iteratorIPiEES3_EET_S4_T0_([2 x i64] %33, [2 x i64] %34)
  store [2 x i64] %35, ptr %17, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %21, ptr align 8 %7, i64 16, i1 false)
  %36 = getelementptr inbounds %"struct.std::__1::pair", ptr %11, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %22, ptr align 8 %36, i64 16, i1 false)
  %37 = load [2 x i64], ptr %21, align 8
  %38 = load [2 x i64], ptr %22, align 8
  %39 = call [2 x i64] @_ZNSt3__113__rewrap_iterB8ue170006INS_16reverse_iteratorIPiEES3_NS_18__unwrap_iter_implIS3_Lb0EEEEET_S6_T0_([2 x i64] %37, [2 x i64] %38) #12
  store [2 x i64] %39, ptr %20, align 8
  call void @_ZNSt3__19make_pairB8ue170006INS_16reverse_iteratorIPiEES3_EENS_4pairINS_18__unwrap_ref_decayIT_E4typeENS5_IT0_E4typeEEEOS6_OS9_(ptr sret(%"struct.std::__1::pair") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %17, ptr noundef nonnull align 8 dereferenceable(16) %20)
  ret void
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNSt3__114__unwrap_rangeB8ue170006INS_16reverse_iteratorIPiEES3_EENS_4pairIT0_S5_EET_S7_(ptr noalias sret(%"struct.std::__1::pair") align 8 %0, [2 x i64] %1, [2 x i64] %2) #1 {
  %4 = alloca %"class.std::__1::reverse_iterator", align 8
  %5 = alloca %"class.std::__1::reverse_iterator", align 8
  %6 = alloca %"class.std::__1::reverse_iterator", align 8
  %7 = alloca %"class.std::__1::reverse_iterator", align 8
  %8 = alloca %"class.std::__1::reverse_iterator", align 8
  %9 = alloca %"class.std::__1::reverse_iterator", align 8
  store [2 x i64] %1, ptr %4, align 8
  store [2 x i64] %2, ptr %5, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %7, ptr align 8 %4, i64 16, i1 false)
  %10 = load [2 x i64], ptr %7, align 8
  %11 = call [2 x i64] @_ZNSt3__113__unwrap_iterB8ue170006INS_16reverse_iteratorIPiEENS_18__unwrap_iter_implIS3_Lb0EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEES7_([2 x i64] %10) #12
  store [2 x i64] %11, ptr %6, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %9, ptr align 8 %5, i64 16, i1 false)
  %12 = load [2 x i64], ptr %9, align 8
  %13 = call [2 x i64] @_ZNSt3__113__unwrap_iterB8ue170006INS_16reverse_iteratorIPiEENS_18__unwrap_iter_implIS3_Lb0EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEES7_([2 x i64] %12) #12
  store [2 x i64] %13, ptr %8, align 8
  call void @_ZNSt3__19make_pairB8ue170006INS_16reverse_iteratorIPiEES3_EENS_4pairINS_18__unwrap_ref_decayIT_E4typeENS5_IT0_E4typeEEEOS6_OS9_(ptr sret(%"struct.std::__1::pair") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %8)
  ret void
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr void @_ZNKSt3__111__move_loopINS_17_ClassicAlgPolicyEEclB8ue170006INS_16reverse_iteratorIPiEES6_S6_EENS_4pairIT_T1_EES8_T0_S9_(ptr noalias sret(%"struct.std::__1::pair") align 8 %0, ptr noundef %1, [2 x i64] %2, [2 x i64] %3, [2 x i64] %4) #1 align 2 {
  %6 = alloca %"class.std::__1::reverse_iterator", align 8
  %7 = alloca %"class.std::__1::reverse_iterator", align 8
  %8 = alloca %"class.std::__1::reverse_iterator", align 8
  %9 = alloca ptr, align 8
  store [2 x i64] %2, ptr %6, align 8
  store [2 x i64] %3, ptr %7, align 8
  store [2 x i64] %4, ptr %8, align 8
  store ptr %1, ptr %9, align 8
  %10 = load ptr, ptr %9, align 8
  br label %11

11:                                               ; preds = %13, %5
  %12 = call zeroext i1 @_ZNSt3__1neB8ue170006IPiS1_EEbRKNS_16reverse_iteratorIT_EERKNS2_IT0_EE(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %7)
  br i1 %12, label %13, label %19

13:                                               ; preds = %11
  %14 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt3__18_IterOpsINS_17_ClassicAlgPolicyEE11__iter_moveB8ue170006IRNS_16reverse_iteratorIPiEEEENS_9enable_ifIXsr12is_referenceIDTdeclsr3stdE7declvalIRT_EEEEE5valueEDTclsr3stdE4movedeclsr3stdE7declvalISA_EEEEE4typeEOS9_(ptr noundef nonnull align 8 dereferenceable(16) %6)
  %15 = load i32, ptr %14, align 4
  %16 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNKSt3__116reverse_iteratorIPiEdeB8ue170006Ev(ptr noundef %8)
  store i32 %15, ptr %16, align 4
  %17 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt3__116reverse_iteratorIPiEppB8ue170006Ev(ptr noundef %6)
  %18 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt3__116reverse_iteratorIPiEppB8ue170006Ev(ptr noundef %8)
  br label %11, !llvm.loop !6

19:                                               ; preds = %11
  call void @_ZNSt3__19make_pairB8ue170006INS_16reverse_iteratorIPiEES3_EENS_4pairINS_18__unwrap_ref_decayIT_E4typeENS5_IT0_E4typeEEEOS6_OS9_(ptr sret(%"struct.std::__1::pair") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %8)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden [2 x i64] @_ZNSt3__113__unwrap_iterB8ue170006INS_16reverse_iteratorIPiEENS_18__unwrap_iter_implIS3_Lb0EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEES7_([2 x i64] %0) #5 {
  %2 = alloca %"class.std::__1::reverse_iterator", align 8
  %3 = alloca %"class.std::__1::reverse_iterator", align 8
  %4 = alloca %"class.std::__1::reverse_iterator", align 8
  store [2 x i64] %0, ptr %3, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %4, ptr align 8 %3, i64 16, i1 false)
  %5 = load [2 x i64], ptr %4, align 8
  %6 = call [2 x i64] @_ZNSt3__118__unwrap_iter_implINS_16reverse_iteratorIPiEELb0EE8__unwrapB8ue170006ES3_([2 x i64] %5) #12
  store [2 x i64] %6, ptr %2, align 8
  %7 = load [2 x i64], ptr %2, align 8
  ret [2 x i64] %7
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNSt3__19make_pairB8ue170006INS_16reverse_iteratorIPiEES3_EENS_4pairINS_18__unwrap_ref_decayIT_E4typeENS5_IT0_E4typeEEEOS6_OS9_(ptr noalias sret(%"struct.std::__1::pair") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) #5 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %1, ptr %4, align 8
  store ptr %2, ptr %5, align 8
  %6 = load ptr, ptr %4, align 8
  %7 = load ptr, ptr %5, align 8
  %8 = call ptr @_ZNSt3__14pairINS_16reverse_iteratorIPiEES3_EC1B8ue170006IS3_S3_LPv0EEEOT_OT0_(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %7) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden [2 x i64] @_ZNSt3__114__rewrap_rangeB8ue170006INS_16reverse_iteratorIPiEES3_EET_S4_T0_([2 x i64] %0, [2 x i64] %1) #5 {
  %3 = alloca %"class.std::__1::reverse_iterator", align 8
  %4 = alloca %"class.std::__1::reverse_iterator", align 8
  %5 = alloca %"class.std::__1::reverse_iterator", align 8
  %6 = alloca %"class.std::__1::reverse_iterator", align 8
  %7 = alloca %"class.std::__1::reverse_iterator", align 8
  store [2 x i64] %0, ptr %4, align 8
  store [2 x i64] %1, ptr %5, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %6, ptr align 8 %4, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %7, ptr align 8 %5, i64 16, i1 false)
  %8 = load [2 x i64], ptr %6, align 8
  %9 = load [2 x i64], ptr %7, align 8
  %10 = call [2 x i64] @_ZNSt3__113__rewrap_iterB8ue170006INS_16reverse_iteratorIPiEES3_NS_18__unwrap_iter_implIS3_Lb0EEEEET_S6_T0_([2 x i64] %8, [2 x i64] %9) #12
  store [2 x i64] %10, ptr %3, align 8
  %11 = load [2 x i64], ptr %3, align 8
  ret [2 x i64] %11
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden [2 x i64] @_ZNSt3__113__rewrap_iterB8ue170006INS_16reverse_iteratorIPiEES3_NS_18__unwrap_iter_implIS3_Lb0EEEEET_S6_T0_([2 x i64] %0, [2 x i64] %1) #5 personality ptr @__gxx_personality_v0 {
  %3 = alloca %"class.std::__1::reverse_iterator", align 8
  %4 = alloca %"class.std::__1::reverse_iterator", align 8
  %5 = alloca %"class.std::__1::reverse_iterator", align 8
  %6 = alloca %"class.std::__1::reverse_iterator", align 8
  %7 = alloca %"class.std::__1::reverse_iterator", align 8
  store [2 x i64] %0, ptr %4, align 8
  store [2 x i64] %1, ptr %5, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %6, ptr align 8 %4, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %7, ptr align 8 %5, i64 16, i1 false)
  %8 = load [2 x i64], ptr %6, align 8
  %9 = load [2 x i64], ptr %7, align 8
  %10 = invoke [2 x i64] @_ZNSt3__118__unwrap_iter_implINS_16reverse_iteratorIPiEELb0EE8__rewrapB8ue170006ES3_S3_([2 x i64] %8, [2 x i64] %9)
          to label %11 unwind label %13

11:                                               ; preds = %2
  store [2 x i64] %10, ptr %3, align 8
  %12 = load [2 x i64], ptr %3, align 8
  ret [2 x i64] %12

13:                                               ; preds = %2
  %14 = landingpad { ptr, i32 }
          catch ptr null
  %15 = extractvalue { ptr, i32 } %14, 0
  call void @__clang_call_terminate(ptr %15) #14
  unreachable
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden zeroext i1 @_ZNSt3__1neB8ue170006IPiS1_EEbRKNS_16reverse_iteratorIT_EERKNS2_IT0_EE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) #1 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = call ptr @_ZNKSt3__116reverse_iteratorIPiE4baseB8ue170006Ev(ptr noundef %5)
  %7 = load ptr, ptr %4, align 8
  %8 = call ptr @_ZNKSt3__116reverse_iteratorIPiE4baseB8ue170006Ev(ptr noundef %7)
  %9 = icmp ne ptr %6, %8
  ret i1 %9
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt3__18_IterOpsINS_17_ClassicAlgPolicyEE11__iter_moveB8ue170006IRNS_16reverse_iteratorIPiEEEENS_9enable_ifIXsr12is_referenceIDTdeclsr3stdE7declvalIRT_EEEEE5valueEDTclsr3stdE4movedeclsr3stdE7declvalISA_EEEEE4typeEOS9_(ptr noundef nonnull align 8 dereferenceable(16) %0) #1 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @_ZNSt3__18_IterOpsINS_17_ClassicAlgPolicyEE25__validate_iter_referenceB8ue170006IRNS_16reverse_iteratorIPiEEEEvv()
  %3 = load ptr, ptr %2, align 8
  %4 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNKSt3__116reverse_iteratorIPiEdeB8ue170006Ev(ptr noundef %3)
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef nonnull align 4 dereferenceable(4) ptr @_ZNKSt3__116reverse_iteratorIPiEdeB8ue170006Ev(ptr noundef %0) #5 align 2 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %4 = load ptr, ptr %2, align 8
  %5 = getelementptr inbounds %"class.std::__1::reverse_iterator", ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 8
  store ptr %6, ptr %3, align 8
  %7 = load ptr, ptr %3, align 8
  %8 = getelementptr inbounds i32, ptr %7, i32 -1
  store ptr %8, ptr %3, align 8
  ret ptr %8
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt3__116reverse_iteratorIPiEppB8ue170006Ev(ptr noundef %0) #5 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.std::__1::reverse_iterator", ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds i32, ptr %5, i32 -1
  store ptr %6, ptr %4, align 8
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNSt3__18_IterOpsINS_17_ClassicAlgPolicyEE25__validate_iter_referenceB8ue170006IRNS_16reverse_iteratorIPiEEEEvv() #5 align 2 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden [2 x i64] @_ZNSt3__118__unwrap_iter_implINS_16reverse_iteratorIPiEELb0EE8__unwrapB8ue170006ES3_([2 x i64] %0) #5 align 2 {
  %2 = alloca %"class.std::__1::reverse_iterator", align 8
  %3 = alloca %"class.std::__1::reverse_iterator", align 8
  store [2 x i64] %0, ptr %3, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %2, ptr align 8 %3, i64 16, i1 false)
  %4 = load [2 x i64], ptr %2, align 8
  ret [2 x i64] %4
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr ptr @_ZNSt3__14pairINS_16reverse_iteratorIPiEES3_EC1B8ue170006IS3_S3_LPv0EEEOT_OT0_(ptr noundef returned %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #0 align 2 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  %7 = load ptr, ptr %4, align 8
  %8 = load ptr, ptr %5, align 8
  %9 = load ptr, ptr %6, align 8
  %10 = call ptr @_ZNSt3__14pairINS_16reverse_iteratorIPiEES3_EC2B8ue170006IS3_S3_LPv0EEEOT_OT0_(ptr noundef %7, ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) %9) #12
  ret ptr %7
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr ptr @_ZNSt3__14pairINS_16reverse_iteratorIPiEES3_EC2B8ue170006IS3_S3_LPv0EEEOT_OT0_(ptr noundef returned %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #0 align 2 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  %7 = load ptr, ptr %4, align 8
  %8 = getelementptr inbounds %"struct.std::__1::pair", ptr %7, i32 0, i32 0
  %9 = load ptr, ptr %5, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %8, ptr align 8 %9, i64 16, i1 false)
  %10 = getelementptr inbounds %"struct.std::__1::pair", ptr %7, i32 0, i32 1
  %11 = load ptr, ptr %6, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %10, ptr align 8 %11, i64 16, i1 false)
  ret ptr %7
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden [2 x i64] @_ZNSt3__118__unwrap_iter_implINS_16reverse_iteratorIPiEELb0EE8__rewrapB8ue170006ES3_S3_([2 x i64] %0, [2 x i64] %1) #5 align 2 {
  %3 = alloca %"class.std::__1::reverse_iterator", align 8
  %4 = alloca %"class.std::__1::reverse_iterator", align 8
  %5 = alloca %"class.std::__1::reverse_iterator", align 8
  store [2 x i64] %0, ptr %4, align 8
  store [2 x i64] %1, ptr %5, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %3, ptr align 8 %5, i64 16, i1 false)
  %6 = load [2 x i64], ptr %3, align 8
  ret [2 x i64] %6
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden ptr @_ZNSt3__116reverse_iteratorIPiEC2B8ue170006ES1_(ptr noundef returned %0, ptr noundef %1) unnamed_addr #0 align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = getelementptr inbounds %"class.std::__1::reverse_iterator", ptr %5, i32 0, i32 0
  %7 = load ptr, ptr %4, align 8
  store ptr %7, ptr %6, align 8
  %8 = getelementptr inbounds %"class.std::__1::reverse_iterator", ptr %5, i32 0, i32 1
  %9 = load ptr, ptr %4, align 8
  store ptr %9, ptr %8, align 8
  ret ptr %5
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden ptr @_ZNSt3__114__split_bufferIiRNS_9allocatorIiEEED2Ev(ptr noundef returned %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  %4 = load ptr, ptr %3, align 8
  store ptr %4, ptr %2, align 8
  call void @_ZNSt3__114__split_bufferIiRNS_9allocatorIiEEE5clearB8ue170006Ev(ptr noundef %4) #12
  %5 = getelementptr inbounds %"struct.std::__1::__split_buffer", ptr %4, i32 0, i32 0
  %6 = load ptr, ptr %5, align 8
  %7 = icmp ne ptr %6, null
  br i1 %7, label %8, label %14

8:                                                ; preds = %1
  %9 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__114__split_bufferIiRNS_9allocatorIiEEE7__allocB8ue170006Ev(ptr noundef %4) #12
  %10 = getelementptr inbounds %"struct.std::__1::__split_buffer", ptr %4, i32 0, i32 0
  %11 = load ptr, ptr %10, align 8
  %12 = invoke i64 @_ZNKSt3__114__split_bufferIiRNS_9allocatorIiEEE8capacityB8ue170006Ev(ptr noundef %4)
          to label %13 unwind label %16

13:                                               ; preds = %8
  call void @_ZNSt3__116allocator_traitsINS_9allocatorIiEEE10deallocateB8ue170006ERS2_Pim(ptr noundef nonnull align 1 dereferenceable(1) %9, ptr noundef %11, i64 noundef %12) #12
  br label %14

14:                                               ; preds = %13, %1
  %15 = load ptr, ptr %2, align 8
  ret ptr %15

16:                                               ; preds = %8
  %17 = landingpad { ptr, i32 }
          catch ptr null
  %18 = extractvalue { ptr, i32 } %17, 0
  call void @__clang_call_terminate(ptr %18) #14
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNSt3__114__split_bufferIiRNS_9allocatorIiEEE5clearB8ue170006Ev(ptr noundef %0) #5 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"struct.std::__1::__split_buffer", ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8
  call void @_ZNSt3__114__split_bufferIiRNS_9allocatorIiEEE17__destruct_at_endB8ue170006EPi(ptr noundef %3, ptr noundef %5) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNSt3__116allocator_traitsINS_9allocatorIiEEE10deallocateB8ue170006ERS2_Pim(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) #5 align 2 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store i64 %2, ptr %6, align 8
  %7 = load ptr, ptr %4, align 8
  %8 = load ptr, ptr %5, align 8
  %9 = load i64, ptr %6, align 8
  call void @_ZNSt3__19allocatorIiE10deallocateB8ue170006EPim(ptr noundef %7, ptr noundef %8, i64 noundef %9) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden i64 @_ZNKSt3__114__split_bufferIiRNS_9allocatorIiEEE8capacityB8ue170006Ev(ptr noundef %0) #5 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt3__114__split_bufferIiRNS_9allocatorIiEEE9__end_capB8ue170006Ev(ptr noundef %3) #12
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %"struct.std::__1::__split_buffer", ptr %3, i32 0, i32 0
  %7 = load ptr, ptr %6, align 8
  %8 = ptrtoint ptr %5 to i64
  %9 = ptrtoint ptr %7 to i64
  %10 = sub i64 %8, %9
  %11 = sdiv exact i64 %10, 4
  ret i64 %11
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNSt3__114__split_bufferIiRNS_9allocatorIiEEE17__destruct_at_endB8ue170006EPi(ptr noundef %0, ptr noundef %1) #5 align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca %"struct.std::__1::integral_constant", align 1
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %6 = load ptr, ptr %3, align 8
  %7 = load ptr, ptr %4, align 8
  call void @_ZNSt3__114__split_bufferIiRNS_9allocatorIiEEE17__destruct_at_endB8ue170006EPiNS_17integral_constantIbLb0EEE(ptr noundef %6, ptr noundef %7) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNSt3__114__split_bufferIiRNS_9allocatorIiEEE17__destruct_at_endB8ue170006EPiNS_17integral_constantIbLb0EEE(ptr noundef %0, ptr noundef %1) #5 align 2 personality ptr @__gxx_personality_v0 {
  %3 = alloca %"struct.std::__1::integral_constant", align 1
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  %6 = load ptr, ptr %4, align 8
  br label %7

7:                                                ; preds = %18, %2
  %8 = load ptr, ptr %5, align 8
  %9 = getelementptr inbounds %"struct.std::__1::__split_buffer", ptr %6, i32 0, i32 2
  %10 = load ptr, ptr %9, align 8
  %11 = icmp ne ptr %8, %10
  br i1 %11, label %12, label %19

12:                                               ; preds = %7
  %13 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__114__split_bufferIiRNS_9allocatorIiEEE7__allocB8ue170006Ev(ptr noundef %6) #12
  %14 = getelementptr inbounds %"struct.std::__1::__split_buffer", ptr %6, i32 0, i32 2
  %15 = load ptr, ptr %14, align 8
  %16 = getelementptr inbounds i32, ptr %15, i32 -1
  store ptr %16, ptr %14, align 8
  %17 = call ptr @_ZNSt3__112__to_addressB8ue170006IiEEPT_S2_(ptr noundef %16) #12
  invoke void @_ZNSt3__116allocator_traitsINS_9allocatorIiEEE7destroyB8ue170006IivEEvRS2_PT_(ptr noundef nonnull align 1 dereferenceable(1) %13, ptr noundef %17)
          to label %18 unwind label %20

18:                                               ; preds = %12
  br label %7, !llvm.loop !8

19:                                               ; preds = %7
  ret void

20:                                               ; preds = %12
  %21 = landingpad { ptr, i32 }
          catch ptr null
  %22 = extractvalue { ptr, i32 } %21, 0
  call void @__clang_call_terminate(ptr %22) #14
  unreachable
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr void @_ZNSt3__116allocator_traitsINS_9allocatorIiEEE7destroyB8ue170006IivEEvRS2_PT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1) #1 align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = load ptr, ptr %4, align 8
  call void @_ZNSt3__19allocatorIiE7destroyB8ue170006EPi(ptr noundef %5, ptr noundef %6)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNSt3__19allocatorIiE7destroyB8ue170006EPi(ptr noundef %0, ptr noundef %1) #5 align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = load ptr, ptr %4, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNSt3__19allocatorIiE10deallocateB8ue170006EPim(ptr noundef %0, ptr noundef %1, i64 noundef %2) #5 align 2 personality ptr @__gxx_personality_v0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store i64 %2, ptr %6, align 8
  %7 = load ptr, ptr %4, align 8
  %8 = load ptr, ptr %5, align 8
  %9 = load i64, ptr %6, align 8
  %10 = mul i64 %9, 4
  invoke void @_ZNSt3__119__libcpp_deallocateB8ue170006EPvmm(ptr noundef %8, i64 noundef %10, i64 noundef 4)
          to label %11 unwind label %12

11:                                               ; preds = %3
  ret void

12:                                               ; preds = %3
  %13 = landingpad { ptr, i32 }
          catch ptr null
  %14 = extractvalue { ptr, i32 } %13, 0
  call void @__clang_call_terminate(ptr %14) #14
  unreachable
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNSt3__119__libcpp_deallocateB8ue170006EPvmm(ptr noundef %0, i64 noundef %1, i64 noundef %2) #1 {
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
  store i64 %1, ptr %5, align 8
  store i64 %2, ptr %6, align 8
  %8 = load i64, ptr %6, align 8
  %9 = call zeroext i1 @_ZNSt3__124__is_overaligned_for_newB8ue170006Em(i64 noundef %8) #12
  br i1 %9, label %10, label %15

10:                                               ; preds = %3
  %11 = load i64, ptr %6, align 8
  store i64 %11, ptr %7, align 8
  %12 = load ptr, ptr %4, align 8
  %13 = load i64, ptr %5, align 8
  %14 = load i64, ptr %7, align 8
  call void @_ZNSt3__127__do_deallocate_handle_sizeB8ue170006IJSt11align_val_tEEEvPvmDpT_(ptr noundef %12, i64 noundef %13, i64 noundef %14)
  br label %18

15:                                               ; preds = %3
  %16 = load ptr, ptr %4, align 8
  %17 = load i64, ptr %5, align 8
  call void @_ZNSt3__127__do_deallocate_handle_sizeB8ue170006IJEEEvPvmDpT_(ptr noundef %16, i64 noundef %17)
  br label %18

18:                                               ; preds = %15, %10
  ret void
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNSt3__127__do_deallocate_handle_sizeB8ue170006IJSt11align_val_tEEEvPvmDpT_(ptr noundef %0, i64 noundef %1, i64 noundef %2) #1 {
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
  store i64 %1, ptr %5, align 8
  store i64 %2, ptr %6, align 8
  %7 = load ptr, ptr %4, align 8
  %8 = load i64, ptr %6, align 8
  call void @_ZNSt3__124__libcpp_operator_deleteB8ue170006IJPvSt11align_val_tEEEvDpT_(ptr noundef %7, i64 noundef %8)
  ret void
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNSt3__127__do_deallocate_handle_sizeB8ue170006IJEEEvPvmDpT_(ptr noundef %0, i64 noundef %1) #1 {
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  store ptr %0, ptr %3, align 8
  store i64 %1, ptr %4, align 8
  %5 = load ptr, ptr %3, align 8
  call void @_ZNSt3__124__libcpp_operator_deleteB8ue170006IJPvEEEvDpT_(ptr noundef %5)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNSt3__124__libcpp_operator_deleteB8ue170006IJPvSt11align_val_tEEEvDpT_(ptr noundef %0, i64 noundef %1) #5 {
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  store ptr %0, ptr %3, align 8
  store i64 %1, ptr %4, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = load i64, ptr %4, align 8
  call void @_ZdlPvSt11align_val_t(ptr noundef %5, i64 noundef %6) #16
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvSt11align_val_t(ptr noundef, i64 noundef) #11

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNSt3__124__libcpp_operator_deleteB8ue170006IJPvEEEvDpT_(ptr noundef %0) #5 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  call void @_ZdlPv(ptr noundef %3) #16
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) #11

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt3__114__split_bufferIiRNS_9allocatorIiEEE9__end_capB8ue170006Ev(ptr noundef %0) #5 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"struct.std::__1::__split_buffer", ptr %3, i32 0, i32 3
  %5 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt3__117__compressed_pairIPiRNS_9allocatorIiEEE5firstB8ue170006Ev(ptr noundef %4) #12
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt3__117__compressed_pairIPiRNS_9allocatorIiEEE5firstB8ue170006Ev(ptr noundef %0) #5 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt3__122__compressed_pair_elemIPiLi0ELb0EE5__getB8ue170006Ev(ptr noundef %3) #12
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden i64 @_ZNSt3__16vectorIiNS_9allocatorIiEEE11__make_iterB8ue170006EPi(ptr noundef %0, ptr noundef %1) #5 align 2 {
  %3 = alloca %"class.std::__1::__wrap_iter.7", align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  %6 = load ptr, ptr %4, align 8
  %7 = load ptr, ptr %5, align 8
  %8 = call ptr @_ZNSt3__111__wrap_iterIPiEC1B8ue170006ES1_(ptr noundef %3, ptr noundef %7) #12
  %9 = getelementptr inbounds %"class.std::__1::__wrap_iter.7", ptr %3, i32 0, i32 0
  %10 = load ptr, ptr %9, align 8
  %11 = ptrtoint ptr %10 to i64
  ret i64 %11
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden ptr @_ZNSt3__111__wrap_iterIPiEC1B8ue170006ES1_(ptr noundef returned %0, ptr noundef %1) unnamed_addr #0 align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = load ptr, ptr %4, align 8
  %7 = call ptr @_ZNSt3__111__wrap_iterIPiEC2B8ue170006ES1_(ptr noundef %5, ptr noundef %6) #12
  ret ptr %5
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden ptr @_ZNSt3__111__wrap_iterIPiEC2B8ue170006ES1_(ptr noundef returned %0, ptr noundef %1) unnamed_addr #0 align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = getelementptr inbounds %"class.std::__1::__wrap_iter.7", ptr %5, i32 0, i32 0
  %7 = load ptr, ptr %4, align 8
  store ptr %7, ptr %6, align 8
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden i64 @_ZNSt3__1miB8ue170006IPKiPiEEDTmicldtfp_4baseEcldtfp0_4baseEERKNS_11__wrap_iterIT_EERKNS5_IT0_EE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #5 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = call ptr @_ZNKSt3__111__wrap_iterIPKiE4baseB8ue170006Ev(ptr noundef %5) #12
  %7 = load ptr, ptr %4, align 8
  %8 = call ptr @_ZNKSt3__111__wrap_iterIPiE4baseB8ue170006Ev(ptr noundef %7) #12
  %9 = ptrtoint ptr %6 to i64
  %10 = ptrtoint ptr %8 to i64
  %11 = sub i64 %9, %10
  %12 = sdiv exact i64 %11, 4
  ret i64 %12
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNSt3__16vectorIiNS_9allocatorIiEEE12__move_rangeEPiS4_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #1 align 2 personality ptr @__gxx_personality_v0 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca i64, align 8
  %11 = alloca ptr, align 8
  %12 = alloca %"struct.std::__1::vector<int>::_ConstructTransaction", align 8
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca i32, align 4
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  store ptr %2, ptr %7, align 8
  store ptr %3, ptr %8, align 8
  %16 = load ptr, ptr %5, align 8
  %17 = getelementptr inbounds %"class.std::__1::vector", ptr %16, i32 0, i32 1
  %18 = load ptr, ptr %17, align 8
  store ptr %18, ptr %9, align 8
  %19 = load ptr, ptr %9, align 8
  %20 = load ptr, ptr %8, align 8
  %21 = ptrtoint ptr %19 to i64
  %22 = ptrtoint ptr %20 to i64
  %23 = sub i64 %21, %22
  %24 = sdiv exact i64 %23, 4
  store i64 %24, ptr %10, align 8
  %25 = load ptr, ptr %6, align 8
  %26 = load i64, ptr %10, align 8
  %27 = getelementptr inbounds i32, ptr %25, i64 %26
  store ptr %27, ptr %11, align 8
  %28 = load ptr, ptr %7, align 8
  %29 = load ptr, ptr %11, align 8
  %30 = ptrtoint ptr %28 to i64
  %31 = ptrtoint ptr %29 to i64
  %32 = sub i64 %30, %31
  %33 = sdiv exact i64 %32, 4
  %34 = call ptr @_ZNSt3__16vectorIiNS_9allocatorIiEEE21_ConstructTransactionC1B8ue170006ERS3_m(ptr noundef %12, ptr noundef nonnull align 8 dereferenceable(24) %16, i64 noundef %33)
  %35 = getelementptr inbounds %"struct.std::__1::vector<int>::_ConstructTransaction", ptr %12, i32 0, i32 1
  %36 = load ptr, ptr %35, align 8
  store ptr %36, ptr %13, align 8
  br label %37

37:                                               ; preds = %47, %4
  %38 = load ptr, ptr %11, align 8
  %39 = load ptr, ptr %7, align 8
  %40 = icmp ult ptr %38, %39
  br i1 %40, label %41, label %59

41:                                               ; preds = %37
  %42 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__16vectorIiNS_9allocatorIiEEE7__allocB8ue170006Ev(ptr noundef %16) #12
  %43 = load ptr, ptr %13, align 8
  %44 = call ptr @_ZNSt3__112__to_addressB8ue170006IiEEPT_S2_(ptr noundef %43) #12
  %45 = load ptr, ptr %11, align 8
  invoke void @_ZNSt3__116allocator_traitsINS_9allocatorIiEEE9constructB8ue170006IiJiEvEEvRS2_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %42, ptr noundef %44, ptr noundef nonnull align 4 dereferenceable(4) %45)
          to label %46 unwind label %54

46:                                               ; preds = %41
  br label %47

47:                                               ; preds = %46
  %48 = load ptr, ptr %11, align 8
  %49 = getelementptr inbounds i32, ptr %48, i32 1
  store ptr %49, ptr %11, align 8
  %50 = load ptr, ptr %13, align 8
  %51 = getelementptr inbounds i32, ptr %50, i32 1
  store ptr %51, ptr %13, align 8
  %52 = load ptr, ptr %13, align 8
  %53 = getelementptr inbounds %"struct.std::__1::vector<int>::_ConstructTransaction", ptr %12, i32 0, i32 1
  store ptr %52, ptr %53, align 8
  br label %37, !llvm.loop !9

54:                                               ; preds = %41
  %55 = landingpad { ptr, i32 }
          cleanup
  %56 = extractvalue { ptr, i32 } %55, 0
  store ptr %56, ptr %14, align 8
  %57 = extractvalue { ptr, i32 } %55, 1
  store i32 %57, ptr %15, align 4
  %58 = call ptr @_ZNSt3__16vectorIiNS_9allocatorIiEEE21_ConstructTransactionD1B8ue170006Ev(ptr noundef %12) #12
  br label %67

59:                                               ; preds = %37
  %60 = call ptr @_ZNSt3__16vectorIiNS_9allocatorIiEEE21_ConstructTransactionD1B8ue170006Ev(ptr noundef %12) #12
  %61 = load ptr, ptr %6, align 8
  %62 = load ptr, ptr %6, align 8
  %63 = load i64, ptr %10, align 8
  %64 = getelementptr inbounds i32, ptr %62, i64 %63
  %65 = load ptr, ptr %9, align 8
  %66 = call ptr @_ZNSt3__113move_backwardB8ue170006IPiS1_EET0_T_S3_S2_(ptr noundef %61, ptr noundef %64, ptr noundef %65)
  ret void

67:                                               ; preds = %54
  %68 = load ptr, ptr %14, align 8
  %69 = load i32, ptr %15, align 4
  %70 = insertvalue { ptr, i32 } undef, ptr %68, 0
  %71 = insertvalue { ptr, i32 } %70, i32 %69, 1
  resume { ptr, i32 } %71
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden ptr @_ZNSt3__114pointer_traitsIPKiE10pointer_toB8ue170006ERS1_(ptr noundef nonnull align 4 dereferenceable(4) %0) #5 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  ret ptr %3
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNSt3__114__split_bufferIiRNS_9allocatorIiEEE9push_backB8ue170006ERKi(ptr noundef %0, ptr noundef nonnull align 4 dereferenceable(4) %1) #1 align 2 personality ptr @__gxx_personality_v0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %"struct.std::__1::__split_buffer", align 8
  %10 = alloca %"class.std::__1::move_iterator", align 8
  %11 = alloca ptr, align 8
  %12 = alloca i32, align 4
  %13 = alloca %"class.std::__1::move_iterator", align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %14 = load ptr, ptr %3, align 8
  %15 = getelementptr inbounds %"struct.std::__1::__split_buffer", ptr %14, i32 0, i32 2
  %16 = load ptr, ptr %15, align 8
  %17 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__114__split_bufferIiRNS_9allocatorIiEEE9__end_capB8ue170006Ev(ptr noundef %14) #12
  %18 = load ptr, ptr %17, align 8
  %19 = icmp eq ptr %16, %18
  br i1 %19, label %20, label %101

20:                                               ; preds = %2
  %21 = getelementptr inbounds %"struct.std::__1::__split_buffer", ptr %14, i32 0, i32 1
  %22 = load ptr, ptr %21, align 8
  %23 = getelementptr inbounds %"struct.std::__1::__split_buffer", ptr %14, i32 0, i32 0
  %24 = load ptr, ptr %23, align 8
  %25 = icmp ugt ptr %22, %24
  br i1 %25, label %26, label %54

26:                                               ; preds = %20
  %27 = getelementptr inbounds %"struct.std::__1::__split_buffer", ptr %14, i32 0, i32 1
  %28 = load ptr, ptr %27, align 8
  %29 = getelementptr inbounds %"struct.std::__1::__split_buffer", ptr %14, i32 0, i32 0
  %30 = load ptr, ptr %29, align 8
  %31 = ptrtoint ptr %28 to i64
  %32 = ptrtoint ptr %30 to i64
  %33 = sub i64 %31, %32
  %34 = sdiv exact i64 %33, 4
  store i64 %34, ptr %5, align 8
  %35 = load i64, ptr %5, align 8
  %36 = add nsw i64 %35, 1
  %37 = sdiv i64 %36, 2
  store i64 %37, ptr %5, align 8
  %38 = getelementptr inbounds %"struct.std::__1::__split_buffer", ptr %14, i32 0, i32 1
  %39 = load ptr, ptr %38, align 8
  %40 = getelementptr inbounds %"struct.std::__1::__split_buffer", ptr %14, i32 0, i32 2
  %41 = load ptr, ptr %40, align 8
  %42 = getelementptr inbounds %"struct.std::__1::__split_buffer", ptr %14, i32 0, i32 1
  %43 = load ptr, ptr %42, align 8
  %44 = load i64, ptr %5, align 8
  %45 = sub i64 0, %44
  %46 = getelementptr inbounds i32, ptr %43, i64 %45
  %47 = call ptr @_ZNSt3__14moveB8ue170006IPiS1_EET0_T_S3_S2_(ptr noundef %39, ptr noundef %41, ptr noundef %46)
  %48 = getelementptr inbounds %"struct.std::__1::__split_buffer", ptr %14, i32 0, i32 2
  store ptr %47, ptr %48, align 8
  %49 = load i64, ptr %5, align 8
  %50 = getelementptr inbounds %"struct.std::__1::__split_buffer", ptr %14, i32 0, i32 1
  %51 = load ptr, ptr %50, align 8
  %52 = sub i64 0, %49
  %53 = getelementptr inbounds i32, ptr %51, i64 %52
  store ptr %53, ptr %50, align 8
  br label %100

54:                                               ; preds = %20
  %55 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__114__split_bufferIiRNS_9allocatorIiEEE9__end_capB8ue170006Ev(ptr noundef %14) #12
  %56 = load ptr, ptr %55, align 8
  %57 = getelementptr inbounds %"struct.std::__1::__split_buffer", ptr %14, i32 0, i32 0
  %58 = load ptr, ptr %57, align 8
  %59 = ptrtoint ptr %56 to i64
  %60 = ptrtoint ptr %58 to i64
  %61 = sub i64 %59, %60
  %62 = sdiv exact i64 %61, 4
  %63 = mul i64 2, %62
  store i64 %63, ptr %7, align 8
  store i64 1, ptr %8, align 8
  %64 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__13maxB8ue170006ImEERKT_S3_S3_(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %8)
  %65 = load i64, ptr %64, align 8
  store i64 %65, ptr %6, align 8
  %66 = load i64, ptr %6, align 8
  %67 = load i64, ptr %6, align 8
  %68 = udiv i64 %67, 4
  %69 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__114__split_bufferIiRNS_9allocatorIiEEE7__allocB8ue170006Ev(ptr noundef %14) #12
  %70 = call ptr @_ZNSt3__114__split_bufferIiRNS_9allocatorIiEEEC1EmmS3_(ptr noundef %9, i64 noundef %66, i64 noundef %68, ptr noundef nonnull align 1 dereferenceable(1) %69)
  %71 = getelementptr inbounds %"struct.std::__1::__split_buffer", ptr %14, i32 0, i32 1
  %72 = load ptr, ptr %71, align 8
  %73 = invoke ptr @_ZNSt3__113move_iteratorIPiEC1B8ue170006ES1_(ptr noundef %10, ptr noundef %72)
          to label %74 unwind label %95

74:                                               ; preds = %54
  %75 = getelementptr inbounds %"struct.std::__1::__split_buffer", ptr %14, i32 0, i32 2
  %76 = load ptr, ptr %75, align 8
  %77 = invoke ptr @_ZNSt3__113move_iteratorIPiEC1B8ue170006ES1_(ptr noundef %13, ptr noundef %76)
          to label %78 unwind label %95

78:                                               ; preds = %74
  %79 = getelementptr inbounds %"class.std::__1::move_iterator", ptr %10, i32 0, i32 0
  %80 = load ptr, ptr %79, align 8
  %81 = ptrtoint ptr %80 to i64
  %82 = getelementptr inbounds %"class.std::__1::move_iterator", ptr %13, i32 0, i32 0
  %83 = load ptr, ptr %82, align 8
  %84 = ptrtoint ptr %83 to i64
  invoke void @_ZNSt3__114__split_bufferIiRNS_9allocatorIiEEE18__construct_at_endINS_13move_iteratorIPiEEEENS_9enable_ifIXsr31__has_forward_iterator_categoryIT_EE5valueEvE4typeESA_SA_(ptr noundef %9, i64 %81, i64 %84)
          to label %85 unwind label %95

85:                                               ; preds = %78
  %86 = getelementptr inbounds %"struct.std::__1::__split_buffer", ptr %14, i32 0, i32 0
  %87 = getelementptr inbounds %"struct.std::__1::__split_buffer", ptr %9, i32 0, i32 0
  call void @_ZNSt3__14swapB8ue170006IPiEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS3_EE5valueEvE4typeERS3_S6_(ptr noundef nonnull align 8 dereferenceable(8) %86, ptr noundef nonnull align 8 dereferenceable(8) %87) #12
  %88 = getelementptr inbounds %"struct.std::__1::__split_buffer", ptr %14, i32 0, i32 1
  %89 = getelementptr inbounds %"struct.std::__1::__split_buffer", ptr %9, i32 0, i32 1
  call void @_ZNSt3__14swapB8ue170006IPiEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS3_EE5valueEvE4typeERS3_S6_(ptr noundef nonnull align 8 dereferenceable(8) %88, ptr noundef nonnull align 8 dereferenceable(8) %89) #12
  %90 = getelementptr inbounds %"struct.std::__1::__split_buffer", ptr %14, i32 0, i32 2
  %91 = getelementptr inbounds %"struct.std::__1::__split_buffer", ptr %9, i32 0, i32 2
  call void @_ZNSt3__14swapB8ue170006IPiEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS3_EE5valueEvE4typeERS3_S6_(ptr noundef nonnull align 8 dereferenceable(8) %90, ptr noundef nonnull align 8 dereferenceable(8) %91) #12
  %92 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__114__split_bufferIiRNS_9allocatorIiEEE9__end_capB8ue170006Ev(ptr noundef %14) #12
  %93 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__114__split_bufferIiRNS_9allocatorIiEEE9__end_capB8ue170006Ev(ptr noundef %9) #12
  call void @_ZNSt3__14swapB8ue170006IPiEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS3_EE5valueEvE4typeERS3_S6_(ptr noundef nonnull align 8 dereferenceable(8) %92, ptr noundef nonnull align 8 dereferenceable(8) %93) #12
  %94 = call ptr @_ZNSt3__114__split_bufferIiRNS_9allocatorIiEEED1Ev(ptr noundef %9) #12
  br label %100

95:                                               ; preds = %78, %74, %54
  %96 = landingpad { ptr, i32 }
          cleanup
  %97 = extractvalue { ptr, i32 } %96, 0
  store ptr %97, ptr %11, align 8
  %98 = extractvalue { ptr, i32 } %96, 1
  store i32 %98, ptr %12, align 4
  %99 = call ptr @_ZNSt3__114__split_bufferIiRNS_9allocatorIiEEED1Ev(ptr noundef %9) #12
  br label %110

100:                                              ; preds = %85, %26
  br label %101

101:                                              ; preds = %100, %2
  %102 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__114__split_bufferIiRNS_9allocatorIiEEE7__allocB8ue170006Ev(ptr noundef %14) #12
  %103 = getelementptr inbounds %"struct.std::__1::__split_buffer", ptr %14, i32 0, i32 2
  %104 = load ptr, ptr %103, align 8
  %105 = call ptr @_ZNSt3__112__to_addressB8ue170006IiEEPT_S2_(ptr noundef %104) #12
  %106 = load ptr, ptr %4, align 8
  call void @_ZNSt3__116allocator_traitsINS_9allocatorIiEEE9constructB8ue170006IiJRKiEvEEvRS2_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %102, ptr noundef %105, ptr noundef nonnull align 4 dereferenceable(4) %106)
  %107 = getelementptr inbounds %"struct.std::__1::__split_buffer", ptr %14, i32 0, i32 2
  %108 = load ptr, ptr %107, align 8
  %109 = getelementptr inbounds i32, ptr %108, i32 1
  store ptr %109, ptr %107, align 8
  ret void

110:                                              ; preds = %95
  %111 = load ptr, ptr %11, align 8
  %112 = load i32, ptr %12, align 4
  %113 = insertvalue { ptr, i32 } undef, ptr %111, 0
  %114 = insertvalue { ptr, i32 } %113, i32 %112, 1
  resume { ptr, i32 } %114
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden ptr @_ZNSt3__16vectorIiNS_9allocatorIiEEE26__swap_out_circular_bufferERNS_14__split_bufferIiRS2_EEPi(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef %2) #1 align 2 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca %"class.std::__1::reverse_iterator", align 8
  %9 = alloca %"class.std::__1::reverse_iterator", align 8
  %10 = alloca %"class.std::__1::reverse_iterator", align 8
  %11 = alloca %"class.std::__1::reverse_iterator", align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  %12 = load ptr, ptr %4, align 8
  call void @_ZNKSt3__16vectorIiNS_9allocatorIiEEE17__annotate_deleteB8ue170006Ev(ptr noundef %12) #12
  %13 = load ptr, ptr %5, align 8
  %14 = getelementptr inbounds %"struct.std::__1::__split_buffer", ptr %13, i32 0, i32 1
  %15 = load ptr, ptr %14, align 8
  store ptr %15, ptr %7, align 8
  %16 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__16vectorIiNS_9allocatorIiEEE7__allocB8ue170006Ev(ptr noundef %12) #12
  %17 = load ptr, ptr %6, align 8
  %18 = call ptr @_ZNSt3__116reverse_iteratorIPiEC1B8ue170006ES1_(ptr noundef %9, ptr noundef %17)
  %19 = getelementptr inbounds %"class.std::__1::vector", ptr %12, i32 0, i32 0
  %20 = load ptr, ptr %19, align 8
  %21 = call ptr @_ZNSt3__116reverse_iteratorIPiEC1B8ue170006ES1_(ptr noundef %10, ptr noundef %20)
  %22 = load ptr, ptr %5, align 8
  %23 = getelementptr inbounds %"struct.std::__1::__split_buffer", ptr %22, i32 0, i32 1
  %24 = load ptr, ptr %23, align 8
  %25 = call ptr @_ZNSt3__116reverse_iteratorIPiEC1B8ue170006ES1_(ptr noundef %11, ptr noundef %24)
  %26 = load [2 x i64], ptr %9, align 8
  %27 = load [2 x i64], ptr %10, align 8
  %28 = load [2 x i64], ptr %11, align 8
  %29 = call [2 x i64] @_ZNSt3__142__uninitialized_allocator_move_if_noexceptB8ue170006INS_9allocatorIiEENS_16reverse_iteratorIPiEES5_ivEET1_RT_T0_S9_S6_(ptr noundef nonnull align 1 dereferenceable(1) %16, [2 x i64] %26, [2 x i64] %27, [2 x i64] %28)
  store [2 x i64] %29, ptr %8, align 8
  %30 = call ptr @_ZNKSt3__116reverse_iteratorIPiE4baseB8ue170006Ev(ptr noundef %8)
  %31 = load ptr, ptr %5, align 8
  %32 = getelementptr inbounds %"struct.std::__1::__split_buffer", ptr %31, i32 0, i32 1
  store ptr %30, ptr %32, align 8
  %33 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__16vectorIiNS_9allocatorIiEEE7__allocB8ue170006Ev(ptr noundef %12) #12
  %34 = load ptr, ptr %6, align 8
  %35 = getelementptr inbounds %"class.std::__1::vector", ptr %12, i32 0, i32 1
  %36 = load ptr, ptr %35, align 8
  %37 = load ptr, ptr %5, align 8
  %38 = getelementptr inbounds %"struct.std::__1::__split_buffer", ptr %37, i32 0, i32 2
  %39 = load ptr, ptr %38, align 8
  %40 = call ptr @_ZNSt3__142__uninitialized_allocator_move_if_noexceptB8ue170006INS_9allocatorIiEEPiS3_ivEET1_RT_T0_S7_S4_(ptr noundef nonnull align 1 dereferenceable(1) %33, ptr noundef %34, ptr noundef %36, ptr noundef %39)
  %41 = load ptr, ptr %5, align 8
  %42 = getelementptr inbounds %"struct.std::__1::__split_buffer", ptr %41, i32 0, i32 2
  store ptr %40, ptr %42, align 8
  %43 = getelementptr inbounds %"class.std::__1::vector", ptr %12, i32 0, i32 0
  %44 = load ptr, ptr %5, align 8
  %45 = getelementptr inbounds %"struct.std::__1::__split_buffer", ptr %44, i32 0, i32 1
  call void @_ZNSt3__14swapB8ue170006IPiEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS3_EE5valueEvE4typeERS3_S6_(ptr noundef nonnull align 8 dereferenceable(8) %43, ptr noundef nonnull align 8 dereferenceable(8) %45) #12
  %46 = getelementptr inbounds %"class.std::__1::vector", ptr %12, i32 0, i32 1
  %47 = load ptr, ptr %5, align 8
  %48 = getelementptr inbounds %"struct.std::__1::__split_buffer", ptr %47, i32 0, i32 2
  call void @_ZNSt3__14swapB8ue170006IPiEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS3_EE5valueEvE4typeERS3_S6_(ptr noundef nonnull align 8 dereferenceable(8) %46, ptr noundef nonnull align 8 dereferenceable(8) %48) #12
  %49 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__16vectorIiNS_9allocatorIiEEE9__end_capB8ue170006Ev(ptr noundef %12) #12
  %50 = load ptr, ptr %5, align 8
  %51 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__114__split_bufferIiRNS_9allocatorIiEEE9__end_capB8ue170006Ev(ptr noundef %50) #12
  call void @_ZNSt3__14swapB8ue170006IPiEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS3_EE5valueEvE4typeERS3_S6_(ptr noundef nonnull align 8 dereferenceable(8) %49, ptr noundef nonnull align 8 dereferenceable(8) %51) #12
  %52 = load ptr, ptr %5, align 8
  %53 = getelementptr inbounds %"struct.std::__1::__split_buffer", ptr %52, i32 0, i32 1
  %54 = load ptr, ptr %53, align 8
  %55 = load ptr, ptr %5, align 8
  %56 = getelementptr inbounds %"struct.std::__1::__split_buffer", ptr %55, i32 0, i32 0
  store ptr %54, ptr %56, align 8
  %57 = call i64 @_ZNKSt3__16vectorIiNS_9allocatorIiEEE4sizeB8ue170006Ev(ptr noundef %12) #12
  call void @_ZNKSt3__16vectorIiNS_9allocatorIiEEE14__annotate_newB8ue170006Em(ptr noundef %12, i64 noundef %57) #12
  %58 = load ptr, ptr %7, align 8
  ret ptr %58
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden ptr @_ZNKSt3__111__wrap_iterIPKiE4baseB8ue170006Ev(ptr noundef %0) #5 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.std::__1::__wrap_iter", ptr %3, i32 0, i32 0
  %5 = load ptr, ptr %4, align 8
  ret ptr %5
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr void @_ZNSt3__116allocator_traitsINS_9allocatorIiEEE9constructB8ue170006IiJiEvEEvRS2_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) #1 align 2 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  %7 = load ptr, ptr %4, align 8
  %8 = load ptr, ptr %5, align 8
  %9 = load ptr, ptr %6, align 8
  call void @_ZNSt3__19allocatorIiE9constructB8ue170006IiJiEEEvPT_DpOT0_(ptr noundef %7, ptr noundef %8, ptr noundef nonnull align 4 dereferenceable(4) %9)
  ret void
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden ptr @_ZNSt3__113move_backwardB8ue170006IPiS1_EET0_T_S3_S2_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #1 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca %"struct.std::__1::pair.36", align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  %8 = load ptr, ptr %4, align 8
  %9 = load ptr, ptr %5, align 8
  %10 = load ptr, ptr %6, align 8
  %11 = call [2 x i64] @_ZNSt3__115__move_backwardB8ue170006INS_17_ClassicAlgPolicyEPiS2_S2_EENS_4pairIT0_T2_EES4_T1_S5_(ptr noundef %8, ptr noundef %9, ptr noundef %10)
  store [2 x i64] %11, ptr %7, align 8
  %12 = getelementptr inbounds %"struct.std::__1::pair.36", ptr %7, i32 0, i32 1
  %13 = load ptr, ptr %12, align 8
  ret ptr %13
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr void @_ZNSt3__19allocatorIiE9constructB8ue170006IiJiEEEvPT_DpOT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) #5 align 2 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  %7 = load ptr, ptr %4, align 8
  %8 = load ptr, ptr %5, align 8
  %9 = load ptr, ptr %6, align 8
  %10 = load i32, ptr %9, align 4
  store i32 %10, ptr %8, align 4
  ret void
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden [2 x i64] @_ZNSt3__115__move_backwardB8ue170006INS_17_ClassicAlgPolicyEPiS2_S2_EENS_4pairIT0_T2_EES4_T1_S5_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #1 {
  %4 = alloca %"struct.std::__1::pair.36", align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  store ptr %2, ptr %7, align 8
  %8 = load ptr, ptr %5, align 8
  %9 = load ptr, ptr %6, align 8
  %10 = load ptr, ptr %7, align 8
  %11 = call [2 x i64] @_ZNSt3__123__dispatch_copy_or_moveB8ue170006INS_17_ClassicAlgPolicyENS_20__move_backward_loopIS1_EENS_23__move_backward_trivialEPiS5_S5_EENS_4pairIT2_T4_EES7_T3_S8_(ptr noundef %8, ptr noundef %9, ptr noundef %10)
  store [2 x i64] %11, ptr %4, align 8
  %12 = load [2 x i64], ptr %4, align 8
  ret [2 x i64] %12
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden [2 x i64] @_ZNSt3__123__dispatch_copy_or_moveB8ue170006INS_17_ClassicAlgPolicyENS_20__move_backward_loopIS1_EENS_23__move_backward_trivialEPiS5_S5_EENS_4pairIT2_T4_EES7_T3_S8_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #1 {
  %4 = alloca %"struct.std::__1::pair.36", align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  store ptr %2, ptr %7, align 8
  %8 = load ptr, ptr %5, align 8
  %9 = load ptr, ptr %6, align 8
  %10 = load ptr, ptr %7, align 8
  %11 = call [2 x i64] @_ZNSt3__121__unwrap_and_dispatchB8ue170006INS_10__overloadINS_20__move_backward_loopINS_17_ClassicAlgPolicyEEENS_23__move_backward_trivialEEEPiS7_S7_Li0EEENS_4pairIT0_T2_EES9_T1_SA_(ptr noundef %8, ptr noundef %9, ptr noundef %10)
  store [2 x i64] %11, ptr %4, align 8
  %12 = load [2 x i64], ptr %4, align 8
  ret [2 x i64] %12
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden [2 x i64] @_ZNSt3__121__unwrap_and_dispatchB8ue170006INS_10__overloadINS_20__move_backward_loopINS_17_ClassicAlgPolicyEEENS_23__move_backward_trivialEEEPiS7_S7_Li0EEENS_4pairIT0_T2_EES9_T1_SA_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #1 {
  %4 = alloca %"struct.std::__1::pair.36", align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca %"struct.std::__1::pair.36", align 8
  %9 = alloca %"struct.std::__1::pair.36", align 8
  %10 = alloca %"struct.std::__1::__overload.37", align 1
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  store ptr %2, ptr %7, align 8
  %13 = load ptr, ptr %5, align 8
  %14 = load ptr, ptr %6, align 8
  %15 = call [2 x i64] @_ZNSt3__114__unwrap_rangeB8ue170006IPiS1_EENS_4pairIT0_S3_EET_S5_(ptr noundef %13, ptr noundef %14)
  store [2 x i64] %15, ptr %8, align 8
  %16 = getelementptr inbounds %"struct.std::__1::pair.36", ptr %8, i32 0, i32 0
  %17 = load ptr, ptr %16, align 8
  %18 = getelementptr inbounds %"struct.std::__1::pair.36", ptr %8, i32 0, i32 1
  %19 = load ptr, ptr %18, align 8
  %20 = load ptr, ptr %7, align 8
  %21 = call ptr @_ZNSt3__113__unwrap_iterB8ue170006IPiNS_18__unwrap_iter_implIS1_Lb1EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEES5_(ptr noundef %20) #12
  %22 = call [2 x i64] @_ZNKSt3__123__move_backward_trivialclB8ue170006IiiLi0EEENS_4pairIPT_PT0_EES4_S4_S6_(ptr noundef %10, ptr noundef %17, ptr noundef %19, ptr noundef %21)
  store [2 x i64] %22, ptr %9, align 8
  %23 = load ptr, ptr %5, align 8
  %24 = getelementptr inbounds %"struct.std::__1::pair.36", ptr %9, i32 0, i32 0
  %25 = load ptr, ptr %24, align 8
  %26 = call ptr @_ZNSt3__114__rewrap_rangeB8ue170006IPiS1_EET_S2_T0_(ptr noundef %23, ptr noundef %25)
  store ptr %26, ptr %11, align 8
  %27 = load ptr, ptr %7, align 8
  %28 = getelementptr inbounds %"struct.std::__1::pair.36", ptr %9, i32 0, i32 1
  %29 = load ptr, ptr %28, align 8
  %30 = call ptr @_ZNSt3__113__rewrap_iterB8ue170006IPiS1_NS_18__unwrap_iter_implIS1_Lb1EEEEET_S4_T0_(ptr noundef %27, ptr noundef %29) #12
  store ptr %30, ptr %12, align 8
  %31 = call [2 x i64] @_ZNSt3__19make_pairB8ue170006IPiS1_EENS_4pairINS_18__unwrap_ref_decayIT_E4typeENS3_IT0_E4typeEEEOS4_OS7_(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(8) %12)
  store [2 x i64] %31, ptr %4, align 8
  %32 = load [2 x i64], ptr %4, align 8
  ret [2 x i64] %32
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden [2 x i64] @_ZNSt3__114__unwrap_rangeB8ue170006IPiS1_EENS_4pairIT0_S3_EET_S5_(ptr noundef %0, ptr noundef %1) #1 {
  %3 = alloca %"struct.std::__1::pair.36", align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  %8 = load ptr, ptr %4, align 8
  %9 = call ptr @_ZNSt3__113__unwrap_iterB8ue170006IPiNS_18__unwrap_iter_implIS1_Lb1EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEES5_(ptr noundef %8) #12
  store ptr %9, ptr %6, align 8
  %10 = load ptr, ptr %5, align 8
  %11 = call ptr @_ZNSt3__113__unwrap_iterB8ue170006IPiNS_18__unwrap_iter_implIS1_Lb1EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEES5_(ptr noundef %10) #12
  store ptr %11, ptr %7, align 8
  %12 = call [2 x i64] @_ZNSt3__19make_pairB8ue170006IPiS1_EENS_4pairINS_18__unwrap_ref_decayIT_E4typeENS3_IT0_E4typeEEEOS4_OS7_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %7)
  store [2 x i64] %12, ptr %3, align 8
  %13 = load [2 x i64], ptr %3, align 8
  ret [2 x i64] %13
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden [2 x i64] @_ZNKSt3__123__move_backward_trivialclB8ue170006IiiLi0EEENS_4pairIPT_PT0_EES4_S4_S6_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #1 align 2 {
  %5 = alloca %"struct.std::__1::pair.36", align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  store ptr %0, ptr %6, align 8
  store ptr %1, ptr %7, align 8
  store ptr %2, ptr %8, align 8
  store ptr %3, ptr %9, align 8
  %10 = load ptr, ptr %6, align 8
  %11 = load ptr, ptr %7, align 8
  %12 = load ptr, ptr %8, align 8
  %13 = load ptr, ptr %9, align 8
  %14 = call [2 x i64] @_ZNSt3__128__copy_backward_trivial_implB8ue170006IiiEENS_4pairIPT_PT0_EES3_S3_S5_(ptr noundef %11, ptr noundef %12, ptr noundef %13)
  store [2 x i64] %14, ptr %5, align 8
  %15 = load [2 x i64], ptr %5, align 8
  ret [2 x i64] %15
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden ptr @_ZNSt3__113__unwrap_iterB8ue170006IPiNS_18__unwrap_iter_implIS1_Lb1EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEES5_(ptr noundef %0) #5 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = call ptr @_ZNSt3__118__unwrap_iter_implIPiLb1EE8__unwrapB8ue170006ES1_(ptr noundef %3) #12
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden [2 x i64] @_ZNSt3__19make_pairB8ue170006IPiS1_EENS_4pairINS_18__unwrap_ref_decayIT_E4typeENS3_IT0_E4typeEEEOS4_OS7_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #5 {
  %3 = alloca %"struct.std::__1::pair.36", align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  %6 = load ptr, ptr %4, align 8
  %7 = load ptr, ptr %5, align 8
  %8 = call ptr @_ZNSt3__14pairIPiS1_EC1B8ue170006IS1_S1_LPv0EEEOT_OT0_(ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %7) #12
  %9 = load [2 x i64], ptr %3, align 8
  ret [2 x i64] %9
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden ptr @_ZNSt3__114__rewrap_rangeB8ue170006IPiS1_EET_S2_T0_(ptr noundef %0, ptr noundef %1) #5 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = load ptr, ptr %4, align 8
  %7 = call ptr @_ZNSt3__113__rewrap_iterB8ue170006IPiS1_NS_18__unwrap_iter_implIS1_Lb1EEEEET_S4_T0_(ptr noundef %5, ptr noundef %6) #12
  ret ptr %7
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden ptr @_ZNSt3__113__rewrap_iterB8ue170006IPiS1_NS_18__unwrap_iter_implIS1_Lb1EEEEET_S4_T0_(ptr noundef %0, ptr noundef %1) #5 personality ptr @__gxx_personality_v0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = load ptr, ptr %4, align 8
  %7 = invoke ptr @_ZNSt3__118__unwrap_iter_implIPiLb1EE8__rewrapB8ue170006ES1_S1_(ptr noundef %5, ptr noundef %6)
          to label %8 unwind label %9

8:                                                ; preds = %2
  ret ptr %7

9:                                                ; preds = %2
  %10 = landingpad { ptr, i32 }
          catch ptr null
  %11 = extractvalue { ptr, i32 } %10, 0
  call void @__clang_call_terminate(ptr %11) #14
  unreachable
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden [2 x i64] @_ZNSt3__128__copy_backward_trivial_implB8ue170006IiiEENS_4pairIPT_PT0_EES3_S3_S5_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #1 {
  %4 = alloca %"struct.std::__1::pair.36", align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i64, align 8
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  store ptr %2, ptr %7, align 8
  %9 = load ptr, ptr %6, align 8
  %10 = load ptr, ptr %5, align 8
  %11 = ptrtoint ptr %9 to i64
  %12 = ptrtoint ptr %10 to i64
  %13 = sub i64 %11, %12
  %14 = sdiv exact i64 %13, 4
  store i64 %14, ptr %8, align 8
  %15 = load i64, ptr %8, align 8
  %16 = load ptr, ptr %7, align 8
  %17 = sub i64 0, %15
  %18 = getelementptr inbounds i32, ptr %16, i64 %17
  store ptr %18, ptr %7, align 8
  %19 = load ptr, ptr %7, align 8
  %20 = load ptr, ptr %5, align 8
  %21 = load i64, ptr %8, align 8
  %22 = call ptr @_ZNSt3__119__constexpr_memmoveB8ue170006IiiLi0EEEPT_S2_PT0_NS_15__element_countE(ptr noundef %19, ptr noundef %20, i64 noundef %21)
  %23 = call [2 x i64] @_ZNSt3__19make_pairB8ue170006IRPiS2_EENS_4pairINS_18__unwrap_ref_decayIT_E4typeENS4_IT0_E4typeEEEOS5_OS8_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %7)
  store [2 x i64] %23, ptr %4, align 8
  %24 = load [2 x i64], ptr %4, align 8
  ret [2 x i64] %24
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden ptr @_ZNSt3__119__constexpr_memmoveB8ue170006IiiLi0EEEPT_S2_PT0_NS_15__element_countE(ptr noundef %0, ptr noundef %1, i64 noundef %2) #5 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store i64 %2, ptr %6, align 8
  %8 = load i64, ptr %6, align 8
  store i64 %8, ptr %7, align 8
  %9 = load i64, ptr %7, align 8
  %10 = icmp ugt i64 %9, 0
  br i1 %10, label %11, label %18

11:                                               ; preds = %3
  %12 = load ptr, ptr %4, align 8
  %13 = load ptr, ptr %5, align 8
  %14 = load i64, ptr %7, align 8
  %15 = sub i64 %14, 1
  %16 = mul i64 %15, 4
  %17 = add i64 %16, 4
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %12, ptr align 4 %13, i64 %17, i1 false)
  br label %18

18:                                               ; preds = %11, %3
  %19 = load ptr, ptr %4, align 8
  ret ptr %19
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden [2 x i64] @_ZNSt3__19make_pairB8ue170006IRPiS2_EENS_4pairINS_18__unwrap_ref_decayIT_E4typeENS4_IT0_E4typeEEEOS5_OS8_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #5 {
  %3 = alloca %"struct.std::__1::pair.36", align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  %6 = load ptr, ptr %4, align 8
  %7 = load ptr, ptr %5, align 8
  %8 = call ptr @_ZNSt3__14pairIPiS1_EC1B8ue170006IRS1_S4_LPv0EEEOT_OT0_(ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %7) #12
  %9 = load [2 x i64], ptr %3, align 8
  ret [2 x i64] %9
}

; Function Attrs: argmemonly nocallback nofree nounwind willreturn
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #6

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr ptr @_ZNSt3__14pairIPiS1_EC1B8ue170006IRS1_S4_LPv0EEEOT_OT0_(ptr noundef returned %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #0 align 2 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  %7 = load ptr, ptr %4, align 8
  %8 = load ptr, ptr %5, align 8
  %9 = load ptr, ptr %6, align 8
  %10 = call ptr @_ZNSt3__14pairIPiS1_EC2B8ue170006IRS1_S4_LPv0EEEOT_OT0_(ptr noundef %7, ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %9) #12
  ret ptr %7
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr ptr @_ZNSt3__14pairIPiS1_EC2B8ue170006IRS1_S4_LPv0EEEOT_OT0_(ptr noundef returned %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #0 align 2 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  %7 = load ptr, ptr %4, align 8
  %8 = getelementptr inbounds %"struct.std::__1::pair.36", ptr %7, i32 0, i32 0
  %9 = load ptr, ptr %5, align 8
  %10 = load ptr, ptr %9, align 8
  store ptr %10, ptr %8, align 8
  %11 = getelementptr inbounds %"struct.std::__1::pair.36", ptr %7, i32 0, i32 1
  %12 = load ptr, ptr %6, align 8
  %13 = load ptr, ptr %12, align 8
  store ptr %13, ptr %11, align 8
  ret ptr %7
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden ptr @_ZNSt3__118__unwrap_iter_implIPiLb1EE8__unwrapB8ue170006ES1_(ptr noundef %0) #5 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = call ptr @_ZNSt3__112__to_addressB8ue170006IiEEPT_S2_(ptr noundef %3) #12
  ret ptr %4
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr ptr @_ZNSt3__14pairIPiS1_EC1B8ue170006IS1_S1_LPv0EEEOT_OT0_(ptr noundef returned %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #0 align 2 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  %7 = load ptr, ptr %4, align 8
  %8 = load ptr, ptr %5, align 8
  %9 = load ptr, ptr %6, align 8
  %10 = call ptr @_ZNSt3__14pairIPiS1_EC2B8ue170006IS1_S1_LPv0EEEOT_OT0_(ptr noundef %7, ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %9) #12
  ret ptr %7
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr ptr @_ZNSt3__14pairIPiS1_EC2B8ue170006IS1_S1_LPv0EEEOT_OT0_(ptr noundef returned %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #0 align 2 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  %7 = load ptr, ptr %4, align 8
  %8 = getelementptr inbounds %"struct.std::__1::pair.36", ptr %7, i32 0, i32 0
  %9 = load ptr, ptr %5, align 8
  %10 = load ptr, ptr %9, align 8
  store ptr %10, ptr %8, align 8
  %11 = getelementptr inbounds %"struct.std::__1::pair.36", ptr %7, i32 0, i32 1
  %12 = load ptr, ptr %6, align 8
  %13 = load ptr, ptr %12, align 8
  store ptr %13, ptr %11, align 8
  ret ptr %7
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden ptr @_ZNSt3__118__unwrap_iter_implIPiLb1EE8__rewrapB8ue170006ES1_S1_(ptr noundef %0, ptr noundef %1) #5 align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = load ptr, ptr %4, align 8
  %7 = load ptr, ptr %3, align 8
  %8 = call ptr @_ZNSt3__112__to_addressB8ue170006IiEEPT_S2_(ptr noundef %7) #12
  %9 = ptrtoint ptr %6 to i64
  %10 = ptrtoint ptr %8 to i64
  %11 = sub i64 %9, %10
  %12 = sdiv exact i64 %11, 4
  %13 = getelementptr inbounds i32, ptr %5, i64 %12
  ret ptr %13
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden ptr @_ZNSt3__14moveB8ue170006IPiS1_EET0_T_S3_S2_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #1 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca %"struct.std::__1::pair.36", align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  %8 = load ptr, ptr %4, align 8
  %9 = load ptr, ptr %5, align 8
  %10 = load ptr, ptr %6, align 8
  %11 = call [2 x i64] @_ZNSt3__16__moveB8ue170006INS_17_ClassicAlgPolicyEPiS2_S2_EENS_4pairIT0_T2_EES4_T1_S5_(ptr noundef %8, ptr noundef %9, ptr noundef %10)
  store [2 x i64] %11, ptr %7, align 8
  %12 = getelementptr inbounds %"struct.std::__1::pair.36", ptr %7, i32 0, i32 1
  %13 = load ptr, ptr %12, align 8
  ret ptr %13
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr void @_ZNSt3__114__split_bufferIiRNS_9allocatorIiEEE18__construct_at_endINS_13move_iteratorIPiEEEENS_9enable_ifIXsr31__has_forward_iterator_categoryIT_EE5valueEvE4typeESA_SA_(ptr noundef %0, i64 %1, i64 %2) #1 align 2 {
  %4 = alloca %"class.std::__1::move_iterator", align 8
  %5 = alloca %"class.std::__1::move_iterator", align 8
  %6 = alloca ptr, align 8
  %7 = alloca %"class.std::__1::move_iterator", align 8
  %8 = alloca %"class.std::__1::move_iterator", align 8
  %9 = alloca %"class.std::__1::move_iterator", align 8
  %10 = getelementptr inbounds %"class.std::__1::move_iterator", ptr %4, i32 0, i32 0
  %11 = inttoptr i64 %1 to ptr
  store ptr %11, ptr %10, align 8
  %12 = getelementptr inbounds %"class.std::__1::move_iterator", ptr %5, i32 0, i32 0
  %13 = inttoptr i64 %2 to ptr
  store ptr %13, ptr %12, align 8
  store ptr %0, ptr %6, align 8
  %14 = load ptr, ptr %6, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %7, ptr align 8 %4, i64 8, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %8, ptr align 8 %4, i64 8, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %9, ptr align 8 %5, i64 8, i1 false)
  %15 = getelementptr inbounds %"class.std::__1::move_iterator", ptr %8, i32 0, i32 0
  %16 = load ptr, ptr %15, align 8
  %17 = ptrtoint ptr %16 to i64
  %18 = getelementptr inbounds %"class.std::__1::move_iterator", ptr %9, i32 0, i32 0
  %19 = load ptr, ptr %18, align 8
  %20 = ptrtoint ptr %19 to i64
  %21 = call i64 @_ZNSt3__18distanceB8ue170006INS_13move_iteratorIPiEEEENS_15iterator_traitsIT_E15difference_typeES5_S5_(i64 %17, i64 %20)
  %22 = getelementptr inbounds %"class.std::__1::move_iterator", ptr %7, i32 0, i32 0
  %23 = load ptr, ptr %22, align 8
  %24 = ptrtoint ptr %23 to i64
  call void @_ZNSt3__114__split_bufferIiRNS_9allocatorIiEEE28__construct_at_end_with_sizeINS_13move_iteratorIPiEEEEvT_m(ptr noundef %14, i64 %24, i64 noundef %21)
  ret void
}

; Function Attrs: noinline optnone ssp uwtable(sync)
define linkonce_odr hidden ptr @_ZNSt3__113move_iteratorIPiEC1B8ue170006ES1_(ptr noundef returned %0, ptr noundef %1) unnamed_addr #3 align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = load ptr, ptr %4, align 8
  %7 = call ptr @_ZNSt3__113move_iteratorIPiEC2B8ue170006ES1_(ptr noundef %5, ptr noundef %6)
  ret ptr %5
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden [2 x i64] @_ZNSt3__16__moveB8ue170006INS_17_ClassicAlgPolicyEPiS2_S2_EENS_4pairIT0_T2_EES4_T1_S5_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #1 {
  %4 = alloca %"struct.std::__1::pair.36", align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  store ptr %2, ptr %7, align 8
  %8 = load ptr, ptr %5, align 8
  %9 = load ptr, ptr %6, align 8
  %10 = load ptr, ptr %7, align 8
  %11 = call [2 x i64] @_ZNSt3__123__dispatch_copy_or_moveB8ue170006INS_17_ClassicAlgPolicyENS_11__move_loopIS1_EENS_14__move_trivialEPiS5_S5_EENS_4pairIT2_T4_EES7_T3_S8_(ptr noundef %8, ptr noundef %9, ptr noundef %10)
  store [2 x i64] %11, ptr %4, align 8
  %12 = load [2 x i64], ptr %4, align 8
  ret [2 x i64] %12
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden [2 x i64] @_ZNSt3__123__dispatch_copy_or_moveB8ue170006INS_17_ClassicAlgPolicyENS_11__move_loopIS1_EENS_14__move_trivialEPiS5_S5_EENS_4pairIT2_T4_EES7_T3_S8_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #1 {
  %4 = alloca %"struct.std::__1::pair.36", align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  store ptr %2, ptr %7, align 8
  %8 = load ptr, ptr %5, align 8
  %9 = load ptr, ptr %6, align 8
  %10 = load ptr, ptr %7, align 8
  %11 = call [2 x i64] @_ZNSt3__121__unwrap_and_dispatchB8ue170006INS_10__overloadINS_11__move_loopINS_17_ClassicAlgPolicyEEENS_14__move_trivialEEEPiS7_S7_Li0EEENS_4pairIT0_T2_EES9_T1_SA_(ptr noundef %8, ptr noundef %9, ptr noundef %10)
  store [2 x i64] %11, ptr %4, align 8
  %12 = load [2 x i64], ptr %4, align 8
  ret [2 x i64] %12
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden [2 x i64] @_ZNSt3__121__unwrap_and_dispatchB8ue170006INS_10__overloadINS_11__move_loopINS_17_ClassicAlgPolicyEEENS_14__move_trivialEEEPiS7_S7_Li0EEENS_4pairIT0_T2_EES9_T1_SA_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #1 {
  %4 = alloca %"struct.std::__1::pair.36", align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca %"struct.std::__1::pair.36", align 8
  %9 = alloca %"struct.std::__1::pair.36", align 8
  %10 = alloca %"struct.std::__1::__overload", align 1
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  store ptr %2, ptr %7, align 8
  %13 = load ptr, ptr %5, align 8
  %14 = load ptr, ptr %6, align 8
  %15 = call [2 x i64] @_ZNSt3__114__unwrap_rangeB8ue170006IPiS1_EENS_4pairIT0_S3_EET_S5_(ptr noundef %13, ptr noundef %14)
  store [2 x i64] %15, ptr %8, align 8
  %16 = getelementptr inbounds %"struct.std::__1::pair.36", ptr %8, i32 0, i32 0
  %17 = load ptr, ptr %16, align 8
  %18 = getelementptr inbounds %"struct.std::__1::pair.36", ptr %8, i32 0, i32 1
  %19 = load ptr, ptr %18, align 8
  %20 = load ptr, ptr %7, align 8
  %21 = call ptr @_ZNSt3__113__unwrap_iterB8ue170006IPiNS_18__unwrap_iter_implIS1_Lb1EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEES5_(ptr noundef %20) #12
  %22 = call [2 x i64] @_ZNKSt3__114__move_trivialclB8ue170006IiiLi0EEENS_4pairIPT_PT0_EES4_S4_S6_(ptr noundef %10, ptr noundef %17, ptr noundef %19, ptr noundef %21)
  store [2 x i64] %22, ptr %9, align 8
  %23 = load ptr, ptr %5, align 8
  %24 = getelementptr inbounds %"struct.std::__1::pair.36", ptr %9, i32 0, i32 0
  %25 = load ptr, ptr %24, align 8
  %26 = call ptr @_ZNSt3__114__rewrap_rangeB8ue170006IPiS1_EET_S2_T0_(ptr noundef %23, ptr noundef %25)
  store ptr %26, ptr %11, align 8
  %27 = load ptr, ptr %7, align 8
  %28 = getelementptr inbounds %"struct.std::__1::pair.36", ptr %9, i32 0, i32 1
  %29 = load ptr, ptr %28, align 8
  %30 = call ptr @_ZNSt3__113__rewrap_iterB8ue170006IPiS1_NS_18__unwrap_iter_implIS1_Lb1EEEEET_S4_T0_(ptr noundef %27, ptr noundef %29) #12
  store ptr %30, ptr %12, align 8
  %31 = call [2 x i64] @_ZNSt3__19make_pairB8ue170006IPiS1_EENS_4pairINS_18__unwrap_ref_decayIT_E4typeENS3_IT0_E4typeEEEOS4_OS7_(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(8) %12)
  store [2 x i64] %31, ptr %4, align 8
  %32 = load [2 x i64], ptr %4, align 8
  ret [2 x i64] %32
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden [2 x i64] @_ZNKSt3__114__move_trivialclB8ue170006IiiLi0EEENS_4pairIPT_PT0_EES4_S4_S6_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #1 align 2 {
  %5 = alloca %"struct.std::__1::pair.36", align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  store ptr %0, ptr %6, align 8
  store ptr %1, ptr %7, align 8
  store ptr %2, ptr %8, align 8
  store ptr %3, ptr %9, align 8
  %10 = load ptr, ptr %6, align 8
  %11 = load ptr, ptr %7, align 8
  %12 = load ptr, ptr %8, align 8
  %13 = load ptr, ptr %9, align 8
  %14 = call [2 x i64] @_ZNSt3__119__copy_trivial_implB8ue170006IiiEENS_4pairIPT_PT0_EES3_S3_S5_(ptr noundef %11, ptr noundef %12, ptr noundef %13)
  store [2 x i64] %14, ptr %5, align 8
  %15 = load [2 x i64], ptr %5, align 8
  ret [2 x i64] %15
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden [2 x i64] @_ZNSt3__119__copy_trivial_implB8ue170006IiiEENS_4pairIPT_PT0_EES3_S3_S5_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #1 {
  %4 = alloca %"struct.std::__1::pair.36", align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i64, align 8
  %9 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  store ptr %2, ptr %7, align 8
  %10 = load ptr, ptr %6, align 8
  %11 = load ptr, ptr %5, align 8
  %12 = ptrtoint ptr %10 to i64
  %13 = ptrtoint ptr %11 to i64
  %14 = sub i64 %12, %13
  %15 = sdiv exact i64 %14, 4
  store i64 %15, ptr %8, align 8
  %16 = load ptr, ptr %7, align 8
  %17 = load ptr, ptr %5, align 8
  %18 = load i64, ptr %8, align 8
  %19 = call ptr @_ZNSt3__119__constexpr_memmoveB8ue170006IiiLi0EEEPT_S2_PT0_NS_15__element_countE(ptr noundef %16, ptr noundef %17, i64 noundef %18)
  %20 = load ptr, ptr %7, align 8
  %21 = load i64, ptr %8, align 8
  %22 = getelementptr inbounds i32, ptr %20, i64 %21
  store ptr %22, ptr %9, align 8
  %23 = call [2 x i64] @_ZNSt3__19make_pairB8ue170006IRPiS1_EENS_4pairINS_18__unwrap_ref_decayIT_E4typeENS4_IT0_E4typeEEEOS5_OS8_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %9)
  store [2 x i64] %23, ptr %4, align 8
  %24 = load [2 x i64], ptr %4, align 8
  ret [2 x i64] %24
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden [2 x i64] @_ZNSt3__19make_pairB8ue170006IRPiS1_EENS_4pairINS_18__unwrap_ref_decayIT_E4typeENS4_IT0_E4typeEEEOS5_OS8_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #5 {
  %3 = alloca %"struct.std::__1::pair.36", align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  %6 = load ptr, ptr %4, align 8
  %7 = load ptr, ptr %5, align 8
  %8 = call ptr @_ZNSt3__14pairIPiS1_EC1B8ue170006IRS1_S1_LPv0EEEOT_OT0_(ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %7) #12
  %9 = load [2 x i64], ptr %3, align 8
  ret [2 x i64] %9
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr ptr @_ZNSt3__14pairIPiS1_EC1B8ue170006IRS1_S1_LPv0EEEOT_OT0_(ptr noundef returned %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #0 align 2 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  %7 = load ptr, ptr %4, align 8
  %8 = load ptr, ptr %5, align 8
  %9 = load ptr, ptr %6, align 8
  %10 = call ptr @_ZNSt3__14pairIPiS1_EC2B8ue170006IRS1_S1_LPv0EEEOT_OT0_(ptr noundef %7, ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %9) #12
  ret ptr %7
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr ptr @_ZNSt3__14pairIPiS1_EC2B8ue170006IRS1_S1_LPv0EEEOT_OT0_(ptr noundef returned %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #0 align 2 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  %7 = load ptr, ptr %4, align 8
  %8 = getelementptr inbounds %"struct.std::__1::pair.36", ptr %7, i32 0, i32 0
  %9 = load ptr, ptr %5, align 8
  %10 = load ptr, ptr %9, align 8
  store ptr %10, ptr %8, align 8
  %11 = getelementptr inbounds %"struct.std::__1::pair.36", ptr %7, i32 0, i32 1
  %12 = load ptr, ptr %6, align 8
  %13 = load ptr, ptr %12, align 8
  store ptr %13, ptr %11, align 8
  ret ptr %7
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr void @_ZNSt3__114__split_bufferIiRNS_9allocatorIiEEE28__construct_at_end_with_sizeINS_13move_iteratorIPiEEEEvT_m(ptr noundef %0, i64 %1, i64 noundef %2) #1 align 2 personality ptr @__gxx_personality_v0 {
  %4 = alloca %"class.std::__1::move_iterator", align 8
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  %7 = alloca %"struct.std::__1::__split_buffer<int, std::__1::allocator<int> &>::_ConstructTransaction", align 8
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = getelementptr inbounds %"class.std::__1::move_iterator", ptr %4, i32 0, i32 0
  %11 = inttoptr i64 %1 to ptr
  store ptr %11, ptr %10, align 8
  store ptr %0, ptr %5, align 8
  store i64 %2, ptr %6, align 8
  %12 = load ptr, ptr %5, align 8
  %13 = getelementptr inbounds %"struct.std::__1::__split_buffer", ptr %12, i32 0, i32 2
  %14 = load i64, ptr %6, align 8
  %15 = call ptr @_ZNSt3__114__split_bufferIiRNS_9allocatorIiEEE21_ConstructTransactionC1B8ue170006EPPim(ptr noundef %7, ptr noundef %13, i64 noundef %14) #12
  br label %16

16:                                               ; preds = %35, %3
  %17 = getelementptr inbounds %"struct.std::__1::__split_buffer<int, std::__1::allocator<int> &>::_ConstructTransaction", ptr %7, i32 0, i32 0
  %18 = load ptr, ptr %17, align 8
  %19 = getelementptr inbounds %"struct.std::__1::__split_buffer<int, std::__1::allocator<int> &>::_ConstructTransaction", ptr %7, i32 0, i32 1
  %20 = load ptr, ptr %19, align 8
  %21 = icmp ne ptr %18, %20
  br i1 %21, label %22, label %41

22:                                               ; preds = %16
  %23 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__114__split_bufferIiRNS_9allocatorIiEEE7__allocB8ue170006Ev(ptr noundef %12) #12
  %24 = getelementptr inbounds %"struct.std::__1::__split_buffer<int, std::__1::allocator<int> &>::_ConstructTransaction", ptr %7, i32 0, i32 0
  %25 = load ptr, ptr %24, align 8
  %26 = call ptr @_ZNSt3__112__to_addressB8ue170006IiEEPT_S2_(ptr noundef %25) #12
  %27 = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZNKSt3__113move_iteratorIPiEdeB8ue170006Ev(ptr noundef %4)
          to label %28 unwind label %36

28:                                               ; preds = %22
  invoke void @_ZNSt3__116allocator_traitsINS_9allocatorIiEEE9constructB8ue170006IiJiEvEEvRS2_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %23, ptr noundef %26, ptr noundef nonnull align 4 dereferenceable(4) %27)
          to label %29 unwind label %36

29:                                               ; preds = %28
  br label %30

30:                                               ; preds = %29
  %31 = getelementptr inbounds %"struct.std::__1::__split_buffer<int, std::__1::allocator<int> &>::_ConstructTransaction", ptr %7, i32 0, i32 0
  %32 = load ptr, ptr %31, align 8
  %33 = getelementptr inbounds i32, ptr %32, i32 1
  store ptr %33, ptr %31, align 8
  %34 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__113move_iteratorIPiEppB8ue170006Ev(ptr noundef %4)
          to label %35 unwind label %36

35:                                               ; preds = %30
  br label %16, !llvm.loop !10

36:                                               ; preds = %30, %28, %22
  %37 = landingpad { ptr, i32 }
          cleanup
  %38 = extractvalue { ptr, i32 } %37, 0
  store ptr %38, ptr %8, align 8
  %39 = extractvalue { ptr, i32 } %37, 1
  store i32 %39, ptr %9, align 4
  %40 = call ptr @_ZNSt3__114__split_bufferIiRNS_9allocatorIiEEE21_ConstructTransactionD1B8ue170006Ev(ptr noundef %7) #12
  br label %43

41:                                               ; preds = %16
  %42 = call ptr @_ZNSt3__114__split_bufferIiRNS_9allocatorIiEEE21_ConstructTransactionD1B8ue170006Ev(ptr noundef %7) #12
  ret void

43:                                               ; preds = %36
  %44 = load ptr, ptr %8, align 8
  %45 = load i32, ptr %9, align 4
  %46 = insertvalue { ptr, i32 } undef, ptr %44, 0
  %47 = insertvalue { ptr, i32 } %46, i32 %45, 1
  resume { ptr, i32 } %47
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden i64 @_ZNSt3__18distanceB8ue170006INS_13move_iteratorIPiEEEENS_15iterator_traitsIT_E15difference_typeES5_S5_(i64 %0, i64 %1) #1 {
  %3 = alloca %"class.std::__1::move_iterator", align 8
  %4 = alloca %"class.std::__1::move_iterator", align 8
  %5 = alloca %"class.std::__1::move_iterator", align 8
  %6 = alloca %"class.std::__1::move_iterator", align 8
  %7 = alloca %"struct.std::__1::random_access_iterator_tag", align 1
  %8 = getelementptr inbounds %"class.std::__1::move_iterator", ptr %3, i32 0, i32 0
  %9 = inttoptr i64 %0 to ptr
  store ptr %9, ptr %8, align 8
  %10 = getelementptr inbounds %"class.std::__1::move_iterator", ptr %4, i32 0, i32 0
  %11 = inttoptr i64 %1 to ptr
  store ptr %11, ptr %10, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %5, ptr align 8 %3, i64 8, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %6, ptr align 8 %4, i64 8, i1 false)
  %12 = getelementptr inbounds %"class.std::__1::move_iterator", ptr %5, i32 0, i32 0
  %13 = load ptr, ptr %12, align 8
  %14 = ptrtoint ptr %13 to i64
  %15 = getelementptr inbounds %"class.std::__1::move_iterator", ptr %6, i32 0, i32 0
  %16 = load ptr, ptr %15, align 8
  %17 = ptrtoint ptr %16 to i64
  %18 = call i64 @_ZNSt3__110__distanceB8ue170006INS_13move_iteratorIPiEEEENS_15iterator_traitsIT_E15difference_typeES5_S5_NS_26random_access_iterator_tagE(i64 %14, i64 %17)
  ret i64 %18
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden ptr @_ZNSt3__114__split_bufferIiRNS_9allocatorIiEEE21_ConstructTransactionC1B8ue170006EPPim(ptr noundef returned %0, ptr noundef %1, i64 noundef %2) unnamed_addr #0 align 2 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store i64 %2, ptr %6, align 8
  %7 = load ptr, ptr %4, align 8
  %8 = load ptr, ptr %5, align 8
  %9 = load i64, ptr %6, align 8
  %10 = call ptr @_ZNSt3__114__split_bufferIiRNS_9allocatorIiEEE21_ConstructTransactionC2B8ue170006EPPim(ptr noundef %7, ptr noundef %8, i64 noundef %9) #12
  ret ptr %7
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef nonnull align 4 dereferenceable(4) ptr @_ZNKSt3__113move_iteratorIPiEdeB8ue170006Ev(ptr noundef %0) #5 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.std::__1::move_iterator", ptr %3, i32 0, i32 0
  %5 = load ptr, ptr %4, align 8
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__113move_iteratorIPiEppB8ue170006Ev(ptr noundef %0) #5 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.std::__1::move_iterator", ptr %3, i32 0, i32 0
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds i32, ptr %5, i32 1
  store ptr %6, ptr %4, align 8
  ret ptr %3
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden ptr @_ZNSt3__114__split_bufferIiRNS_9allocatorIiEEE21_ConstructTransactionD1B8ue170006Ev(ptr noundef returned %0) unnamed_addr #0 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = call ptr @_ZNSt3__114__split_bufferIiRNS_9allocatorIiEEE21_ConstructTransactionD2B8ue170006Ev(ptr noundef %3) #12
  ret ptr %3
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden ptr @_ZNSt3__114__split_bufferIiRNS_9allocatorIiEEE21_ConstructTransactionC2B8ue170006EPPim(ptr noundef returned %0, ptr noundef %1, i64 noundef %2) unnamed_addr #0 align 2 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store i64 %2, ptr %6, align 8
  %7 = load ptr, ptr %4, align 8
  %8 = getelementptr inbounds %"struct.std::__1::__split_buffer<int, std::__1::allocator<int> &>::_ConstructTransaction", ptr %7, i32 0, i32 0
  %9 = load ptr, ptr %5, align 8
  %10 = load ptr, ptr %9, align 8
  store ptr %10, ptr %8, align 8
  %11 = getelementptr inbounds %"struct.std::__1::__split_buffer<int, std::__1::allocator<int> &>::_ConstructTransaction", ptr %7, i32 0, i32 1
  %12 = load ptr, ptr %5, align 8
  %13 = load ptr, ptr %12, align 8
  %14 = load i64, ptr %6, align 8
  %15 = getelementptr inbounds i32, ptr %13, i64 %14
  store ptr %15, ptr %11, align 8
  %16 = getelementptr inbounds %"struct.std::__1::__split_buffer<int, std::__1::allocator<int> &>::_ConstructTransaction", ptr %7, i32 0, i32 2
  %17 = load ptr, ptr %5, align 8
  store ptr %17, ptr %16, align 8
  ret ptr %7
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden ptr @_ZNSt3__114__split_bufferIiRNS_9allocatorIiEEE21_ConstructTransactionD2B8ue170006Ev(ptr noundef returned %0) unnamed_addr #0 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"struct.std::__1::__split_buffer<int, std::__1::allocator<int> &>::_ConstructTransaction", ptr %3, i32 0, i32 0
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %"struct.std::__1::__split_buffer<int, std::__1::allocator<int> &>::_ConstructTransaction", ptr %3, i32 0, i32 2
  %7 = load ptr, ptr %6, align 8
  store ptr %5, ptr %7, align 8
  ret ptr %3
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden i64 @_ZNSt3__110__distanceB8ue170006INS_13move_iteratorIPiEEEENS_15iterator_traitsIT_E15difference_typeES5_S5_NS_26random_access_iterator_tagE(i64 %0, i64 %1) #1 {
  %3 = alloca %"class.std::__1::move_iterator", align 8
  %4 = alloca %"class.std::__1::move_iterator", align 8
  %5 = alloca %"struct.std::__1::random_access_iterator_tag", align 1
  %6 = getelementptr inbounds %"class.std::__1::move_iterator", ptr %3, i32 0, i32 0
  %7 = inttoptr i64 %0 to ptr
  store ptr %7, ptr %6, align 8
  %8 = getelementptr inbounds %"class.std::__1::move_iterator", ptr %4, i32 0, i32 0
  %9 = inttoptr i64 %1 to ptr
  store ptr %9, ptr %8, align 8
  %10 = call i64 @_ZNSt3__1miB8ue170006IPiS1_EEDTmicldtfp_4baseEcldtfp0_4baseEERKNS_13move_iteratorIT_EERKNS3_IT0_EE(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %3)
  ret i64 %10
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden i64 @_ZNSt3__1miB8ue170006IPiS1_EEDTmicldtfp_4baseEcldtfp0_4baseEERKNS_13move_iteratorIT_EERKNS3_IT0_EE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #1 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = call ptr @_ZNKSt3__113move_iteratorIPiE4baseB8ue170006Ev(ptr noundef %5)
  %7 = load ptr, ptr %4, align 8
  %8 = call ptr @_ZNKSt3__113move_iteratorIPiE4baseB8ue170006Ev(ptr noundef %7)
  %9 = ptrtoint ptr %6 to i64
  %10 = ptrtoint ptr %8 to i64
  %11 = sub i64 %9, %10
  %12 = sdiv exact i64 %11, 4
  ret i64 %12
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden ptr @_ZNKSt3__113move_iteratorIPiE4baseB8ue170006Ev(ptr noundef %0) #5 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.std::__1::move_iterator", ptr %3, i32 0, i32 0
  %5 = load ptr, ptr %4, align 8
  ret ptr %5
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden ptr @_ZNSt3__113move_iteratorIPiEC2B8ue170006ES1_(ptr noundef returned %0, ptr noundef %1) unnamed_addr #0 align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = getelementptr inbounds %"class.std::__1::move_iterator", ptr %5, i32 0, i32 0
  %7 = load ptr, ptr %4, align 8
  store ptr %7, ptr %6, align 8
  ret ptr %5
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden ptr @_ZNSt3__142__uninitialized_allocator_move_if_noexceptB8ue170006INS_9allocatorIiEEPiS3_ivEET1_RT_T0_S7_S4_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #1 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  store ptr %2, ptr %7, align 8
  store ptr %3, ptr %8, align 8
  %9 = load ptr, ptr %6, align 8
  %10 = load ptr, ptr %7, align 8
  %11 = load ptr, ptr %8, align 8
  %12 = call ptr @_ZNSt3__14moveB8ue170006IPiS1_EET0_T_S3_S2_(ptr noundef %9, ptr noundef %10, ptr noundef %11)
  ret ptr %12
}

; Function Attrs: mustprogress noinline noreturn optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNKSt3__16vectorIiNS_9allocatorIiEEE20__throw_out_of_rangeB8ue170006Ev(ptr noundef %0) #8 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  call void @_ZNSt3__120__throw_out_of_rangeB8ue170006EPKc(ptr noundef @.str.2) #13
  unreachable
}

; Function Attrs: mustprogress noinline noreturn optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNSt3__120__throw_out_of_rangeB8ue170006EPKc(ptr noundef %0) #8 personality ptr @__gxx_personality_v0 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
  %5 = call ptr @__cxa_allocate_exception(i64 16) #12
  %6 = load ptr, ptr %2, align 8
  %7 = invoke ptr @_ZNSt12out_of_rangeC1B8ue170006EPKc(ptr noundef %5, ptr noundef %6)
          to label %8 unwind label %9

8:                                                ; preds = %1
  call void @__cxa_throw(ptr %5, ptr @_ZTISt12out_of_range, ptr @_ZNSt12out_of_rangeD1Ev) #13
  unreachable

9:                                                ; preds = %1
  %10 = landingpad { ptr, i32 }
          cleanup
  %11 = extractvalue { ptr, i32 } %10, 0
  store ptr %11, ptr %3, align 8
  %12 = extractvalue { ptr, i32 } %10, 1
  store i32 %12, ptr %4, align 4
  call void @__cxa_free_exception(ptr %5) #12
  br label %13

13:                                               ; preds = %9
  %14 = load ptr, ptr %3, align 8
  %15 = load i32, ptr %4, align 4
  %16 = insertvalue { ptr, i32 } undef, ptr %14, 0
  %17 = insertvalue { ptr, i32 } %16, i32 %15, 1
  resume { ptr, i32 } %17
}

; Function Attrs: noinline optnone ssp uwtable(sync)
define linkonce_odr hidden ptr @_ZNSt12out_of_rangeC1B8ue170006EPKc(ptr noundef returned %0, ptr noundef %1) unnamed_addr #3 align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = load ptr, ptr %4, align 8
  %7 = call ptr @_ZNSt12out_of_rangeC2B8ue170006EPKc(ptr noundef %5, ptr noundef %6)
  ret ptr %5
}

; Function Attrs: nounwind
declare ptr @_ZNSt12out_of_rangeD1Ev(ptr noundef returned) unnamed_addr #4

; Function Attrs: noinline optnone ssp uwtable(sync)
define linkonce_odr hidden ptr @_ZNSt12out_of_rangeC2B8ue170006EPKc(ptr noundef returned %0, ptr noundef %1) unnamed_addr #3 align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = load ptr, ptr %4, align 8
  %7 = call ptr @_ZNSt11logic_errorC2EPKc(ptr noundef %5, ptr noundef %6)
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVSt12out_of_range, i32 0, inrange i32 0, i32 2), ptr %5, align 8
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden i64 @_ZNSt3__1miB8ue170006IPKiS2_EEDTmicldtfp_4baseEcldtfp0_4baseEERKNS_11__wrap_iterIT_EERKNS4_IT0_EE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #5 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = call ptr @_ZNKSt3__111__wrap_iterIPKiE4baseB8ue170006Ev(ptr noundef %5) #12
  %7 = load ptr, ptr %4, align 8
  %8 = call ptr @_ZNKSt3__111__wrap_iterIPKiE4baseB8ue170006Ev(ptr noundef %7) #12
  %9 = ptrtoint ptr %6 to i64
  %10 = ptrtoint ptr %8 to i64
  %11 = sub i64 %9, %10
  %12 = sdiv exact i64 %11, 4
  ret i64 %12
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden i64 @_ZNKSt3__16vectorIiNS_9allocatorIiEEE6cbeginB8ue170006Ev(ptr noundef %0) #5 align 2 {
  %2 = alloca %"class.std::__1::__wrap_iter", align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  %4 = load ptr, ptr %3, align 8
  %5 = call i64 @_ZNKSt3__16vectorIiNS_9allocatorIiEEE5beginB8ue170006Ev(ptr noundef %4) #12
  %6 = getelementptr inbounds %"class.std::__1::__wrap_iter", ptr %2, i32 0, i32 0
  %7 = inttoptr i64 %5 to ptr
  store ptr %7, ptr %6, align 8
  %8 = getelementptr inbounds %"class.std::__1::__wrap_iter", ptr %2, i32 0, i32 0
  %9 = load ptr, ptr %8, align 8
  %10 = ptrtoint ptr %9 to i64
  ret i64 %10
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNSt3__16vectorIiNS_9allocatorIiEEE17__destruct_at_endB8ue170006EPi(ptr noundef %0, ptr noundef %1) #5 align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %6 = load ptr, ptr %3, align 8
  %7 = call i64 @_ZNKSt3__16vectorIiNS_9allocatorIiEEE4sizeB8ue170006Ev(ptr noundef %6) #12
  store i64 %7, ptr %5, align 8
  %8 = load ptr, ptr %4, align 8
  call void @_ZNSt3__16vectorIiNS_9allocatorIiEEE22__base_destruct_at_endB8ue170006EPi(ptr noundef %6, ptr noundef %8) #12
  %9 = load i64, ptr %5, align 8
  call void @_ZNKSt3__16vectorIiNS_9allocatorIiEEE17__annotate_shrinkB8ue170006Em(ptr noundef %6, i64 noundef %9) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden i64 @_ZNKSt3__16vectorIiNS_9allocatorIiEEE5beginB8ue170006Ev(ptr noundef %0) #5 align 2 {
  %2 = alloca %"class.std::__1::__wrap_iter", align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %"class.std::__1::vector", ptr %4, i32 0, i32 0
  %6 = load ptr, ptr %5, align 8
  %7 = call i64 @_ZNKSt3__16vectorIiNS_9allocatorIiEEE11__make_iterB8ue170006EPKi(ptr noundef %4, ptr noundef %6) #12
  %8 = getelementptr inbounds %"class.std::__1::__wrap_iter", ptr %2, i32 0, i32 0
  %9 = inttoptr i64 %7 to ptr
  store ptr %9, ptr %8, align 8
  %10 = getelementptr inbounds %"class.std::__1::__wrap_iter", ptr %2, i32 0, i32 0
  %11 = load ptr, ptr %10, align 8
  %12 = ptrtoint ptr %11 to i64
  ret i64 %12
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden i64 @_ZNKSt3__16vectorIiNS_9allocatorIiEEE11__make_iterB8ue170006EPKi(ptr noundef %0, ptr noundef %1) #5 align 2 {
  %3 = alloca %"class.std::__1::__wrap_iter", align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  %6 = load ptr, ptr %4, align 8
  %7 = load ptr, ptr %5, align 8
  %8 = call ptr @_ZNSt3__111__wrap_iterIPKiEC1B8ue170006ES2_(ptr noundef %3, ptr noundef %7) #12
  %9 = getelementptr inbounds %"class.std::__1::__wrap_iter", ptr %3, i32 0, i32 0
  %10 = load ptr, ptr %9, align 8
  %11 = ptrtoint ptr %10 to i64
  ret i64 %11
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden ptr @_ZNSt3__111__wrap_iterIPKiEC1B8ue170006ES2_(ptr noundef returned %0, ptr noundef %1) unnamed_addr #0 align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = load ptr, ptr %4, align 8
  %7 = call ptr @_ZNSt3__111__wrap_iterIPKiEC2B8ue170006ES2_(ptr noundef %5, ptr noundef %6) #12
  ret ptr %5
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden ptr @_ZNSt3__111__wrap_iterIPKiEC2B8ue170006ES2_(ptr noundef returned %0, ptr noundef %1) unnamed_addr #0 align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = getelementptr inbounds %"class.std::__1::__wrap_iter", ptr %5, i32 0, i32 0
  %7 = load ptr, ptr %4, align 8
  store ptr %7, ptr %6, align 8
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNSt3__16vectorIiNS_9allocatorIiEEE22__base_destruct_at_endB8ue170006EPi(ptr noundef %0, ptr noundef %1) #5 align 2 personality ptr @__gxx_personality_v0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %6 = load ptr, ptr %3, align 8
  %7 = getelementptr inbounds %"class.std::__1::vector", ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 8
  store ptr %8, ptr %5, align 8
  br label %9

9:                                                ; preds = %18, %2
  %10 = load ptr, ptr %4, align 8
  %11 = load ptr, ptr %5, align 8
  %12 = icmp ne ptr %10, %11
  br i1 %12, label %13, label %19

13:                                               ; preds = %9
  %14 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__16vectorIiNS_9allocatorIiEEE7__allocB8ue170006Ev(ptr noundef %6) #12
  %15 = load ptr, ptr %5, align 8
  %16 = getelementptr inbounds i32, ptr %15, i32 -1
  store ptr %16, ptr %5, align 8
  %17 = call ptr @_ZNSt3__112__to_addressB8ue170006IiEEPT_S2_(ptr noundef %16) #12
  invoke void @_ZNSt3__116allocator_traitsINS_9allocatorIiEEE7destroyB8ue170006IivEEvRS2_PT_(ptr noundef nonnull align 1 dereferenceable(1) %14, ptr noundef %17)
          to label %18 unwind label %22

18:                                               ; preds = %13
  br label %9, !llvm.loop !11

19:                                               ; preds = %9
  %20 = load ptr, ptr %4, align 8
  %21 = getelementptr inbounds %"class.std::__1::vector", ptr %6, i32 0, i32 1
  store ptr %20, ptr %21, align 8
  ret void

22:                                               ; preds = %13
  %23 = landingpad { ptr, i32 }
          catch ptr null
  %24 = extractvalue { ptr, i32 } %23, 0
  call void @__clang_call_terminate(ptr %24) #14
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNKSt3__16vectorIiNS_9allocatorIiEEE17__annotate_shrinkB8ue170006Em(ptr noundef %0, i64 noundef %1) #5 align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  store ptr %0, ptr %3, align 8
  store i64 %1, ptr %4, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = call ptr @_ZNKSt3__16vectorIiNS_9allocatorIiEEE4dataB8ue170006Ev(ptr noundef %5) #12
  %7 = call ptr @_ZNKSt3__16vectorIiNS_9allocatorIiEEE4dataB8ue170006Ev(ptr noundef %5) #12
  %8 = call i64 @_ZNKSt3__16vectorIiNS_9allocatorIiEEE8capacityB8ue170006Ev(ptr noundef %5) #12
  %9 = getelementptr inbounds i32, ptr %7, i64 %8
  %10 = call ptr @_ZNKSt3__16vectorIiNS_9allocatorIiEEE4dataB8ue170006Ev(ptr noundef %5) #12
  %11 = load i64, ptr %4, align 8
  %12 = getelementptr inbounds i32, ptr %10, i64 %11
  %13 = call ptr @_ZNKSt3__16vectorIiNS_9allocatorIiEEE4dataB8ue170006Ev(ptr noundef %5) #12
  %14 = call i64 @_ZNKSt3__16vectorIiNS_9allocatorIiEEE4sizeB8ue170006Ev(ptr noundef %5) #12
  %15 = getelementptr inbounds i32, ptr %13, i64 %14
  call void @_ZNKSt3__16vectorIiNS_9allocatorIiEEE31__annotate_contiguous_containerB8ue170006EPKvS5_S5_S5_(ptr noundef %5, ptr noundef %6, ptr noundef %9, ptr noundef %12, ptr noundef %15) #12
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden ptr @_ZNSt3__16vectorIfNS_9allocatorIfEEEC2B8ue170006Ev(ptr noundef returned %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca %"struct.std::__1::__default_init_tag", align 1
  store ptr %0, ptr %2, align 8
  %5 = load ptr, ptr %2, align 8
  %6 = getelementptr inbounds %"class.std::__1::vector.9", ptr %5, i32 0, i32 0
  store ptr null, ptr %6, align 8
  %7 = getelementptr inbounds %"class.std::__1::vector.9", ptr %5, i32 0, i32 1
  store ptr null, ptr %7, align 8
  %8 = getelementptr inbounds %"class.std::__1::vector.9", ptr %5, i32 0, i32 2
  store ptr null, ptr %3, align 8
  %9 = invoke ptr @_ZNSt3__117__compressed_pairIPfNS_9allocatorIfEEEC1B8ue170006IDnNS_18__default_init_tagEEEOT_OT0_(ptr noundef %8, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %10 unwind label %11

10:                                               ; preds = %1
  ret ptr %5

11:                                               ; preds = %1
  %12 = landingpad { ptr, i32 }
          catch ptr null
  %13 = extractvalue { ptr, i32 } %12, 0
  call void @__clang_call_terminate(ptr %13) #14
  unreachable
}

; Function Attrs: noinline optnone ssp uwtable(sync)
define linkonce_odr ptr @_ZNSt3__117__compressed_pairIPfNS_9allocatorIfEEEC1B8ue170006IDnNS_18__default_init_tagEEEOT_OT0_(ptr noundef returned %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #3 align 2 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  %7 = load ptr, ptr %4, align 8
  %8 = load ptr, ptr %5, align 8
  %9 = load ptr, ptr %6, align 8
  %10 = call ptr @_ZNSt3__117__compressed_pairIPfNS_9allocatorIfEEEC2B8ue170006IDnNS_18__default_init_tagEEEOT_OT0_(ptr noundef %7, ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 1 dereferenceable(1) %9)
  ret ptr %7
}

; Function Attrs: noinline optnone ssp uwtable(sync)
define linkonce_odr ptr @_ZNSt3__117__compressed_pairIPfNS_9allocatorIfEEEC2B8ue170006IDnNS_18__default_init_tagEEEOT_OT0_(ptr noundef returned %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #3 align 2 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca %"struct.std::__1::__default_init_tag", align 1
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  %8 = load ptr, ptr %4, align 8
  %9 = load ptr, ptr %5, align 8
  %10 = call ptr @_ZNSt3__122__compressed_pair_elemIPfLi0ELb0EEC2B8ue170006IDnvEEOT_(ptr noundef %8, ptr noundef nonnull align 8 dereferenceable(8) %9)
  %11 = load ptr, ptr %6, align 8
  %12 = call ptr @_ZNSt3__122__compressed_pair_elemINS_9allocatorIfEELi1ELb1EEC2B8ue170006ENS_18__default_init_tagE(ptr noundef %8)
  ret ptr %8
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr ptr @_ZNSt3__122__compressed_pair_elemIPfLi0ELb0EEC2B8ue170006IDnvEEOT_(ptr noundef returned %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = getelementptr inbounds %"struct.std::__1::__compressed_pair_elem.11", ptr %5, i32 0, i32 0
  %7 = load ptr, ptr %4, align 8
  store ptr null, ptr %6, align 8
  ret ptr %5
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden ptr @_ZNSt3__122__compressed_pair_elemINS_9allocatorIfEELi1ELb1EEC2B8ue170006ENS_18__default_init_tagE(ptr noundef returned %0) unnamed_addr #0 align 2 {
  %2 = alloca %"struct.std::__1::__default_init_tag", align 1
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  %4 = load ptr, ptr %3, align 8
  %5 = call ptr @_ZNSt3__19allocatorIfEC2B8ue170006Ev(ptr noundef %4) #12
  ret ptr %4
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden ptr @_ZNSt3__19allocatorIfEC2B8ue170006Ev(ptr noundef returned %0) unnamed_addr #0 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = call ptr @_ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIfEEEC2B8ue170006Ev(ptr noundef %3) #12
  ret ptr %3
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden ptr @_ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIfEEEC2B8ue170006Ev(ptr noundef returned %0) unnamed_addr #0 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__16vectorIfNS_9allocatorIfEEE9__end_capB8ue170006Ev(ptr noundef %0) #5 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.std::__1::vector.9", ptr %3, i32 0, i32 2
  %5 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__117__compressed_pairIPfNS_9allocatorIfEEE5firstB8ue170006Ev(ptr noundef %4) #12
  ret ptr %5
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr void @_ZNSt3__16vectorIfNS_9allocatorIfEEE22__construct_one_at_endB8ue170006IJRKfEEEvDpOT_(ptr noundef %0, ptr noundef nonnull align 4 dereferenceable(4) %1) #1 align 2 personality ptr @__gxx_personality_v0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca %"struct.std::__1::vector<float>::_ConstructTransaction", align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %8 = load ptr, ptr %3, align 8
  %9 = call ptr @_ZNSt3__16vectorIfNS_9allocatorIfEEE21_ConstructTransactionC1B8ue170006ERS3_m(ptr noundef %5, ptr noundef nonnull align 8 dereferenceable(24) %8, i64 noundef 1)
  %10 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__16vectorIfNS_9allocatorIfEEE7__allocB8ue170006Ev(ptr noundef %8) #12
  %11 = getelementptr inbounds %"struct.std::__1::vector<float>::_ConstructTransaction", ptr %5, i32 0, i32 1
  %12 = load ptr, ptr %11, align 8
  %13 = call ptr @_ZNSt3__112__to_addressB8ue170006IfEEPT_S2_(ptr noundef %12) #12
  %14 = load ptr, ptr %4, align 8
  invoke void @_ZNSt3__116allocator_traitsINS_9allocatorIfEEE9constructB8ue170006IfJRKfEvEEvRS2_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %10, ptr noundef %13, ptr noundef nonnull align 4 dereferenceable(4) %14)
          to label %15 unwind label %20

15:                                               ; preds = %2
  %16 = getelementptr inbounds %"struct.std::__1::vector<float>::_ConstructTransaction", ptr %5, i32 0, i32 1
  %17 = load ptr, ptr %16, align 8
  %18 = getelementptr inbounds float, ptr %17, i32 1
  store ptr %18, ptr %16, align 8
  %19 = call ptr @_ZNSt3__16vectorIfNS_9allocatorIfEEE21_ConstructTransactionD1B8ue170006Ev(ptr noundef %5) #12
  ret void

20:                                               ; preds = %2
  %21 = landingpad { ptr, i32 }
          cleanup
  %22 = extractvalue { ptr, i32 } %21, 0
  store ptr %22, ptr %6, align 8
  %23 = extractvalue { ptr, i32 } %21, 1
  store i32 %23, ptr %7, align 4
  %24 = call ptr @_ZNSt3__16vectorIfNS_9allocatorIfEEE21_ConstructTransactionD1B8ue170006Ev(ptr noundef %5) #12
  br label %25

25:                                               ; preds = %20
  %26 = load ptr, ptr %6, align 8
  %27 = load i32, ptr %7, align 4
  %28 = insertvalue { ptr, i32 } undef, ptr %26, 0
  %29 = insertvalue { ptr, i32 } %28, i32 %27, 1
  resume { ptr, i32 } %29
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr void @_ZNSt3__16vectorIfNS_9allocatorIfEEE21__push_back_slow_pathIRKfEEvOT_(ptr noundef %0, ptr noundef nonnull align 4 dereferenceable(4) %1) #1 align 2 personality ptr @__gxx_personality_v0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca %"struct.std::__1::__split_buffer.38", align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %9 = load ptr, ptr %3, align 8
  %10 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__16vectorIfNS_9allocatorIfEEE7__allocB8ue170006Ev(ptr noundef %9) #12
  store ptr %10, ptr %5, align 8
  %11 = call i64 @_ZNKSt3__16vectorIfNS_9allocatorIfEEE4sizeB8ue170006Ev(ptr noundef %9) #12
  %12 = add i64 %11, 1
  %13 = call i64 @_ZNKSt3__16vectorIfNS_9allocatorIfEEE11__recommendB8ue170006Em(ptr noundef %9, i64 noundef %12)
  %14 = call i64 @_ZNKSt3__16vectorIfNS_9allocatorIfEEE4sizeB8ue170006Ev(ptr noundef %9) #12
  %15 = load ptr, ptr %5, align 8
  %16 = call ptr @_ZNSt3__114__split_bufferIfRNS_9allocatorIfEEEC1EmmS3_(ptr noundef %6, i64 noundef %13, i64 noundef %14, ptr noundef nonnull align 1 dereferenceable(1) %15)
  %17 = load ptr, ptr %5, align 8
  %18 = getelementptr inbounds %"struct.std::__1::__split_buffer.38", ptr %6, i32 0, i32 2
  %19 = load ptr, ptr %18, align 8
  %20 = call ptr @_ZNSt3__112__to_addressB8ue170006IfEEPT_S2_(ptr noundef %19) #12
  %21 = load ptr, ptr %4, align 8
  invoke void @_ZNSt3__116allocator_traitsINS_9allocatorIfEEE9constructB8ue170006IfJRKfEvEEvRS2_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %17, ptr noundef %20, ptr noundef nonnull align 4 dereferenceable(4) %21)
          to label %22 unwind label %28

22:                                               ; preds = %2
  %23 = getelementptr inbounds %"struct.std::__1::__split_buffer.38", ptr %6, i32 0, i32 2
  %24 = load ptr, ptr %23, align 8
  %25 = getelementptr inbounds float, ptr %24, i32 1
  store ptr %25, ptr %23, align 8
  invoke void @_ZNSt3__16vectorIfNS_9allocatorIfEEE26__swap_out_circular_bufferERNS_14__split_bufferIfRS2_EE(ptr noundef %9, ptr noundef nonnull align 8 dereferenceable(40) %6)
          to label %26 unwind label %28

26:                                               ; preds = %22
  %27 = call ptr @_ZNSt3__114__split_bufferIfRNS_9allocatorIfEEED1Ev(ptr noundef %6) #12
  ret void

28:                                               ; preds = %22, %2
  %29 = landingpad { ptr, i32 }
          cleanup
  %30 = extractvalue { ptr, i32 } %29, 0
  store ptr %30, ptr %7, align 8
  %31 = extractvalue { ptr, i32 } %29, 1
  store i32 %31, ptr %8, align 4
  %32 = call ptr @_ZNSt3__114__split_bufferIfRNS_9allocatorIfEEED1Ev(ptr noundef %6) #12
  br label %33

33:                                               ; preds = %28
  %34 = load ptr, ptr %7, align 8
  %35 = load i32, ptr %8, align 4
  %36 = insertvalue { ptr, i32 } undef, ptr %34, 0
  %37 = insertvalue { ptr, i32 } %36, i32 %35, 1
  resume { ptr, i32 } %37
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__117__compressed_pairIPfNS_9allocatorIfEEE5firstB8ue170006Ev(ptr noundef %0) #5 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__122__compressed_pair_elemIPfLi0ELb0EE5__getB8ue170006Ev(ptr noundef %3) #12
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__122__compressed_pair_elemIPfLi0ELb0EE5__getB8ue170006Ev(ptr noundef %0) #5 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"struct.std::__1::__compressed_pair_elem.11", ptr %3, i32 0, i32 0
  ret ptr %4
}

; Function Attrs: noinline optnone ssp uwtable(sync)
define linkonce_odr hidden ptr @_ZNSt3__16vectorIfNS_9allocatorIfEEE21_ConstructTransactionC1B8ue170006ERS3_m(ptr noundef returned %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %2) unnamed_addr #3 align 2 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store i64 %2, ptr %6, align 8
  %7 = load ptr, ptr %4, align 8
  %8 = load ptr, ptr %5, align 8
  %9 = load i64, ptr %6, align 8
  %10 = call ptr @_ZNSt3__16vectorIfNS_9allocatorIfEEE21_ConstructTransactionC2B8ue170006ERS3_m(ptr noundef %7, ptr noundef nonnull align 8 dereferenceable(24) %8, i64 noundef %9)
  ret ptr %7
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr void @_ZNSt3__116allocator_traitsINS_9allocatorIfEEE9constructB8ue170006IfJRKfEvEEvRS2_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) #1 align 2 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  %7 = load ptr, ptr %4, align 8
  %8 = load ptr, ptr %5, align 8
  %9 = load ptr, ptr %6, align 8
  call void @_ZNSt3__19allocatorIfE9constructB8ue170006IfJRKfEEEvPT_DpOT0_(ptr noundef %7, ptr noundef %8, ptr noundef nonnull align 4 dereferenceable(4) %9)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__16vectorIfNS_9allocatorIfEEE7__allocB8ue170006Ev(ptr noundef %0) #5 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.std::__1::vector.9", ptr %3, i32 0, i32 2
  %5 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__117__compressed_pairIPfNS_9allocatorIfEEE6secondB8ue170006Ev(ptr noundef %4) #12
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden ptr @_ZNSt3__112__to_addressB8ue170006IfEEPT_S2_(ptr noundef %0) #5 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  ret ptr %3
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden ptr @_ZNSt3__16vectorIfNS_9allocatorIfEEE21_ConstructTransactionD1B8ue170006Ev(ptr noundef returned %0) unnamed_addr #0 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = call ptr @_ZNSt3__16vectorIfNS_9allocatorIfEEE21_ConstructTransactionD2B8ue170006Ev(ptr noundef %3) #12
  ret ptr %3
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden ptr @_ZNSt3__16vectorIfNS_9allocatorIfEEE21_ConstructTransactionC2B8ue170006ERS3_m(ptr noundef returned %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %2) unnamed_addr #0 align 2 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store i64 %2, ptr %6, align 8
  %7 = load ptr, ptr %4, align 8
  %8 = getelementptr inbounds %"struct.std::__1::vector<float>::_ConstructTransaction", ptr %7, i32 0, i32 0
  %9 = load ptr, ptr %5, align 8
  store ptr %9, ptr %8, align 8
  %10 = getelementptr inbounds %"struct.std::__1::vector<float>::_ConstructTransaction", ptr %7, i32 0, i32 1
  %11 = load ptr, ptr %5, align 8
  %12 = getelementptr inbounds %"class.std::__1::vector.9", ptr %11, i32 0, i32 1
  %13 = load ptr, ptr %12, align 8
  store ptr %13, ptr %10, align 8
  %14 = getelementptr inbounds %"struct.std::__1::vector<float>::_ConstructTransaction", ptr %7, i32 0, i32 2
  %15 = load ptr, ptr %5, align 8
  %16 = getelementptr inbounds %"class.std::__1::vector.9", ptr %15, i32 0, i32 1
  %17 = load ptr, ptr %16, align 8
  %18 = load i64, ptr %6, align 8
  %19 = getelementptr inbounds float, ptr %17, i64 %18
  store ptr %19, ptr %14, align 8
  ret ptr %7
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr void @_ZNSt3__19allocatorIfE9constructB8ue170006IfJRKfEEEvPT_DpOT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) #5 align 2 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  %7 = load ptr, ptr %4, align 8
  %8 = load ptr, ptr %5, align 8
  %9 = load ptr, ptr %6, align 8
  %10 = load float, ptr %9, align 4
  store float %10, ptr %8, align 4
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__117__compressed_pairIPfNS_9allocatorIfEEE6secondB8ue170006Ev(ptr noundef %0) #5 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__122__compressed_pair_elemINS_9allocatorIfEELi1ELb1EE5__getB8ue170006Ev(ptr noundef %3) #12
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__122__compressed_pair_elemINS_9allocatorIfEELi1ELb1EE5__getB8ue170006Ev(ptr noundef %0) #5 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  ret ptr %3
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden ptr @_ZNSt3__16vectorIfNS_9allocatorIfEEE21_ConstructTransactionD2B8ue170006Ev(ptr noundef returned %0) unnamed_addr #0 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"struct.std::__1::vector<float>::_ConstructTransaction", ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %"struct.std::__1::vector<float>::_ConstructTransaction", ptr %3, i32 0, i32 0
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %"class.std::__1::vector.9", ptr %7, i32 0, i32 1
  store ptr %5, ptr %8, align 8
  ret ptr %3
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden i64 @_ZNKSt3__16vectorIfNS_9allocatorIfEEE11__recommendB8ue170006Em(ptr noundef %0, i64 noundef %1) #1 align 2 {
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
  store i64 %1, ptr %5, align 8
  %9 = load ptr, ptr %4, align 8
  %10 = call i64 @_ZNKSt3__16vectorIfNS_9allocatorIfEEE8max_sizeEv(ptr noundef %9) #12
  store i64 %10, ptr %6, align 8
  %11 = load i64, ptr %5, align 8
  %12 = load i64, ptr %6, align 8
  %13 = icmp ugt i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  call void @_ZNKSt3__16vectorIfNS_9allocatorIfEEE20__throw_length_errorB8ue170006Ev(ptr noundef %9) #13
  unreachable

15:                                               ; preds = %2
  %16 = call i64 @_ZNKSt3__16vectorIfNS_9allocatorIfEEE8capacityB8ue170006Ev(ptr noundef %9) #12
  store i64 %16, ptr %7, align 8
  %17 = load i64, ptr %7, align 8
  %18 = load i64, ptr %6, align 8
  %19 = udiv i64 %18, 2
  %20 = icmp uge i64 %17, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %15
  %22 = load i64, ptr %6, align 8
  store i64 %22, ptr %3, align 8
  br label %28

23:                                               ; preds = %15
  %24 = load i64, ptr %7, align 8
  %25 = mul i64 2, %24
  store i64 %25, ptr %8, align 8
  %26 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__13maxB8ue170006ImEERKT_S3_S3_(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %5)
  %27 = load i64, ptr %26, align 8
  store i64 %27, ptr %3, align 8
  br label %28

28:                                               ; preds = %23, %21
  %29 = load i64, ptr %3, align 8
  ret i64 %29
}

; Function Attrs: noinline optnone ssp uwtable(sync)
define linkonce_odr hidden ptr @_ZNSt3__114__split_bufferIfRNS_9allocatorIfEEEC1EmmS3_(ptr noundef returned %0, i64 noundef %1, i64 noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) unnamed_addr #3 align 2 {
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
  store i64 %1, ptr %6, align 8
  store i64 %2, ptr %7, align 8
  store ptr %3, ptr %8, align 8
  %9 = load ptr, ptr %5, align 8
  %10 = load i64, ptr %6, align 8
  %11 = load i64, ptr %7, align 8
  %12 = load ptr, ptr %8, align 8
  %13 = call ptr @_ZNSt3__114__split_bufferIfRNS_9allocatorIfEEEC2EmmS3_(ptr noundef %9, i64 noundef %10, i64 noundef %11, ptr noundef nonnull align 1 dereferenceable(1) %12)
  ret ptr %9
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNSt3__16vectorIfNS_9allocatorIfEEE26__swap_out_circular_bufferERNS_14__split_bufferIfRS2_EE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(40) %1) #1 align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca %"class.std::__1::reverse_iterator.42", align 8
  %6 = alloca %"class.std::__1::reverse_iterator.42", align 8
  %7 = alloca %"class.std::__1::reverse_iterator.42", align 8
  %8 = alloca %"class.std::__1::reverse_iterator.42", align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %9 = load ptr, ptr %3, align 8
  call void @_ZNKSt3__16vectorIfNS_9allocatorIfEEE17__annotate_deleteB8ue170006Ev(ptr noundef %9) #12
  %10 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__16vectorIfNS_9allocatorIfEEE7__allocB8ue170006Ev(ptr noundef %9) #12
  %11 = getelementptr inbounds %"class.std::__1::vector.9", ptr %9, i32 0, i32 1
  %12 = load ptr, ptr %11, align 8
  %13 = call ptr @_ZNSt3__116reverse_iteratorIPfEC1B8ue170006ES1_(ptr noundef %6, ptr noundef %12)
  %14 = getelementptr inbounds %"class.std::__1::vector.9", ptr %9, i32 0, i32 0
  %15 = load ptr, ptr %14, align 8
  %16 = call ptr @_ZNSt3__116reverse_iteratorIPfEC1B8ue170006ES1_(ptr noundef %7, ptr noundef %15)
  %17 = load ptr, ptr %4, align 8
  %18 = getelementptr inbounds %"struct.std::__1::__split_buffer.38", ptr %17, i32 0, i32 1
  %19 = load ptr, ptr %18, align 8
  %20 = call ptr @_ZNSt3__116reverse_iteratorIPfEC1B8ue170006ES1_(ptr noundef %8, ptr noundef %19)
  %21 = load [2 x i64], ptr %6, align 8
  %22 = load [2 x i64], ptr %7, align 8
  %23 = load [2 x i64], ptr %8, align 8
  %24 = call [2 x i64] @_ZNSt3__142__uninitialized_allocator_move_if_noexceptB8ue170006INS_9allocatorIfEENS_16reverse_iteratorIPfEES5_fvEET1_RT_T0_S9_S6_(ptr noundef nonnull align 1 dereferenceable(1) %10, [2 x i64] %21, [2 x i64] %22, [2 x i64] %23)
  store [2 x i64] %24, ptr %5, align 8
  %25 = call ptr @_ZNKSt3__116reverse_iteratorIPfE4baseB8ue170006Ev(ptr noundef %5)
  %26 = load ptr, ptr %4, align 8
  %27 = getelementptr inbounds %"struct.std::__1::__split_buffer.38", ptr %26, i32 0, i32 1
  store ptr %25, ptr %27, align 8
  %28 = getelementptr inbounds %"class.std::__1::vector.9", ptr %9, i32 0, i32 0
  %29 = load ptr, ptr %4, align 8
  %30 = getelementptr inbounds %"struct.std::__1::__split_buffer.38", ptr %29, i32 0, i32 1
  call void @_ZNSt3__14swapB8ue170006IPfEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS3_EE5valueEvE4typeERS3_S6_(ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef nonnull align 8 dereferenceable(8) %30) #12
  %31 = getelementptr inbounds %"class.std::__1::vector.9", ptr %9, i32 0, i32 1
  %32 = load ptr, ptr %4, align 8
  %33 = getelementptr inbounds %"struct.std::__1::__split_buffer.38", ptr %32, i32 0, i32 2
  call void @_ZNSt3__14swapB8ue170006IPfEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS3_EE5valueEvE4typeERS3_S6_(ptr noundef nonnull align 8 dereferenceable(8) %31, ptr noundef nonnull align 8 dereferenceable(8) %33) #12
  %34 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__16vectorIfNS_9allocatorIfEEE9__end_capB8ue170006Ev(ptr noundef %9) #12
  %35 = load ptr, ptr %4, align 8
  %36 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__114__split_bufferIfRNS_9allocatorIfEEE9__end_capB8ue170006Ev(ptr noundef %35) #12
  call void @_ZNSt3__14swapB8ue170006IPfEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS3_EE5valueEvE4typeERS3_S6_(ptr noundef nonnull align 8 dereferenceable(8) %34, ptr noundef nonnull align 8 dereferenceable(8) %36) #12
  %37 = load ptr, ptr %4, align 8
  %38 = getelementptr inbounds %"struct.std::__1::__split_buffer.38", ptr %37, i32 0, i32 1
  %39 = load ptr, ptr %38, align 8
  %40 = load ptr, ptr %4, align 8
  %41 = getelementptr inbounds %"struct.std::__1::__split_buffer.38", ptr %40, i32 0, i32 0
  store ptr %39, ptr %41, align 8
  %42 = call i64 @_ZNKSt3__16vectorIfNS_9allocatorIfEEE4sizeB8ue170006Ev(ptr noundef %9) #12
  call void @_ZNKSt3__16vectorIfNS_9allocatorIfEEE14__annotate_newB8ue170006Em(ptr noundef %9, i64 noundef %42) #12
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden ptr @_ZNSt3__114__split_bufferIfRNS_9allocatorIfEEED1Ev(ptr noundef returned %0) unnamed_addr #0 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = call ptr @_ZNSt3__114__split_bufferIfRNS_9allocatorIfEEED2Ev(ptr noundef %3) #12
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden i64 @_ZNKSt3__16vectorIfNS_9allocatorIfEEE8max_sizeEv(ptr noundef %0) #5 align 2 personality ptr @__gxx_personality_v0 {
  %2 = alloca ptr, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store ptr %0, ptr %2, align 8
  %5 = load ptr, ptr %2, align 8
  %6 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt3__16vectorIfNS_9allocatorIfEEE7__allocB8ue170006Ev(ptr noundef %5) #12
  %7 = call i64 @_ZNSt3__116allocator_traitsINS_9allocatorIfEEE8max_sizeB8ue170006IS2_vEEmRKS2_(ptr noundef nonnull align 1 dereferenceable(1) %6) #12
  store i64 %7, ptr %3, align 8
  %8 = call i64 @_ZNSt3__114numeric_limitsIlE3maxB8ue170006Ev() #12
  store i64 %8, ptr %4, align 8
  %9 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__13minB8ue170006ImEERKT_S3_S3_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %10 unwind label %12

10:                                               ; preds = %1
  %11 = load i64, ptr %9, align 8
  ret i64 %11

12:                                               ; preds = %1
  %13 = landingpad { ptr, i32 }
          catch ptr null
  %14 = extractvalue { ptr, i32 } %13, 0
  call void @__clang_call_terminate(ptr %14) #14
  unreachable
}

; Function Attrs: mustprogress noinline noreturn optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNKSt3__16vectorIfNS_9allocatorIfEEE20__throw_length_errorB8ue170006Ev(ptr noundef %0) #8 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  call void @_ZNSt3__120__throw_length_errorB8ue170006EPKc(ptr noundef @.str.2) #13
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden i64 @_ZNKSt3__16vectorIfNS_9allocatorIfEEE8capacityB8ue170006Ev(ptr noundef %0) #5 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt3__16vectorIfNS_9allocatorIfEEE9__end_capB8ue170006Ev(ptr noundef %3) #12
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %"class.std::__1::vector.9", ptr %3, i32 0, i32 0
  %7 = load ptr, ptr %6, align 8
  %8 = ptrtoint ptr %5 to i64
  %9 = ptrtoint ptr %7 to i64
  %10 = sub i64 %8, %9
  %11 = sdiv exact i64 %10, 4
  ret i64 %11
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr i64 @_ZNSt3__116allocator_traitsINS_9allocatorIfEEE8max_sizeB8ue170006IS2_vEEmRKS2_(ptr noundef nonnull align 1 dereferenceable(1) %0) #5 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = call i64 @_ZNKSt3__19allocatorIfE8max_sizeB8ue170006Ev(ptr noundef %3) #12
  ret i64 %4
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt3__16vectorIfNS_9allocatorIfEEE7__allocB8ue170006Ev(ptr noundef %0) #5 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.std::__1::vector.9", ptr %3, i32 0, i32 2
  %5 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt3__117__compressed_pairIPfNS_9allocatorIfEEE6secondB8ue170006Ev(ptr noundef %4) #12
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden i64 @_ZNKSt3__19allocatorIfE8max_sizeB8ue170006Ev(ptr noundef %0) #5 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  ret i64 4611686018427387903
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt3__117__compressed_pairIPfNS_9allocatorIfEEE6secondB8ue170006Ev(ptr noundef %0) #5 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt3__122__compressed_pair_elemINS_9allocatorIfEELi1ELb1EE5__getB8ue170006Ev(ptr noundef %3) #12
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt3__122__compressed_pair_elemINS_9allocatorIfEELi1ELb1EE5__getB8ue170006Ev(ptr noundef %0) #5 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt3__16vectorIfNS_9allocatorIfEEE9__end_capB8ue170006Ev(ptr noundef %0) #5 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.std::__1::vector.9", ptr %3, i32 0, i32 2
  %5 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt3__117__compressed_pairIPfNS_9allocatorIfEEE5firstB8ue170006Ev(ptr noundef %4) #12
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt3__117__compressed_pairIPfNS_9allocatorIfEEE5firstB8ue170006Ev(ptr noundef %0) #5 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt3__122__compressed_pair_elemIPfLi0ELb0EE5__getB8ue170006Ev(ptr noundef %3) #12
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt3__122__compressed_pair_elemIPfLi0ELb0EE5__getB8ue170006Ev(ptr noundef %0) #5 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"struct.std::__1::__compressed_pair_elem.11", ptr %3, i32 0, i32 0
  ret ptr %4
}

; Function Attrs: noinline optnone ssp uwtable(sync)
define linkonce_odr hidden ptr @_ZNSt3__114__split_bufferIfRNS_9allocatorIfEEEC2EmmS3_(ptr noundef returned %0, i64 noundef %1, i64 noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) unnamed_addr #3 align 2 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca %"struct.std::__1::__allocation_result.41", align 8
  store ptr %0, ptr %6, align 8
  store i64 %1, ptr %7, align 8
  store i64 %2, ptr %8, align 8
  store ptr %3, ptr %9, align 8
  %12 = load ptr, ptr %6, align 8
  store ptr %12, ptr %5, align 8
  %13 = getelementptr inbounds %"struct.std::__1::__split_buffer.38", ptr %12, i32 0, i32 3
  store ptr null, ptr %10, align 8
  %14 = load ptr, ptr %9, align 8
  %15 = call ptr @_ZNSt3__117__compressed_pairIPfRNS_9allocatorIfEEEC1B8ue170006IDnS4_EEOT_OT0_(ptr noundef %13, ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 1 dereferenceable(1) %14)
  %16 = load i64, ptr %7, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %4
  %19 = getelementptr inbounds %"struct.std::__1::__split_buffer.38", ptr %12, i32 0, i32 0
  store ptr null, ptr %19, align 8
  br label %29

20:                                               ; preds = %4
  %21 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__114__split_bufferIfRNS_9allocatorIfEEE7__allocB8ue170006Ev(ptr noundef %12) #12
  %22 = load i64, ptr %7, align 8
  %23 = call [2 x i64] @_ZNSt3__119__allocate_at_leastB8ue170006INS_9allocatorIfEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS5_m(ptr noundef nonnull align 1 dereferenceable(1) %21, i64 noundef %22)
  store [2 x i64] %23, ptr %11, align 8
  %24 = getelementptr inbounds %"struct.std::__1::__allocation_result.41", ptr %11, i32 0, i32 0
  %25 = load ptr, ptr %24, align 8
  %26 = getelementptr inbounds %"struct.std::__1::__split_buffer.38", ptr %12, i32 0, i32 0
  store ptr %25, ptr %26, align 8
  %27 = getelementptr inbounds %"struct.std::__1::__allocation_result.41", ptr %11, i32 0, i32 1
  %28 = load i64, ptr %27, align 8
  store i64 %28, ptr %7, align 8
  br label %29

29:                                               ; preds = %20, %18
  %30 = getelementptr inbounds %"struct.std::__1::__split_buffer.38", ptr %12, i32 0, i32 0
  %31 = load ptr, ptr %30, align 8
  %32 = load i64, ptr %8, align 8
  %33 = getelementptr inbounds float, ptr %31, i64 %32
  %34 = getelementptr inbounds %"struct.std::__1::__split_buffer.38", ptr %12, i32 0, i32 2
  store ptr %33, ptr %34, align 8
  %35 = getelementptr inbounds %"struct.std::__1::__split_buffer.38", ptr %12, i32 0, i32 1
  store ptr %33, ptr %35, align 8
  %36 = getelementptr inbounds %"struct.std::__1::__split_buffer.38", ptr %12, i32 0, i32 0
  %37 = load ptr, ptr %36, align 8
  %38 = load i64, ptr %7, align 8
  %39 = getelementptr inbounds float, ptr %37, i64 %38
  %40 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__114__split_bufferIfRNS_9allocatorIfEEE9__end_capB8ue170006Ev(ptr noundef %12) #12
  store ptr %39, ptr %40, align 8
  %41 = load ptr, ptr %5, align 8
  ret ptr %41
}

; Function Attrs: noinline optnone ssp uwtable(sync)
define linkonce_odr ptr @_ZNSt3__117__compressed_pairIPfRNS_9allocatorIfEEEC1B8ue170006IDnS4_EEOT_OT0_(ptr noundef returned %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #3 align 2 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  %7 = load ptr, ptr %4, align 8
  %8 = load ptr, ptr %5, align 8
  %9 = load ptr, ptr %6, align 8
  %10 = call ptr @_ZNSt3__117__compressed_pairIPfRNS_9allocatorIfEEEC2B8ue170006IDnS4_EEOT_OT0_(ptr noundef %7, ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 1 dereferenceable(1) %9)
  ret ptr %7
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden [2 x i64] @_ZNSt3__119__allocate_at_leastB8ue170006INS_9allocatorIfEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS5_m(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1) #1 {
  %3 = alloca %"struct.std::__1::__allocation_result.41", align 8
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
  store i64 %1, ptr %5, align 8
  %6 = getelementptr inbounds %"struct.std::__1::__allocation_result.41", ptr %3, i32 0, i32 0
  %7 = load ptr, ptr %4, align 8
  %8 = load i64, ptr %5, align 8
  %9 = call ptr @_ZNSt3__19allocatorIfE8allocateB8ue170006Em(ptr noundef %7, i64 noundef %8)
  store ptr %9, ptr %6, align 8
  %10 = getelementptr inbounds %"struct.std::__1::__allocation_result.41", ptr %3, i32 0, i32 1
  %11 = load i64, ptr %5, align 8
  store i64 %11, ptr %10, align 8
  %12 = load [2 x i64], ptr %3, align 8
  ret [2 x i64] %12
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__114__split_bufferIfRNS_9allocatorIfEEE7__allocB8ue170006Ev(ptr noundef %0) #5 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"struct.std::__1::__split_buffer.38", ptr %3, i32 0, i32 3
  %5 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__117__compressed_pairIPfRNS_9allocatorIfEEE6secondB8ue170006Ev(ptr noundef %4) #12
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__114__split_bufferIfRNS_9allocatorIfEEE9__end_capB8ue170006Ev(ptr noundef %0) #5 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"struct.std::__1::__split_buffer.38", ptr %3, i32 0, i32 3
  %5 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__117__compressed_pairIPfRNS_9allocatorIfEEE5firstB8ue170006Ev(ptr noundef %4) #12
  ret ptr %5
}

; Function Attrs: noinline optnone ssp uwtable(sync)
define linkonce_odr ptr @_ZNSt3__117__compressed_pairIPfRNS_9allocatorIfEEEC2B8ue170006IDnS4_EEOT_OT0_(ptr noundef returned %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #3 align 2 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  %7 = load ptr, ptr %4, align 8
  %8 = load ptr, ptr %5, align 8
  %9 = call ptr @_ZNSt3__122__compressed_pair_elemIPfLi0ELb0EEC2B8ue170006IDnvEEOT_(ptr noundef %7, ptr noundef nonnull align 8 dereferenceable(8) %8)
  %10 = getelementptr inbounds i8, ptr %7, i64 8
  %11 = load ptr, ptr %6, align 8
  %12 = call ptr @_ZNSt3__122__compressed_pair_elemIRNS_9allocatorIfEELi1ELb0EEC2B8ue170006IS3_vEEOT_(ptr noundef %10, ptr noundef nonnull align 1 dereferenceable(1) %11)
  ret ptr %7
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr ptr @_ZNSt3__122__compressed_pair_elemIRNS_9allocatorIfEELi1ELb0EEC2B8ue170006IS3_vEEOT_(ptr noundef returned %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #0 align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = getelementptr inbounds %"struct.std::__1::__compressed_pair_elem.40", ptr %5, i32 0, i32 0
  %7 = load ptr, ptr %4, align 8
  store ptr %7, ptr %6, align 8
  ret ptr %5
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden ptr @_ZNSt3__19allocatorIfE8allocateB8ue170006Em(ptr noundef %0, i64 noundef %1) #1 align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  store ptr %0, ptr %3, align 8
  store i64 %1, ptr %4, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = load i64, ptr %4, align 8
  %7 = call i64 @_ZNSt3__116allocator_traitsINS_9allocatorIfEEE8max_sizeB8ue170006IS2_vEEmRKS2_(ptr noundef nonnull align 1 dereferenceable(1) %5) #12
  %8 = icmp ugt i64 %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  call void @_ZSt28__throw_bad_array_new_lengthB8ue170006v() #13
  unreachable

10:                                               ; preds = %2
  %11 = load i64, ptr %4, align 8
  %12 = mul i64 %11, 4
  %13 = call ptr @_ZNSt3__117__libcpp_allocateB8ue170006Emm(i64 noundef %12, i64 noundef 4)
  ret ptr %13
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__117__compressed_pairIPfRNS_9allocatorIfEEE6secondB8ue170006Ev(ptr noundef %0) #5 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds i8, ptr %3, i64 8
  %5 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__122__compressed_pair_elemIRNS_9allocatorIfEELi1ELb0EE5__getB8ue170006Ev(ptr noundef %4) #12
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__122__compressed_pair_elemIRNS_9allocatorIfEELi1ELb0EE5__getB8ue170006Ev(ptr noundef %0) #5 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"struct.std::__1::__compressed_pair_elem.40", ptr %3, i32 0, i32 0
  %5 = load ptr, ptr %4, align 8
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__117__compressed_pairIPfRNS_9allocatorIfEEE5firstB8ue170006Ev(ptr noundef %0) #5 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__122__compressed_pair_elemIPfLi0ELb0EE5__getB8ue170006Ev(ptr noundef %3) #12
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNKSt3__16vectorIfNS_9allocatorIfEEE17__annotate_deleteB8ue170006Ev(ptr noundef %0) #5 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = call ptr @_ZNKSt3__16vectorIfNS_9allocatorIfEEE4dataB8ue170006Ev(ptr noundef %3) #12
  %5 = call ptr @_ZNKSt3__16vectorIfNS_9allocatorIfEEE4dataB8ue170006Ev(ptr noundef %3) #12
  %6 = call i64 @_ZNKSt3__16vectorIfNS_9allocatorIfEEE8capacityB8ue170006Ev(ptr noundef %3) #12
  %7 = getelementptr inbounds float, ptr %5, i64 %6
  %8 = call ptr @_ZNKSt3__16vectorIfNS_9allocatorIfEEE4dataB8ue170006Ev(ptr noundef %3) #12
  %9 = call i64 @_ZNKSt3__16vectorIfNS_9allocatorIfEEE4sizeB8ue170006Ev(ptr noundef %3) #12
  %10 = getelementptr inbounds float, ptr %8, i64 %9
  %11 = call ptr @_ZNKSt3__16vectorIfNS_9allocatorIfEEE4dataB8ue170006Ev(ptr noundef %3) #12
  %12 = call i64 @_ZNKSt3__16vectorIfNS_9allocatorIfEEE8capacityB8ue170006Ev(ptr noundef %3) #12
  %13 = getelementptr inbounds float, ptr %11, i64 %12
  call void @_ZNKSt3__16vectorIfNS_9allocatorIfEEE31__annotate_contiguous_containerB8ue170006EPKvS5_S5_S5_(ptr noundef %3, ptr noundef %4, ptr noundef %7, ptr noundef %10, ptr noundef %13) #12
  ret void
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden [2 x i64] @_ZNSt3__142__uninitialized_allocator_move_if_noexceptB8ue170006INS_9allocatorIfEENS_16reverse_iteratorIPfEES5_fvEET1_RT_T0_S9_S6_(ptr noundef nonnull align 1 dereferenceable(1) %0, [2 x i64] %1, [2 x i64] %2, [2 x i64] %3) #1 {
  %5 = alloca %"class.std::__1::reverse_iterator.42", align 8
  %6 = alloca %"class.std::__1::reverse_iterator.42", align 8
  %7 = alloca %"class.std::__1::reverse_iterator.42", align 8
  %8 = alloca %"class.std::__1::reverse_iterator.42", align 8
  %9 = alloca ptr, align 8
  %10 = alloca %"class.std::__1::reverse_iterator.42", align 8
  %11 = alloca %"class.std::__1::reverse_iterator.42", align 8
  %12 = alloca %"class.std::__1::reverse_iterator.42", align 8
  store [2 x i64] %1, ptr %6, align 8
  store [2 x i64] %2, ptr %7, align 8
  store [2 x i64] %3, ptr %8, align 8
  store ptr %0, ptr %9, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %10, ptr align 8 %6, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %11, ptr align 8 %7, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %12, ptr align 8 %8, i64 16, i1 false)
  %13 = load [2 x i64], ptr %10, align 8
  %14 = load [2 x i64], ptr %11, align 8
  %15 = load [2 x i64], ptr %12, align 8
  %16 = call [2 x i64] @_ZNSt3__14moveB8ue170006INS_16reverse_iteratorIPfEES3_EET0_T_S5_S4_([2 x i64] %13, [2 x i64] %14, [2 x i64] %15)
  store [2 x i64] %16, ptr %5, align 8
  %17 = load [2 x i64], ptr %5, align 8
  ret [2 x i64] %17
}

; Function Attrs: noinline optnone ssp uwtable(sync)
define linkonce_odr hidden ptr @_ZNSt3__116reverse_iteratorIPfEC1B8ue170006ES1_(ptr noundef returned %0, ptr noundef %1) unnamed_addr #3 align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = load ptr, ptr %4, align 8
  %7 = call ptr @_ZNSt3__116reverse_iteratorIPfEC2B8ue170006ES1_(ptr noundef %5, ptr noundef %6)
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden ptr @_ZNKSt3__116reverse_iteratorIPfE4baseB8ue170006Ev(ptr noundef %0) #5 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.std::__1::reverse_iterator.42", ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNSt3__14swapB8ue170006IPfEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS3_EE5valueEvE4typeERS3_S6_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #5 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %6 = load ptr, ptr %3, align 8
  %7 = load ptr, ptr %6, align 8
  store ptr %7, ptr %5, align 8
  %8 = load ptr, ptr %4, align 8
  %9 = load ptr, ptr %8, align 8
  %10 = load ptr, ptr %3, align 8
  store ptr %9, ptr %10, align 8
  %11 = load ptr, ptr %5, align 8
  %12 = load ptr, ptr %4, align 8
  store ptr %11, ptr %12, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNKSt3__16vectorIfNS_9allocatorIfEEE14__annotate_newB8ue170006Em(ptr noundef %0, i64 noundef %1) #5 align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  store ptr %0, ptr %3, align 8
  store i64 %1, ptr %4, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = call ptr @_ZNKSt3__16vectorIfNS_9allocatorIfEEE4dataB8ue170006Ev(ptr noundef %5) #12
  %7 = call ptr @_ZNKSt3__16vectorIfNS_9allocatorIfEEE4dataB8ue170006Ev(ptr noundef %5) #12
  %8 = call i64 @_ZNKSt3__16vectorIfNS_9allocatorIfEEE8capacityB8ue170006Ev(ptr noundef %5) #12
  %9 = getelementptr inbounds float, ptr %7, i64 %8
  %10 = call ptr @_ZNKSt3__16vectorIfNS_9allocatorIfEEE4dataB8ue170006Ev(ptr noundef %5) #12
  %11 = call i64 @_ZNKSt3__16vectorIfNS_9allocatorIfEEE8capacityB8ue170006Ev(ptr noundef %5) #12
  %12 = getelementptr inbounds float, ptr %10, i64 %11
  %13 = call ptr @_ZNKSt3__16vectorIfNS_9allocatorIfEEE4dataB8ue170006Ev(ptr noundef %5) #12
  %14 = load i64, ptr %4, align 8
  %15 = getelementptr inbounds float, ptr %13, i64 %14
  call void @_ZNKSt3__16vectorIfNS_9allocatorIfEEE31__annotate_contiguous_containerB8ue170006EPKvS5_S5_S5_(ptr noundef %5, ptr noundef %6, ptr noundef %9, ptr noundef %12, ptr noundef %15) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNKSt3__16vectorIfNS_9allocatorIfEEE31__annotate_contiguous_containerB8ue170006EPKvS5_S5_S5_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #5 align 2 {
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  store ptr %0, ptr %6, align 8
  store ptr %1, ptr %7, align 8
  store ptr %2, ptr %8, align 8
  store ptr %3, ptr %9, align 8
  store ptr %4, ptr %10, align 8
  %11 = load ptr, ptr %6, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden ptr @_ZNKSt3__16vectorIfNS_9allocatorIfEEE4dataB8ue170006Ev(ptr noundef %0) #5 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.std::__1::vector.9", ptr %3, i32 0, i32 0
  %5 = load ptr, ptr %4, align 8
  %6 = call ptr @_ZNSt3__112__to_addressB8ue170006IfEEPT_S2_(ptr noundef %5) #12
  ret ptr %6
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden [2 x i64] @_ZNSt3__14moveB8ue170006INS_16reverse_iteratorIPfEES3_EET0_T_S5_S4_([2 x i64] %0, [2 x i64] %1, [2 x i64] %2) #1 {
  %4 = alloca %"class.std::__1::reverse_iterator.42", align 8
  %5 = alloca %"class.std::__1::reverse_iterator.42", align 8
  %6 = alloca %"class.std::__1::reverse_iterator.42", align 8
  %7 = alloca %"class.std::__1::reverse_iterator.42", align 8
  %8 = alloca %"struct.std::__1::pair.44", align 8
  %9 = alloca %"class.std::__1::reverse_iterator.42", align 8
  %10 = alloca %"class.std::__1::reverse_iterator.42", align 8
  %11 = alloca %"class.std::__1::reverse_iterator.42", align 8
  store [2 x i64] %0, ptr %5, align 8
  store [2 x i64] %1, ptr %6, align 8
  store [2 x i64] %2, ptr %7, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %9, ptr align 8 %5, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %10, ptr align 8 %6, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %11, ptr align 8 %7, i64 16, i1 false)
  %12 = load [2 x i64], ptr %9, align 8
  %13 = load [2 x i64], ptr %10, align 8
  %14 = load [2 x i64], ptr %11, align 8
  call void @_ZNSt3__16__moveB8ue170006INS_17_ClassicAlgPolicyENS_16reverse_iteratorIPfEES4_S4_EENS_4pairIT0_T2_EES6_T1_S7_(ptr sret(%"struct.std::__1::pair.44") align 8 %8, [2 x i64] %12, [2 x i64] %13, [2 x i64] %14)
  %15 = getelementptr inbounds %"struct.std::__1::pair.44", ptr %8, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %4, ptr align 8 %15, i64 16, i1 false)
  %16 = load [2 x i64], ptr %4, align 8
  ret [2 x i64] %16
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNSt3__16__moveB8ue170006INS_17_ClassicAlgPolicyENS_16reverse_iteratorIPfEES4_S4_EENS_4pairIT0_T2_EES6_T1_S7_(ptr noalias sret(%"struct.std::__1::pair.44") align 8 %0, [2 x i64] %1, [2 x i64] %2, [2 x i64] %3) #1 {
  %5 = alloca %"class.std::__1::reverse_iterator.42", align 8
  %6 = alloca %"class.std::__1::reverse_iterator.42", align 8
  %7 = alloca %"class.std::__1::reverse_iterator.42", align 8
  %8 = alloca %"class.std::__1::reverse_iterator.42", align 8
  %9 = alloca %"class.std::__1::reverse_iterator.42", align 8
  %10 = alloca %"class.std::__1::reverse_iterator.42", align 8
  store [2 x i64] %1, ptr %5, align 8
  store [2 x i64] %2, ptr %6, align 8
  store [2 x i64] %3, ptr %7, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %8, ptr align 8 %5, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %9, ptr align 8 %6, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %10, ptr align 8 %7, i64 16, i1 false)
  %11 = load [2 x i64], ptr %8, align 8
  %12 = load [2 x i64], ptr %9, align 8
  %13 = load [2 x i64], ptr %10, align 8
  call void @_ZNSt3__123__dispatch_copy_or_moveB8ue170006INS_17_ClassicAlgPolicyENS_11__move_loopIS1_EENS_14__move_trivialENS_16reverse_iteratorIPfEES7_S7_EENS_4pairIT2_T4_EES9_T3_SA_(ptr sret(%"struct.std::__1::pair.44") align 8 %0, [2 x i64] %11, [2 x i64] %12, [2 x i64] %13)
  ret void
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNSt3__123__dispatch_copy_or_moveB8ue170006INS_17_ClassicAlgPolicyENS_11__move_loopIS1_EENS_14__move_trivialENS_16reverse_iteratorIPfEES7_S7_EENS_4pairIT2_T4_EES9_T3_SA_(ptr noalias sret(%"struct.std::__1::pair.44") align 8 %0, [2 x i64] %1, [2 x i64] %2, [2 x i64] %3) #1 {
  %5 = alloca %"class.std::__1::reverse_iterator.42", align 8
  %6 = alloca %"class.std::__1::reverse_iterator.42", align 8
  %7 = alloca %"class.std::__1::reverse_iterator.42", align 8
  %8 = alloca %"class.std::__1::reverse_iterator.42", align 8
  %9 = alloca %"class.std::__1::reverse_iterator.42", align 8
  %10 = alloca %"class.std::__1::reverse_iterator.42", align 8
  store [2 x i64] %1, ptr %5, align 8
  store [2 x i64] %2, ptr %6, align 8
  store [2 x i64] %3, ptr %7, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %8, ptr align 8 %5, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %9, ptr align 8 %6, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %10, ptr align 8 %7, i64 16, i1 false)
  %11 = load [2 x i64], ptr %8, align 8
  %12 = load [2 x i64], ptr %9, align 8
  %13 = load [2 x i64], ptr %10, align 8
  call void @_ZNSt3__121__unwrap_and_dispatchB8ue170006INS_10__overloadINS_11__move_loopINS_17_ClassicAlgPolicyEEENS_14__move_trivialEEENS_16reverse_iteratorIPfEES9_S9_Li0EEENS_4pairIT0_T2_EESB_T1_SC_(ptr sret(%"struct.std::__1::pair.44") align 8 %0, [2 x i64] %11, [2 x i64] %12, [2 x i64] %13)
  ret void
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNSt3__121__unwrap_and_dispatchB8ue170006INS_10__overloadINS_11__move_loopINS_17_ClassicAlgPolicyEEENS_14__move_trivialEEENS_16reverse_iteratorIPfEES9_S9_Li0EEENS_4pairIT0_T2_EESB_T1_SC_(ptr noalias sret(%"struct.std::__1::pair.44") align 8 %0, [2 x i64] %1, [2 x i64] %2, [2 x i64] %3) #1 {
  %5 = alloca %"class.std::__1::reverse_iterator.42", align 8
  %6 = alloca %"class.std::__1::reverse_iterator.42", align 8
  %7 = alloca %"class.std::__1::reverse_iterator.42", align 8
  %8 = alloca %"struct.std::__1::pair.44", align 8
  %9 = alloca %"class.std::__1::reverse_iterator.42", align 8
  %10 = alloca %"class.std::__1::reverse_iterator.42", align 8
  %11 = alloca %"struct.std::__1::pair.44", align 8
  %12 = alloca %"struct.std::__1::__overload", align 1
  %13 = alloca %"class.std::__1::reverse_iterator.42", align 8
  %14 = alloca %"class.std::__1::reverse_iterator.42", align 8
  %15 = alloca %"class.std::__1::reverse_iterator.42", align 8
  %16 = alloca %"class.std::__1::reverse_iterator.42", align 8
  %17 = alloca %"class.std::__1::reverse_iterator.42", align 8
  %18 = alloca %"class.std::__1::reverse_iterator.42", align 8
  %19 = alloca %"class.std::__1::reverse_iterator.42", align 8
  %20 = alloca %"class.std::__1::reverse_iterator.42", align 8
  %21 = alloca %"class.std::__1::reverse_iterator.42", align 8
  %22 = alloca %"class.std::__1::reverse_iterator.42", align 8
  store [2 x i64] %1, ptr %5, align 8
  store [2 x i64] %2, ptr %6, align 8
  store [2 x i64] %3, ptr %7, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %9, ptr align 8 %5, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %10, ptr align 8 %6, i64 16, i1 false)
  %23 = load [2 x i64], ptr %9, align 8
  %24 = load [2 x i64], ptr %10, align 8
  call void @_ZNSt3__114__unwrap_rangeB8ue170006INS_16reverse_iteratorIPfEES3_EENS_4pairIT0_S5_EET_S7_(ptr sret(%"struct.std::__1::pair.44") align 8 %8, [2 x i64] %23, [2 x i64] %24)
  %25 = getelementptr inbounds %"struct.std::__1::pair.44", ptr %8, i32 0, i32 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %13, ptr align 8 %25, i64 16, i1 false)
  %26 = getelementptr inbounds %"struct.std::__1::pair.44", ptr %8, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %14, ptr align 8 %26, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %16, ptr align 8 %7, i64 16, i1 false)
  %27 = load [2 x i64], ptr %16, align 8
  %28 = call [2 x i64] @_ZNSt3__113__unwrap_iterB8ue170006INS_16reverse_iteratorIPfEENS_18__unwrap_iter_implIS3_Lb0EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEES7_([2 x i64] %27) #12
  store [2 x i64] %28, ptr %15, align 8
  %29 = load [2 x i64], ptr %13, align 8
  %30 = load [2 x i64], ptr %14, align 8
  %31 = load [2 x i64], ptr %15, align 8
  call void @_ZNKSt3__111__move_loopINS_17_ClassicAlgPolicyEEclB8ue170006INS_16reverse_iteratorIPfEES6_S6_EENS_4pairIT_T1_EES8_T0_S9_(ptr sret(%"struct.std::__1::pair.44") align 8 %11, ptr noundef %12, [2 x i64] %29, [2 x i64] %30, [2 x i64] %31)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %18, ptr align 8 %5, i64 16, i1 false)
  %32 = getelementptr inbounds %"struct.std::__1::pair.44", ptr %11, i32 0, i32 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %19, ptr align 8 %32, i64 16, i1 false)
  %33 = load [2 x i64], ptr %18, align 8
  %34 = load [2 x i64], ptr %19, align 8
  %35 = call [2 x i64] @_ZNSt3__114__rewrap_rangeB8ue170006INS_16reverse_iteratorIPfEES3_EET_S4_T0_([2 x i64] %33, [2 x i64] %34)
  store [2 x i64] %35, ptr %17, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %21, ptr align 8 %7, i64 16, i1 false)
  %36 = getelementptr inbounds %"struct.std::__1::pair.44", ptr %11, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %22, ptr align 8 %36, i64 16, i1 false)
  %37 = load [2 x i64], ptr %21, align 8
  %38 = load [2 x i64], ptr %22, align 8
  %39 = call [2 x i64] @_ZNSt3__113__rewrap_iterB8ue170006INS_16reverse_iteratorIPfEES3_NS_18__unwrap_iter_implIS3_Lb0EEEEET_S6_T0_([2 x i64] %37, [2 x i64] %38) #12
  store [2 x i64] %39, ptr %20, align 8
  call void @_ZNSt3__19make_pairB8ue170006INS_16reverse_iteratorIPfEES3_EENS_4pairINS_18__unwrap_ref_decayIT_E4typeENS5_IT0_E4typeEEEOS6_OS9_(ptr sret(%"struct.std::__1::pair.44") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %17, ptr noundef nonnull align 8 dereferenceable(16) %20)
  ret void
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNSt3__114__unwrap_rangeB8ue170006INS_16reverse_iteratorIPfEES3_EENS_4pairIT0_S5_EET_S7_(ptr noalias sret(%"struct.std::__1::pair.44") align 8 %0, [2 x i64] %1, [2 x i64] %2) #1 {
  %4 = alloca %"class.std::__1::reverse_iterator.42", align 8
  %5 = alloca %"class.std::__1::reverse_iterator.42", align 8
  %6 = alloca %"class.std::__1::reverse_iterator.42", align 8
  %7 = alloca %"class.std::__1::reverse_iterator.42", align 8
  %8 = alloca %"class.std::__1::reverse_iterator.42", align 8
  %9 = alloca %"class.std::__1::reverse_iterator.42", align 8
  store [2 x i64] %1, ptr %4, align 8
  store [2 x i64] %2, ptr %5, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %7, ptr align 8 %4, i64 16, i1 false)
  %10 = load [2 x i64], ptr %7, align 8
  %11 = call [2 x i64] @_ZNSt3__113__unwrap_iterB8ue170006INS_16reverse_iteratorIPfEENS_18__unwrap_iter_implIS3_Lb0EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEES7_([2 x i64] %10) #12
  store [2 x i64] %11, ptr %6, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %9, ptr align 8 %5, i64 16, i1 false)
  %12 = load [2 x i64], ptr %9, align 8
  %13 = call [2 x i64] @_ZNSt3__113__unwrap_iterB8ue170006INS_16reverse_iteratorIPfEENS_18__unwrap_iter_implIS3_Lb0EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEES7_([2 x i64] %12) #12
  store [2 x i64] %13, ptr %8, align 8
  call void @_ZNSt3__19make_pairB8ue170006INS_16reverse_iteratorIPfEES3_EENS_4pairINS_18__unwrap_ref_decayIT_E4typeENS5_IT0_E4typeEEEOS6_OS9_(ptr sret(%"struct.std::__1::pair.44") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %8)
  ret void
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr void @_ZNKSt3__111__move_loopINS_17_ClassicAlgPolicyEEclB8ue170006INS_16reverse_iteratorIPfEES6_S6_EENS_4pairIT_T1_EES8_T0_S9_(ptr noalias sret(%"struct.std::__1::pair.44") align 8 %0, ptr noundef %1, [2 x i64] %2, [2 x i64] %3, [2 x i64] %4) #1 align 2 {
  %6 = alloca %"class.std::__1::reverse_iterator.42", align 8
  %7 = alloca %"class.std::__1::reverse_iterator.42", align 8
  %8 = alloca %"class.std::__1::reverse_iterator.42", align 8
  %9 = alloca ptr, align 8
  store [2 x i64] %2, ptr %6, align 8
  store [2 x i64] %3, ptr %7, align 8
  store [2 x i64] %4, ptr %8, align 8
  store ptr %1, ptr %9, align 8
  %10 = load ptr, ptr %9, align 8
  br label %11

11:                                               ; preds = %13, %5
  %12 = call zeroext i1 @_ZNSt3__1neB8ue170006IPfS1_EEbRKNS_16reverse_iteratorIT_EERKNS2_IT0_EE(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %7)
  br i1 %12, label %13, label %19

13:                                               ; preds = %11
  %14 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt3__18_IterOpsINS_17_ClassicAlgPolicyEE11__iter_moveB8ue170006IRNS_16reverse_iteratorIPfEEEENS_9enable_ifIXsr12is_referenceIDTdeclsr3stdE7declvalIRT_EEEEE5valueEDTclsr3stdE4movedeclsr3stdE7declvalISA_EEEEE4typeEOS9_(ptr noundef nonnull align 8 dereferenceable(16) %6)
  %15 = load float, ptr %14, align 4
  %16 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNKSt3__116reverse_iteratorIPfEdeB8ue170006Ev(ptr noundef %8)
  store float %15, ptr %16, align 4
  %17 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt3__116reverse_iteratorIPfEppB8ue170006Ev(ptr noundef %6)
  %18 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt3__116reverse_iteratorIPfEppB8ue170006Ev(ptr noundef %8)
  br label %11, !llvm.loop !12

19:                                               ; preds = %11
  call void @_ZNSt3__19make_pairB8ue170006INS_16reverse_iteratorIPfEES3_EENS_4pairINS_18__unwrap_ref_decayIT_E4typeENS5_IT0_E4typeEEEOS6_OS9_(ptr sret(%"struct.std::__1::pair.44") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %8)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden [2 x i64] @_ZNSt3__113__unwrap_iterB8ue170006INS_16reverse_iteratorIPfEENS_18__unwrap_iter_implIS3_Lb0EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEES7_([2 x i64] %0) #5 {
  %2 = alloca %"class.std::__1::reverse_iterator.42", align 8
  %3 = alloca %"class.std::__1::reverse_iterator.42", align 8
  %4 = alloca %"class.std::__1::reverse_iterator.42", align 8
  store [2 x i64] %0, ptr %3, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %4, ptr align 8 %3, i64 16, i1 false)
  %5 = load [2 x i64], ptr %4, align 8
  %6 = call [2 x i64] @_ZNSt3__118__unwrap_iter_implINS_16reverse_iteratorIPfEELb0EE8__unwrapB8ue170006ES3_([2 x i64] %5) #12
  store [2 x i64] %6, ptr %2, align 8
  %7 = load [2 x i64], ptr %2, align 8
  ret [2 x i64] %7
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNSt3__19make_pairB8ue170006INS_16reverse_iteratorIPfEES3_EENS_4pairINS_18__unwrap_ref_decayIT_E4typeENS5_IT0_E4typeEEEOS6_OS9_(ptr noalias sret(%"struct.std::__1::pair.44") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) #5 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %1, ptr %4, align 8
  store ptr %2, ptr %5, align 8
  %6 = load ptr, ptr %4, align 8
  %7 = load ptr, ptr %5, align 8
  %8 = call ptr @_ZNSt3__14pairINS_16reverse_iteratorIPfEES3_EC1B8ue170006IS3_S3_LPv0EEEOT_OT0_(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %7) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden [2 x i64] @_ZNSt3__114__rewrap_rangeB8ue170006INS_16reverse_iteratorIPfEES3_EET_S4_T0_([2 x i64] %0, [2 x i64] %1) #5 {
  %3 = alloca %"class.std::__1::reverse_iterator.42", align 8
  %4 = alloca %"class.std::__1::reverse_iterator.42", align 8
  %5 = alloca %"class.std::__1::reverse_iterator.42", align 8
  %6 = alloca %"class.std::__1::reverse_iterator.42", align 8
  %7 = alloca %"class.std::__1::reverse_iterator.42", align 8
  store [2 x i64] %0, ptr %4, align 8
  store [2 x i64] %1, ptr %5, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %6, ptr align 8 %4, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %7, ptr align 8 %5, i64 16, i1 false)
  %8 = load [2 x i64], ptr %6, align 8
  %9 = load [2 x i64], ptr %7, align 8
  %10 = call [2 x i64] @_ZNSt3__113__rewrap_iterB8ue170006INS_16reverse_iteratorIPfEES3_NS_18__unwrap_iter_implIS3_Lb0EEEEET_S6_T0_([2 x i64] %8, [2 x i64] %9) #12
  store [2 x i64] %10, ptr %3, align 8
  %11 = load [2 x i64], ptr %3, align 8
  ret [2 x i64] %11
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden [2 x i64] @_ZNSt3__113__rewrap_iterB8ue170006INS_16reverse_iteratorIPfEES3_NS_18__unwrap_iter_implIS3_Lb0EEEEET_S6_T0_([2 x i64] %0, [2 x i64] %1) #5 personality ptr @__gxx_personality_v0 {
  %3 = alloca %"class.std::__1::reverse_iterator.42", align 8
  %4 = alloca %"class.std::__1::reverse_iterator.42", align 8
  %5 = alloca %"class.std::__1::reverse_iterator.42", align 8
  %6 = alloca %"class.std::__1::reverse_iterator.42", align 8
  %7 = alloca %"class.std::__1::reverse_iterator.42", align 8
  store [2 x i64] %0, ptr %4, align 8
  store [2 x i64] %1, ptr %5, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %6, ptr align 8 %4, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %7, ptr align 8 %5, i64 16, i1 false)
  %8 = load [2 x i64], ptr %6, align 8
  %9 = load [2 x i64], ptr %7, align 8
  %10 = invoke [2 x i64] @_ZNSt3__118__unwrap_iter_implINS_16reverse_iteratorIPfEELb0EE8__rewrapB8ue170006ES3_S3_([2 x i64] %8, [2 x i64] %9)
          to label %11 unwind label %13

11:                                               ; preds = %2
  store [2 x i64] %10, ptr %3, align 8
  %12 = load [2 x i64], ptr %3, align 8
  ret [2 x i64] %12

13:                                               ; preds = %2
  %14 = landingpad { ptr, i32 }
          catch ptr null
  %15 = extractvalue { ptr, i32 } %14, 0
  call void @__clang_call_terminate(ptr %15) #14
  unreachable
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden zeroext i1 @_ZNSt3__1neB8ue170006IPfS1_EEbRKNS_16reverse_iteratorIT_EERKNS2_IT0_EE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) #1 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = call ptr @_ZNKSt3__116reverse_iteratorIPfE4baseB8ue170006Ev(ptr noundef %5)
  %7 = load ptr, ptr %4, align 8
  %8 = call ptr @_ZNKSt3__116reverse_iteratorIPfE4baseB8ue170006Ev(ptr noundef %7)
  %9 = icmp ne ptr %6, %8
  ret i1 %9
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt3__18_IterOpsINS_17_ClassicAlgPolicyEE11__iter_moveB8ue170006IRNS_16reverse_iteratorIPfEEEENS_9enable_ifIXsr12is_referenceIDTdeclsr3stdE7declvalIRT_EEEEE5valueEDTclsr3stdE4movedeclsr3stdE7declvalISA_EEEEE4typeEOS9_(ptr noundef nonnull align 8 dereferenceable(16) %0) #1 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @_ZNSt3__18_IterOpsINS_17_ClassicAlgPolicyEE25__validate_iter_referenceB8ue170006IRNS_16reverse_iteratorIPfEEEEvv()
  %3 = load ptr, ptr %2, align 8
  %4 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNKSt3__116reverse_iteratorIPfEdeB8ue170006Ev(ptr noundef %3)
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef nonnull align 4 dereferenceable(4) ptr @_ZNKSt3__116reverse_iteratorIPfEdeB8ue170006Ev(ptr noundef %0) #5 align 2 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %4 = load ptr, ptr %2, align 8
  %5 = getelementptr inbounds %"class.std::__1::reverse_iterator.42", ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 8
  store ptr %6, ptr %3, align 8
  %7 = load ptr, ptr %3, align 8
  %8 = getelementptr inbounds float, ptr %7, i32 -1
  store ptr %8, ptr %3, align 8
  ret ptr %8
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt3__116reverse_iteratorIPfEppB8ue170006Ev(ptr noundef %0) #5 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.std::__1::reverse_iterator.42", ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds float, ptr %5, i32 -1
  store ptr %6, ptr %4, align 8
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNSt3__18_IterOpsINS_17_ClassicAlgPolicyEE25__validate_iter_referenceB8ue170006IRNS_16reverse_iteratorIPfEEEEvv() #5 align 2 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden [2 x i64] @_ZNSt3__118__unwrap_iter_implINS_16reverse_iteratorIPfEELb0EE8__unwrapB8ue170006ES3_([2 x i64] %0) #5 align 2 {
  %2 = alloca %"class.std::__1::reverse_iterator.42", align 8
  %3 = alloca %"class.std::__1::reverse_iterator.42", align 8
  store [2 x i64] %0, ptr %3, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %2, ptr align 8 %3, i64 16, i1 false)
  %4 = load [2 x i64], ptr %2, align 8
  ret [2 x i64] %4
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr ptr @_ZNSt3__14pairINS_16reverse_iteratorIPfEES3_EC1B8ue170006IS3_S3_LPv0EEEOT_OT0_(ptr noundef returned %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #0 align 2 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  %7 = load ptr, ptr %4, align 8
  %8 = load ptr, ptr %5, align 8
  %9 = load ptr, ptr %6, align 8
  %10 = call ptr @_ZNSt3__14pairINS_16reverse_iteratorIPfEES3_EC2B8ue170006IS3_S3_LPv0EEEOT_OT0_(ptr noundef %7, ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) %9) #12
  ret ptr %7
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr ptr @_ZNSt3__14pairINS_16reverse_iteratorIPfEES3_EC2B8ue170006IS3_S3_LPv0EEEOT_OT0_(ptr noundef returned %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #0 align 2 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  %7 = load ptr, ptr %4, align 8
  %8 = getelementptr inbounds %"struct.std::__1::pair.44", ptr %7, i32 0, i32 0
  %9 = load ptr, ptr %5, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %8, ptr align 8 %9, i64 16, i1 false)
  %10 = getelementptr inbounds %"struct.std::__1::pair.44", ptr %7, i32 0, i32 1
  %11 = load ptr, ptr %6, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %10, ptr align 8 %11, i64 16, i1 false)
  ret ptr %7
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden [2 x i64] @_ZNSt3__118__unwrap_iter_implINS_16reverse_iteratorIPfEELb0EE8__rewrapB8ue170006ES3_S3_([2 x i64] %0, [2 x i64] %1) #5 align 2 {
  %3 = alloca %"class.std::__1::reverse_iterator.42", align 8
  %4 = alloca %"class.std::__1::reverse_iterator.42", align 8
  %5 = alloca %"class.std::__1::reverse_iterator.42", align 8
  store [2 x i64] %0, ptr %4, align 8
  store [2 x i64] %1, ptr %5, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %3, ptr align 8 %5, i64 16, i1 false)
  %6 = load [2 x i64], ptr %3, align 8
  ret [2 x i64] %6
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden ptr @_ZNSt3__116reverse_iteratorIPfEC2B8ue170006ES1_(ptr noundef returned %0, ptr noundef %1) unnamed_addr #0 align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = getelementptr inbounds %"class.std::__1::reverse_iterator.42", ptr %5, i32 0, i32 0
  %7 = load ptr, ptr %4, align 8
  store ptr %7, ptr %6, align 8
  %8 = getelementptr inbounds %"class.std::__1::reverse_iterator.42", ptr %5, i32 0, i32 1
  %9 = load ptr, ptr %4, align 8
  store ptr %9, ptr %8, align 8
  ret ptr %5
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden ptr @_ZNSt3__114__split_bufferIfRNS_9allocatorIfEEED2Ev(ptr noundef returned %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  %4 = load ptr, ptr %3, align 8
  store ptr %4, ptr %2, align 8
  call void @_ZNSt3__114__split_bufferIfRNS_9allocatorIfEEE5clearB8ue170006Ev(ptr noundef %4) #12
  %5 = getelementptr inbounds %"struct.std::__1::__split_buffer.38", ptr %4, i32 0, i32 0
  %6 = load ptr, ptr %5, align 8
  %7 = icmp ne ptr %6, null
  br i1 %7, label %8, label %14

8:                                                ; preds = %1
  %9 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__114__split_bufferIfRNS_9allocatorIfEEE7__allocB8ue170006Ev(ptr noundef %4) #12
  %10 = getelementptr inbounds %"struct.std::__1::__split_buffer.38", ptr %4, i32 0, i32 0
  %11 = load ptr, ptr %10, align 8
  %12 = invoke i64 @_ZNKSt3__114__split_bufferIfRNS_9allocatorIfEEE8capacityB8ue170006Ev(ptr noundef %4)
          to label %13 unwind label %16

13:                                               ; preds = %8
  call void @_ZNSt3__116allocator_traitsINS_9allocatorIfEEE10deallocateB8ue170006ERS2_Pfm(ptr noundef nonnull align 1 dereferenceable(1) %9, ptr noundef %11, i64 noundef %12) #12
  br label %14

14:                                               ; preds = %13, %1
  %15 = load ptr, ptr %2, align 8
  ret ptr %15

16:                                               ; preds = %8
  %17 = landingpad { ptr, i32 }
          catch ptr null
  %18 = extractvalue { ptr, i32 } %17, 0
  call void @__clang_call_terminate(ptr %18) #14
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNSt3__114__split_bufferIfRNS_9allocatorIfEEE5clearB8ue170006Ev(ptr noundef %0) #5 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"struct.std::__1::__split_buffer.38", ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8
  call void @_ZNSt3__114__split_bufferIfRNS_9allocatorIfEEE17__destruct_at_endB8ue170006EPf(ptr noundef %3, ptr noundef %5) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNSt3__116allocator_traitsINS_9allocatorIfEEE10deallocateB8ue170006ERS2_Pfm(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) #5 align 2 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store i64 %2, ptr %6, align 8
  %7 = load ptr, ptr %4, align 8
  %8 = load ptr, ptr %5, align 8
  %9 = load i64, ptr %6, align 8
  call void @_ZNSt3__19allocatorIfE10deallocateB8ue170006EPfm(ptr noundef %7, ptr noundef %8, i64 noundef %9) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden i64 @_ZNKSt3__114__split_bufferIfRNS_9allocatorIfEEE8capacityB8ue170006Ev(ptr noundef %0) #5 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt3__114__split_bufferIfRNS_9allocatorIfEEE9__end_capB8ue170006Ev(ptr noundef %3) #12
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %"struct.std::__1::__split_buffer.38", ptr %3, i32 0, i32 0
  %7 = load ptr, ptr %6, align 8
  %8 = ptrtoint ptr %5 to i64
  %9 = ptrtoint ptr %7 to i64
  %10 = sub i64 %8, %9
  %11 = sdiv exact i64 %10, 4
  ret i64 %11
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNSt3__114__split_bufferIfRNS_9allocatorIfEEE17__destruct_at_endB8ue170006EPf(ptr noundef %0, ptr noundef %1) #5 align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca %"struct.std::__1::integral_constant", align 1
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %6 = load ptr, ptr %3, align 8
  %7 = load ptr, ptr %4, align 8
  call void @_ZNSt3__114__split_bufferIfRNS_9allocatorIfEEE17__destruct_at_endB8ue170006EPfNS_17integral_constantIbLb0EEE(ptr noundef %6, ptr noundef %7) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNSt3__114__split_bufferIfRNS_9allocatorIfEEE17__destruct_at_endB8ue170006EPfNS_17integral_constantIbLb0EEE(ptr noundef %0, ptr noundef %1) #5 align 2 personality ptr @__gxx_personality_v0 {
  %3 = alloca %"struct.std::__1::integral_constant", align 1
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  %6 = load ptr, ptr %4, align 8
  br label %7

7:                                                ; preds = %18, %2
  %8 = load ptr, ptr %5, align 8
  %9 = getelementptr inbounds %"struct.std::__1::__split_buffer.38", ptr %6, i32 0, i32 2
  %10 = load ptr, ptr %9, align 8
  %11 = icmp ne ptr %8, %10
  br i1 %11, label %12, label %19

12:                                               ; preds = %7
  %13 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__114__split_bufferIfRNS_9allocatorIfEEE7__allocB8ue170006Ev(ptr noundef %6) #12
  %14 = getelementptr inbounds %"struct.std::__1::__split_buffer.38", ptr %6, i32 0, i32 2
  %15 = load ptr, ptr %14, align 8
  %16 = getelementptr inbounds float, ptr %15, i32 -1
  store ptr %16, ptr %14, align 8
  %17 = call ptr @_ZNSt3__112__to_addressB8ue170006IfEEPT_S2_(ptr noundef %16) #12
  invoke void @_ZNSt3__116allocator_traitsINS_9allocatorIfEEE7destroyB8ue170006IfvEEvRS2_PT_(ptr noundef nonnull align 1 dereferenceable(1) %13, ptr noundef %17)
          to label %18 unwind label %20

18:                                               ; preds = %12
  br label %7, !llvm.loop !13

19:                                               ; preds = %7
  ret void

20:                                               ; preds = %12
  %21 = landingpad { ptr, i32 }
          catch ptr null
  %22 = extractvalue { ptr, i32 } %21, 0
  call void @__clang_call_terminate(ptr %22) #14
  unreachable
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr void @_ZNSt3__116allocator_traitsINS_9allocatorIfEEE7destroyB8ue170006IfvEEvRS2_PT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1) #1 align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = load ptr, ptr %4, align 8
  call void @_ZNSt3__19allocatorIfE7destroyB8ue170006EPf(ptr noundef %5, ptr noundef %6)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNSt3__19allocatorIfE7destroyB8ue170006EPf(ptr noundef %0, ptr noundef %1) #5 align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = load ptr, ptr %4, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNSt3__19allocatorIfE10deallocateB8ue170006EPfm(ptr noundef %0, ptr noundef %1, i64 noundef %2) #5 align 2 personality ptr @__gxx_personality_v0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store i64 %2, ptr %6, align 8
  %7 = load ptr, ptr %4, align 8
  %8 = load ptr, ptr %5, align 8
  %9 = load i64, ptr %6, align 8
  %10 = mul i64 %9, 4
  invoke void @_ZNSt3__119__libcpp_deallocateB8ue170006EPvmm(ptr noundef %8, i64 noundef %10, i64 noundef 4)
          to label %11 unwind label %12

11:                                               ; preds = %3
  ret void

12:                                               ; preds = %3
  %13 = landingpad { ptr, i32 }
          catch ptr null
  %14 = extractvalue { ptr, i32 } %13, 0
  call void @__clang_call_terminate(ptr %14) #14
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt3__114__split_bufferIfRNS_9allocatorIfEEE9__end_capB8ue170006Ev(ptr noundef %0) #5 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"struct.std::__1::__split_buffer.38", ptr %3, i32 0, i32 3
  %5 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt3__117__compressed_pairIPfRNS_9allocatorIfEEE5firstB8ue170006Ev(ptr noundef %4) #12
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt3__117__compressed_pairIPfRNS_9allocatorIfEEE5firstB8ue170006Ev(ptr noundef %0) #5 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt3__122__compressed_pair_elemIPfLi0ELb0EE5__getB8ue170006Ev(ptr noundef %3) #12
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden i64 @_ZNSt3__16vectorIfNS_9allocatorIfEEE11__make_iterB8ue170006EPf(ptr noundef %0, ptr noundef %1) #5 align 2 {
  %3 = alloca %"class.std::__1::__wrap_iter.17", align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  %6 = load ptr, ptr %4, align 8
  %7 = load ptr, ptr %5, align 8
  %8 = call ptr @_ZNSt3__111__wrap_iterIPfEC1B8ue170006ES1_(ptr noundef %3, ptr noundef %7) #12
  %9 = getelementptr inbounds %"class.std::__1::__wrap_iter.17", ptr %3, i32 0, i32 0
  %10 = load ptr, ptr %9, align 8
  %11 = ptrtoint ptr %10 to i64
  ret i64 %11
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden ptr @_ZNSt3__111__wrap_iterIPfEC1B8ue170006ES1_(ptr noundef returned %0, ptr noundef %1) unnamed_addr #0 align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = load ptr, ptr %4, align 8
  %7 = call ptr @_ZNSt3__111__wrap_iterIPfEC2B8ue170006ES1_(ptr noundef %5, ptr noundef %6) #12
  ret ptr %5
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden ptr @_ZNSt3__111__wrap_iterIPfEC2B8ue170006ES1_(ptr noundef returned %0, ptr noundef %1) unnamed_addr #0 align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = getelementptr inbounds %"class.std::__1::__wrap_iter.17", ptr %5, i32 0, i32 0
  %7 = load ptr, ptr %4, align 8
  store ptr %7, ptr %6, align 8
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden i64 @_ZNSt3__1miB8ue170006IPKfPfEEDTmicldtfp_4baseEcldtfp0_4baseEERKNS_11__wrap_iterIT_EERKNS5_IT0_EE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #5 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = call ptr @_ZNKSt3__111__wrap_iterIPKfE4baseB8ue170006Ev(ptr noundef %5) #12
  %7 = load ptr, ptr %4, align 8
  %8 = call ptr @_ZNKSt3__111__wrap_iterIPfE4baseB8ue170006Ev(ptr noundef %7) #12
  %9 = ptrtoint ptr %6 to i64
  %10 = ptrtoint ptr %8 to i64
  %11 = sub i64 %9, %10
  %12 = sdiv exact i64 %11, 4
  ret i64 %12
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNSt3__16vectorIfNS_9allocatorIfEEE12__move_rangeEPfS4_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #1 align 2 personality ptr @__gxx_personality_v0 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca i64, align 8
  %11 = alloca ptr, align 8
  %12 = alloca %"struct.std::__1::vector<float>::_ConstructTransaction", align 8
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca i32, align 4
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  store ptr %2, ptr %7, align 8
  store ptr %3, ptr %8, align 8
  %16 = load ptr, ptr %5, align 8
  %17 = getelementptr inbounds %"class.std::__1::vector.9", ptr %16, i32 0, i32 1
  %18 = load ptr, ptr %17, align 8
  store ptr %18, ptr %9, align 8
  %19 = load ptr, ptr %9, align 8
  %20 = load ptr, ptr %8, align 8
  %21 = ptrtoint ptr %19 to i64
  %22 = ptrtoint ptr %20 to i64
  %23 = sub i64 %21, %22
  %24 = sdiv exact i64 %23, 4
  store i64 %24, ptr %10, align 8
  %25 = load ptr, ptr %6, align 8
  %26 = load i64, ptr %10, align 8
  %27 = getelementptr inbounds float, ptr %25, i64 %26
  store ptr %27, ptr %11, align 8
  %28 = load ptr, ptr %7, align 8
  %29 = load ptr, ptr %11, align 8
  %30 = ptrtoint ptr %28 to i64
  %31 = ptrtoint ptr %29 to i64
  %32 = sub i64 %30, %31
  %33 = sdiv exact i64 %32, 4
  %34 = call ptr @_ZNSt3__16vectorIfNS_9allocatorIfEEE21_ConstructTransactionC1B8ue170006ERS3_m(ptr noundef %12, ptr noundef nonnull align 8 dereferenceable(24) %16, i64 noundef %33)
  %35 = getelementptr inbounds %"struct.std::__1::vector<float>::_ConstructTransaction", ptr %12, i32 0, i32 1
  %36 = load ptr, ptr %35, align 8
  store ptr %36, ptr %13, align 8
  br label %37

37:                                               ; preds = %47, %4
  %38 = load ptr, ptr %11, align 8
  %39 = load ptr, ptr %7, align 8
  %40 = icmp ult ptr %38, %39
  br i1 %40, label %41, label %59

41:                                               ; preds = %37
  %42 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__16vectorIfNS_9allocatorIfEEE7__allocB8ue170006Ev(ptr noundef %16) #12
  %43 = load ptr, ptr %13, align 8
  %44 = call ptr @_ZNSt3__112__to_addressB8ue170006IfEEPT_S2_(ptr noundef %43) #12
  %45 = load ptr, ptr %11, align 8
  invoke void @_ZNSt3__116allocator_traitsINS_9allocatorIfEEE9constructB8ue170006IfJfEvEEvRS2_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %42, ptr noundef %44, ptr noundef nonnull align 4 dereferenceable(4) %45)
          to label %46 unwind label %54

46:                                               ; preds = %41
  br label %47

47:                                               ; preds = %46
  %48 = load ptr, ptr %11, align 8
  %49 = getelementptr inbounds float, ptr %48, i32 1
  store ptr %49, ptr %11, align 8
  %50 = load ptr, ptr %13, align 8
  %51 = getelementptr inbounds float, ptr %50, i32 1
  store ptr %51, ptr %13, align 8
  %52 = load ptr, ptr %13, align 8
  %53 = getelementptr inbounds %"struct.std::__1::vector<float>::_ConstructTransaction", ptr %12, i32 0, i32 1
  store ptr %52, ptr %53, align 8
  br label %37, !llvm.loop !14

54:                                               ; preds = %41
  %55 = landingpad { ptr, i32 }
          cleanup
  %56 = extractvalue { ptr, i32 } %55, 0
  store ptr %56, ptr %14, align 8
  %57 = extractvalue { ptr, i32 } %55, 1
  store i32 %57, ptr %15, align 4
  %58 = call ptr @_ZNSt3__16vectorIfNS_9allocatorIfEEE21_ConstructTransactionD1B8ue170006Ev(ptr noundef %12) #12
  br label %67

59:                                               ; preds = %37
  %60 = call ptr @_ZNSt3__16vectorIfNS_9allocatorIfEEE21_ConstructTransactionD1B8ue170006Ev(ptr noundef %12) #12
  %61 = load ptr, ptr %6, align 8
  %62 = load ptr, ptr %6, align 8
  %63 = load i64, ptr %10, align 8
  %64 = getelementptr inbounds float, ptr %62, i64 %63
  %65 = load ptr, ptr %9, align 8
  %66 = call ptr @_ZNSt3__113move_backwardB8ue170006IPfS1_EET0_T_S3_S2_(ptr noundef %61, ptr noundef %64, ptr noundef %65)
  ret void

67:                                               ; preds = %54
  %68 = load ptr, ptr %14, align 8
  %69 = load i32, ptr %15, align 4
  %70 = insertvalue { ptr, i32 } undef, ptr %68, 0
  %71 = insertvalue { ptr, i32 } %70, i32 %69, 1
  resume { ptr, i32 } %71
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden ptr @_ZNSt3__114pointer_traitsIPKfE10pointer_toB8ue170006ERS1_(ptr noundef nonnull align 4 dereferenceable(4) %0) #5 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  ret ptr %3
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNSt3__114__split_bufferIfRNS_9allocatorIfEEE9push_backB8ue170006ERKf(ptr noundef %0, ptr noundef nonnull align 4 dereferenceable(4) %1) #1 align 2 personality ptr @__gxx_personality_v0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %"struct.std::__1::__split_buffer.38", align 8
  %10 = alloca %"class.std::__1::move_iterator.46", align 8
  %11 = alloca ptr, align 8
  %12 = alloca i32, align 4
  %13 = alloca %"class.std::__1::move_iterator.46", align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %14 = load ptr, ptr %3, align 8
  %15 = getelementptr inbounds %"struct.std::__1::__split_buffer.38", ptr %14, i32 0, i32 2
  %16 = load ptr, ptr %15, align 8
  %17 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__114__split_bufferIfRNS_9allocatorIfEEE9__end_capB8ue170006Ev(ptr noundef %14) #12
  %18 = load ptr, ptr %17, align 8
  %19 = icmp eq ptr %16, %18
  br i1 %19, label %20, label %101

20:                                               ; preds = %2
  %21 = getelementptr inbounds %"struct.std::__1::__split_buffer.38", ptr %14, i32 0, i32 1
  %22 = load ptr, ptr %21, align 8
  %23 = getelementptr inbounds %"struct.std::__1::__split_buffer.38", ptr %14, i32 0, i32 0
  %24 = load ptr, ptr %23, align 8
  %25 = icmp ugt ptr %22, %24
  br i1 %25, label %26, label %54

26:                                               ; preds = %20
  %27 = getelementptr inbounds %"struct.std::__1::__split_buffer.38", ptr %14, i32 0, i32 1
  %28 = load ptr, ptr %27, align 8
  %29 = getelementptr inbounds %"struct.std::__1::__split_buffer.38", ptr %14, i32 0, i32 0
  %30 = load ptr, ptr %29, align 8
  %31 = ptrtoint ptr %28 to i64
  %32 = ptrtoint ptr %30 to i64
  %33 = sub i64 %31, %32
  %34 = sdiv exact i64 %33, 4
  store i64 %34, ptr %5, align 8
  %35 = load i64, ptr %5, align 8
  %36 = add nsw i64 %35, 1
  %37 = sdiv i64 %36, 2
  store i64 %37, ptr %5, align 8
  %38 = getelementptr inbounds %"struct.std::__1::__split_buffer.38", ptr %14, i32 0, i32 1
  %39 = load ptr, ptr %38, align 8
  %40 = getelementptr inbounds %"struct.std::__1::__split_buffer.38", ptr %14, i32 0, i32 2
  %41 = load ptr, ptr %40, align 8
  %42 = getelementptr inbounds %"struct.std::__1::__split_buffer.38", ptr %14, i32 0, i32 1
  %43 = load ptr, ptr %42, align 8
  %44 = load i64, ptr %5, align 8
  %45 = sub i64 0, %44
  %46 = getelementptr inbounds float, ptr %43, i64 %45
  %47 = call ptr @_ZNSt3__14moveB8ue170006IPfS1_EET0_T_S3_S2_(ptr noundef %39, ptr noundef %41, ptr noundef %46)
  %48 = getelementptr inbounds %"struct.std::__1::__split_buffer.38", ptr %14, i32 0, i32 2
  store ptr %47, ptr %48, align 8
  %49 = load i64, ptr %5, align 8
  %50 = getelementptr inbounds %"struct.std::__1::__split_buffer.38", ptr %14, i32 0, i32 1
  %51 = load ptr, ptr %50, align 8
  %52 = sub i64 0, %49
  %53 = getelementptr inbounds float, ptr %51, i64 %52
  store ptr %53, ptr %50, align 8
  br label %100

54:                                               ; preds = %20
  %55 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__114__split_bufferIfRNS_9allocatorIfEEE9__end_capB8ue170006Ev(ptr noundef %14) #12
  %56 = load ptr, ptr %55, align 8
  %57 = getelementptr inbounds %"struct.std::__1::__split_buffer.38", ptr %14, i32 0, i32 0
  %58 = load ptr, ptr %57, align 8
  %59 = ptrtoint ptr %56 to i64
  %60 = ptrtoint ptr %58 to i64
  %61 = sub i64 %59, %60
  %62 = sdiv exact i64 %61, 4
  %63 = mul i64 2, %62
  store i64 %63, ptr %7, align 8
  store i64 1, ptr %8, align 8
  %64 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__13maxB8ue170006ImEERKT_S3_S3_(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %8)
  %65 = load i64, ptr %64, align 8
  store i64 %65, ptr %6, align 8
  %66 = load i64, ptr %6, align 8
  %67 = load i64, ptr %6, align 8
  %68 = udiv i64 %67, 4
  %69 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__114__split_bufferIfRNS_9allocatorIfEEE7__allocB8ue170006Ev(ptr noundef %14) #12
  %70 = call ptr @_ZNSt3__114__split_bufferIfRNS_9allocatorIfEEEC1EmmS3_(ptr noundef %9, i64 noundef %66, i64 noundef %68, ptr noundef nonnull align 1 dereferenceable(1) %69)
  %71 = getelementptr inbounds %"struct.std::__1::__split_buffer.38", ptr %14, i32 0, i32 1
  %72 = load ptr, ptr %71, align 8
  %73 = invoke ptr @_ZNSt3__113move_iteratorIPfEC1B8ue170006ES1_(ptr noundef %10, ptr noundef %72)
          to label %74 unwind label %95

74:                                               ; preds = %54
  %75 = getelementptr inbounds %"struct.std::__1::__split_buffer.38", ptr %14, i32 0, i32 2
  %76 = load ptr, ptr %75, align 8
  %77 = invoke ptr @_ZNSt3__113move_iteratorIPfEC1B8ue170006ES1_(ptr noundef %13, ptr noundef %76)
          to label %78 unwind label %95

78:                                               ; preds = %74
  %79 = getelementptr inbounds %"class.std::__1::move_iterator.46", ptr %10, i32 0, i32 0
  %80 = load ptr, ptr %79, align 8
  %81 = ptrtoint ptr %80 to i64
  %82 = getelementptr inbounds %"class.std::__1::move_iterator.46", ptr %13, i32 0, i32 0
  %83 = load ptr, ptr %82, align 8
  %84 = ptrtoint ptr %83 to i64
  invoke void @_ZNSt3__114__split_bufferIfRNS_9allocatorIfEEE18__construct_at_endINS_13move_iteratorIPfEEEENS_9enable_ifIXsr31__has_forward_iterator_categoryIT_EE5valueEvE4typeESA_SA_(ptr noundef %9, i64 %81, i64 %84)
          to label %85 unwind label %95

85:                                               ; preds = %78
  %86 = getelementptr inbounds %"struct.std::__1::__split_buffer.38", ptr %14, i32 0, i32 0
  %87 = getelementptr inbounds %"struct.std::__1::__split_buffer.38", ptr %9, i32 0, i32 0
  call void @_ZNSt3__14swapB8ue170006IPfEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS3_EE5valueEvE4typeERS3_S6_(ptr noundef nonnull align 8 dereferenceable(8) %86, ptr noundef nonnull align 8 dereferenceable(8) %87) #12
  %88 = getelementptr inbounds %"struct.std::__1::__split_buffer.38", ptr %14, i32 0, i32 1
  %89 = getelementptr inbounds %"struct.std::__1::__split_buffer.38", ptr %9, i32 0, i32 1
  call void @_ZNSt3__14swapB8ue170006IPfEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS3_EE5valueEvE4typeERS3_S6_(ptr noundef nonnull align 8 dereferenceable(8) %88, ptr noundef nonnull align 8 dereferenceable(8) %89) #12
  %90 = getelementptr inbounds %"struct.std::__1::__split_buffer.38", ptr %14, i32 0, i32 2
  %91 = getelementptr inbounds %"struct.std::__1::__split_buffer.38", ptr %9, i32 0, i32 2
  call void @_ZNSt3__14swapB8ue170006IPfEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS3_EE5valueEvE4typeERS3_S6_(ptr noundef nonnull align 8 dereferenceable(8) %90, ptr noundef nonnull align 8 dereferenceable(8) %91) #12
  %92 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__114__split_bufferIfRNS_9allocatorIfEEE9__end_capB8ue170006Ev(ptr noundef %14) #12
  %93 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__114__split_bufferIfRNS_9allocatorIfEEE9__end_capB8ue170006Ev(ptr noundef %9) #12
  call void @_ZNSt3__14swapB8ue170006IPfEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS3_EE5valueEvE4typeERS3_S6_(ptr noundef nonnull align 8 dereferenceable(8) %92, ptr noundef nonnull align 8 dereferenceable(8) %93) #12
  %94 = call ptr @_ZNSt3__114__split_bufferIfRNS_9allocatorIfEEED1Ev(ptr noundef %9) #12
  br label %100

95:                                               ; preds = %78, %74, %54
  %96 = landingpad { ptr, i32 }
          cleanup
  %97 = extractvalue { ptr, i32 } %96, 0
  store ptr %97, ptr %11, align 8
  %98 = extractvalue { ptr, i32 } %96, 1
  store i32 %98, ptr %12, align 4
  %99 = call ptr @_ZNSt3__114__split_bufferIfRNS_9allocatorIfEEED1Ev(ptr noundef %9) #12
  br label %110

100:                                              ; preds = %85, %26
  br label %101

101:                                              ; preds = %100, %2
  %102 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__114__split_bufferIfRNS_9allocatorIfEEE7__allocB8ue170006Ev(ptr noundef %14) #12
  %103 = getelementptr inbounds %"struct.std::__1::__split_buffer.38", ptr %14, i32 0, i32 2
  %104 = load ptr, ptr %103, align 8
  %105 = call ptr @_ZNSt3__112__to_addressB8ue170006IfEEPT_S2_(ptr noundef %104) #12
  %106 = load ptr, ptr %4, align 8
  call void @_ZNSt3__116allocator_traitsINS_9allocatorIfEEE9constructB8ue170006IfJRKfEvEEvRS2_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %102, ptr noundef %105, ptr noundef nonnull align 4 dereferenceable(4) %106)
  %107 = getelementptr inbounds %"struct.std::__1::__split_buffer.38", ptr %14, i32 0, i32 2
  %108 = load ptr, ptr %107, align 8
  %109 = getelementptr inbounds float, ptr %108, i32 1
  store ptr %109, ptr %107, align 8
  ret void

110:                                              ; preds = %95
  %111 = load ptr, ptr %11, align 8
  %112 = load i32, ptr %12, align 4
  %113 = insertvalue { ptr, i32 } undef, ptr %111, 0
  %114 = insertvalue { ptr, i32 } %113, i32 %112, 1
  resume { ptr, i32 } %114
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden ptr @_ZNSt3__16vectorIfNS_9allocatorIfEEE26__swap_out_circular_bufferERNS_14__split_bufferIfRS2_EEPf(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef %2) #1 align 2 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca %"class.std::__1::reverse_iterator.42", align 8
  %9 = alloca %"class.std::__1::reverse_iterator.42", align 8
  %10 = alloca %"class.std::__1::reverse_iterator.42", align 8
  %11 = alloca %"class.std::__1::reverse_iterator.42", align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  %12 = load ptr, ptr %4, align 8
  call void @_ZNKSt3__16vectorIfNS_9allocatorIfEEE17__annotate_deleteB8ue170006Ev(ptr noundef %12) #12
  %13 = load ptr, ptr %5, align 8
  %14 = getelementptr inbounds %"struct.std::__1::__split_buffer.38", ptr %13, i32 0, i32 1
  %15 = load ptr, ptr %14, align 8
  store ptr %15, ptr %7, align 8
  %16 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__16vectorIfNS_9allocatorIfEEE7__allocB8ue170006Ev(ptr noundef %12) #12
  %17 = load ptr, ptr %6, align 8
  %18 = call ptr @_ZNSt3__116reverse_iteratorIPfEC1B8ue170006ES1_(ptr noundef %9, ptr noundef %17)
  %19 = getelementptr inbounds %"class.std::__1::vector.9", ptr %12, i32 0, i32 0
  %20 = load ptr, ptr %19, align 8
  %21 = call ptr @_ZNSt3__116reverse_iteratorIPfEC1B8ue170006ES1_(ptr noundef %10, ptr noundef %20)
  %22 = load ptr, ptr %5, align 8
  %23 = getelementptr inbounds %"struct.std::__1::__split_buffer.38", ptr %22, i32 0, i32 1
  %24 = load ptr, ptr %23, align 8
  %25 = call ptr @_ZNSt3__116reverse_iteratorIPfEC1B8ue170006ES1_(ptr noundef %11, ptr noundef %24)
  %26 = load [2 x i64], ptr %9, align 8
  %27 = load [2 x i64], ptr %10, align 8
  %28 = load [2 x i64], ptr %11, align 8
  %29 = call [2 x i64] @_ZNSt3__142__uninitialized_allocator_move_if_noexceptB8ue170006INS_9allocatorIfEENS_16reverse_iteratorIPfEES5_fvEET1_RT_T0_S9_S6_(ptr noundef nonnull align 1 dereferenceable(1) %16, [2 x i64] %26, [2 x i64] %27, [2 x i64] %28)
  store [2 x i64] %29, ptr %8, align 8
  %30 = call ptr @_ZNKSt3__116reverse_iteratorIPfE4baseB8ue170006Ev(ptr noundef %8)
  %31 = load ptr, ptr %5, align 8
  %32 = getelementptr inbounds %"struct.std::__1::__split_buffer.38", ptr %31, i32 0, i32 1
  store ptr %30, ptr %32, align 8
  %33 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__16vectorIfNS_9allocatorIfEEE7__allocB8ue170006Ev(ptr noundef %12) #12
  %34 = load ptr, ptr %6, align 8
  %35 = getelementptr inbounds %"class.std::__1::vector.9", ptr %12, i32 0, i32 1
  %36 = load ptr, ptr %35, align 8
  %37 = load ptr, ptr %5, align 8
  %38 = getelementptr inbounds %"struct.std::__1::__split_buffer.38", ptr %37, i32 0, i32 2
  %39 = load ptr, ptr %38, align 8
  %40 = call ptr @_ZNSt3__142__uninitialized_allocator_move_if_noexceptB8ue170006INS_9allocatorIfEEPfS3_fvEET1_RT_T0_S7_S4_(ptr noundef nonnull align 1 dereferenceable(1) %33, ptr noundef %34, ptr noundef %36, ptr noundef %39)
  %41 = load ptr, ptr %5, align 8
  %42 = getelementptr inbounds %"struct.std::__1::__split_buffer.38", ptr %41, i32 0, i32 2
  store ptr %40, ptr %42, align 8
  %43 = getelementptr inbounds %"class.std::__1::vector.9", ptr %12, i32 0, i32 0
  %44 = load ptr, ptr %5, align 8
  %45 = getelementptr inbounds %"struct.std::__1::__split_buffer.38", ptr %44, i32 0, i32 1
  call void @_ZNSt3__14swapB8ue170006IPfEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS3_EE5valueEvE4typeERS3_S6_(ptr noundef nonnull align 8 dereferenceable(8) %43, ptr noundef nonnull align 8 dereferenceable(8) %45) #12
  %46 = getelementptr inbounds %"class.std::__1::vector.9", ptr %12, i32 0, i32 1
  %47 = load ptr, ptr %5, align 8
  %48 = getelementptr inbounds %"struct.std::__1::__split_buffer.38", ptr %47, i32 0, i32 2
  call void @_ZNSt3__14swapB8ue170006IPfEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS3_EE5valueEvE4typeERS3_S6_(ptr noundef nonnull align 8 dereferenceable(8) %46, ptr noundef nonnull align 8 dereferenceable(8) %48) #12
  %49 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__16vectorIfNS_9allocatorIfEEE9__end_capB8ue170006Ev(ptr noundef %12) #12
  %50 = load ptr, ptr %5, align 8
  %51 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__114__split_bufferIfRNS_9allocatorIfEEE9__end_capB8ue170006Ev(ptr noundef %50) #12
  call void @_ZNSt3__14swapB8ue170006IPfEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS3_EE5valueEvE4typeERS3_S6_(ptr noundef nonnull align 8 dereferenceable(8) %49, ptr noundef nonnull align 8 dereferenceable(8) %51) #12
  %52 = load ptr, ptr %5, align 8
  %53 = getelementptr inbounds %"struct.std::__1::__split_buffer.38", ptr %52, i32 0, i32 1
  %54 = load ptr, ptr %53, align 8
  %55 = load ptr, ptr %5, align 8
  %56 = getelementptr inbounds %"struct.std::__1::__split_buffer.38", ptr %55, i32 0, i32 0
  store ptr %54, ptr %56, align 8
  %57 = call i64 @_ZNKSt3__16vectorIfNS_9allocatorIfEEE4sizeB8ue170006Ev(ptr noundef %12) #12
  call void @_ZNKSt3__16vectorIfNS_9allocatorIfEEE14__annotate_newB8ue170006Em(ptr noundef %12, i64 noundef %57) #12
  %58 = load ptr, ptr %7, align 8
  ret ptr %58
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden ptr @_ZNKSt3__111__wrap_iterIPKfE4baseB8ue170006Ev(ptr noundef %0) #5 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.std::__1::__wrap_iter.16", ptr %3, i32 0, i32 0
  %5 = load ptr, ptr %4, align 8
  ret ptr %5
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr void @_ZNSt3__116allocator_traitsINS_9allocatorIfEEE9constructB8ue170006IfJfEvEEvRS2_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) #1 align 2 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  %7 = load ptr, ptr %4, align 8
  %8 = load ptr, ptr %5, align 8
  %9 = load ptr, ptr %6, align 8
  call void @_ZNSt3__19allocatorIfE9constructB8ue170006IfJfEEEvPT_DpOT0_(ptr noundef %7, ptr noundef %8, ptr noundef nonnull align 4 dereferenceable(4) %9)
  ret void
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden ptr @_ZNSt3__113move_backwardB8ue170006IPfS1_EET0_T_S3_S2_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #1 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca %"struct.std::__1::pair.45", align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  %8 = load ptr, ptr %4, align 8
  %9 = load ptr, ptr %5, align 8
  %10 = load ptr, ptr %6, align 8
  %11 = call [2 x i64] @_ZNSt3__115__move_backwardB8ue170006INS_17_ClassicAlgPolicyEPfS2_S2_EENS_4pairIT0_T2_EES4_T1_S5_(ptr noundef %8, ptr noundef %9, ptr noundef %10)
  store [2 x i64] %11, ptr %7, align 8
  %12 = getelementptr inbounds %"struct.std::__1::pair.45", ptr %7, i32 0, i32 1
  %13 = load ptr, ptr %12, align 8
  ret ptr %13
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr void @_ZNSt3__19allocatorIfE9constructB8ue170006IfJfEEEvPT_DpOT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) #5 align 2 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  %7 = load ptr, ptr %4, align 8
  %8 = load ptr, ptr %5, align 8
  %9 = load ptr, ptr %6, align 8
  %10 = load float, ptr %9, align 4
  store float %10, ptr %8, align 4
  ret void
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden [2 x i64] @_ZNSt3__115__move_backwardB8ue170006INS_17_ClassicAlgPolicyEPfS2_S2_EENS_4pairIT0_T2_EES4_T1_S5_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #1 {
  %4 = alloca %"struct.std::__1::pair.45", align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  store ptr %2, ptr %7, align 8
  %8 = load ptr, ptr %5, align 8
  %9 = load ptr, ptr %6, align 8
  %10 = load ptr, ptr %7, align 8
  %11 = call [2 x i64] @_ZNSt3__123__dispatch_copy_or_moveB8ue170006INS_17_ClassicAlgPolicyENS_20__move_backward_loopIS1_EENS_23__move_backward_trivialEPfS5_S5_EENS_4pairIT2_T4_EES7_T3_S8_(ptr noundef %8, ptr noundef %9, ptr noundef %10)
  store [2 x i64] %11, ptr %4, align 8
  %12 = load [2 x i64], ptr %4, align 8
  ret [2 x i64] %12
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden [2 x i64] @_ZNSt3__123__dispatch_copy_or_moveB8ue170006INS_17_ClassicAlgPolicyENS_20__move_backward_loopIS1_EENS_23__move_backward_trivialEPfS5_S5_EENS_4pairIT2_T4_EES7_T3_S8_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #1 {
  %4 = alloca %"struct.std::__1::pair.45", align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  store ptr %2, ptr %7, align 8
  %8 = load ptr, ptr %5, align 8
  %9 = load ptr, ptr %6, align 8
  %10 = load ptr, ptr %7, align 8
  %11 = call [2 x i64] @_ZNSt3__121__unwrap_and_dispatchB8ue170006INS_10__overloadINS_20__move_backward_loopINS_17_ClassicAlgPolicyEEENS_23__move_backward_trivialEEEPfS7_S7_Li0EEENS_4pairIT0_T2_EES9_T1_SA_(ptr noundef %8, ptr noundef %9, ptr noundef %10)
  store [2 x i64] %11, ptr %4, align 8
  %12 = load [2 x i64], ptr %4, align 8
  ret [2 x i64] %12
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden [2 x i64] @_ZNSt3__121__unwrap_and_dispatchB8ue170006INS_10__overloadINS_20__move_backward_loopINS_17_ClassicAlgPolicyEEENS_23__move_backward_trivialEEEPfS7_S7_Li0EEENS_4pairIT0_T2_EES9_T1_SA_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #1 {
  %4 = alloca %"struct.std::__1::pair.45", align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca %"struct.std::__1::pair.45", align 8
  %9 = alloca %"struct.std::__1::pair.45", align 8
  %10 = alloca %"struct.std::__1::__overload.37", align 1
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  store ptr %2, ptr %7, align 8
  %13 = load ptr, ptr %5, align 8
  %14 = load ptr, ptr %6, align 8
  %15 = call [2 x i64] @_ZNSt3__114__unwrap_rangeB8ue170006IPfS1_EENS_4pairIT0_S3_EET_S5_(ptr noundef %13, ptr noundef %14)
  store [2 x i64] %15, ptr %8, align 8
  %16 = getelementptr inbounds %"struct.std::__1::pair.45", ptr %8, i32 0, i32 0
  %17 = load ptr, ptr %16, align 8
  %18 = getelementptr inbounds %"struct.std::__1::pair.45", ptr %8, i32 0, i32 1
  %19 = load ptr, ptr %18, align 8
  %20 = load ptr, ptr %7, align 8
  %21 = call ptr @_ZNSt3__113__unwrap_iterB8ue170006IPfNS_18__unwrap_iter_implIS1_Lb1EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEES5_(ptr noundef %20) #12
  %22 = call [2 x i64] @_ZNKSt3__123__move_backward_trivialclB8ue170006IffLi0EEENS_4pairIPT_PT0_EES4_S4_S6_(ptr noundef %10, ptr noundef %17, ptr noundef %19, ptr noundef %21)
  store [2 x i64] %22, ptr %9, align 8
  %23 = load ptr, ptr %5, align 8
  %24 = getelementptr inbounds %"struct.std::__1::pair.45", ptr %9, i32 0, i32 0
  %25 = load ptr, ptr %24, align 8
  %26 = call ptr @_ZNSt3__114__rewrap_rangeB8ue170006IPfS1_EET_S2_T0_(ptr noundef %23, ptr noundef %25)
  store ptr %26, ptr %11, align 8
  %27 = load ptr, ptr %7, align 8
  %28 = getelementptr inbounds %"struct.std::__1::pair.45", ptr %9, i32 0, i32 1
  %29 = load ptr, ptr %28, align 8
  %30 = call ptr @_ZNSt3__113__rewrap_iterB8ue170006IPfS1_NS_18__unwrap_iter_implIS1_Lb1EEEEET_S4_T0_(ptr noundef %27, ptr noundef %29) #12
  store ptr %30, ptr %12, align 8
  %31 = call [2 x i64] @_ZNSt3__19make_pairB8ue170006IPfS1_EENS_4pairINS_18__unwrap_ref_decayIT_E4typeENS3_IT0_E4typeEEEOS4_OS7_(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(8) %12)
  store [2 x i64] %31, ptr %4, align 8
  %32 = load [2 x i64], ptr %4, align 8
  ret [2 x i64] %32
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden [2 x i64] @_ZNSt3__114__unwrap_rangeB8ue170006IPfS1_EENS_4pairIT0_S3_EET_S5_(ptr noundef %0, ptr noundef %1) #1 {
  %3 = alloca %"struct.std::__1::pair.45", align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  %8 = load ptr, ptr %4, align 8
  %9 = call ptr @_ZNSt3__113__unwrap_iterB8ue170006IPfNS_18__unwrap_iter_implIS1_Lb1EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEES5_(ptr noundef %8) #12
  store ptr %9, ptr %6, align 8
  %10 = load ptr, ptr %5, align 8
  %11 = call ptr @_ZNSt3__113__unwrap_iterB8ue170006IPfNS_18__unwrap_iter_implIS1_Lb1EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEES5_(ptr noundef %10) #12
  store ptr %11, ptr %7, align 8
  %12 = call [2 x i64] @_ZNSt3__19make_pairB8ue170006IPfS1_EENS_4pairINS_18__unwrap_ref_decayIT_E4typeENS3_IT0_E4typeEEEOS4_OS7_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %7)
  store [2 x i64] %12, ptr %3, align 8
  %13 = load [2 x i64], ptr %3, align 8
  ret [2 x i64] %13
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden [2 x i64] @_ZNKSt3__123__move_backward_trivialclB8ue170006IffLi0EEENS_4pairIPT_PT0_EES4_S4_S6_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #1 align 2 {
  %5 = alloca %"struct.std::__1::pair.45", align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  store ptr %0, ptr %6, align 8
  store ptr %1, ptr %7, align 8
  store ptr %2, ptr %8, align 8
  store ptr %3, ptr %9, align 8
  %10 = load ptr, ptr %6, align 8
  %11 = load ptr, ptr %7, align 8
  %12 = load ptr, ptr %8, align 8
  %13 = load ptr, ptr %9, align 8
  %14 = call [2 x i64] @_ZNSt3__128__copy_backward_trivial_implB8ue170006IffEENS_4pairIPT_PT0_EES3_S3_S5_(ptr noundef %11, ptr noundef %12, ptr noundef %13)
  store [2 x i64] %14, ptr %5, align 8
  %15 = load [2 x i64], ptr %5, align 8
  ret [2 x i64] %15
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden ptr @_ZNSt3__113__unwrap_iterB8ue170006IPfNS_18__unwrap_iter_implIS1_Lb1EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEES5_(ptr noundef %0) #5 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = call ptr @_ZNSt3__118__unwrap_iter_implIPfLb1EE8__unwrapB8ue170006ES1_(ptr noundef %3) #12
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden [2 x i64] @_ZNSt3__19make_pairB8ue170006IPfS1_EENS_4pairINS_18__unwrap_ref_decayIT_E4typeENS3_IT0_E4typeEEEOS4_OS7_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #5 {
  %3 = alloca %"struct.std::__1::pair.45", align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  %6 = load ptr, ptr %4, align 8
  %7 = load ptr, ptr %5, align 8
  %8 = call ptr @_ZNSt3__14pairIPfS1_EC1B8ue170006IS1_S1_LPv0EEEOT_OT0_(ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %7) #12
  %9 = load [2 x i64], ptr %3, align 8
  ret [2 x i64] %9
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden ptr @_ZNSt3__114__rewrap_rangeB8ue170006IPfS1_EET_S2_T0_(ptr noundef %0, ptr noundef %1) #5 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = load ptr, ptr %4, align 8
  %7 = call ptr @_ZNSt3__113__rewrap_iterB8ue170006IPfS1_NS_18__unwrap_iter_implIS1_Lb1EEEEET_S4_T0_(ptr noundef %5, ptr noundef %6) #12
  ret ptr %7
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden ptr @_ZNSt3__113__rewrap_iterB8ue170006IPfS1_NS_18__unwrap_iter_implIS1_Lb1EEEEET_S4_T0_(ptr noundef %0, ptr noundef %1) #5 personality ptr @__gxx_personality_v0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = load ptr, ptr %4, align 8
  %7 = invoke ptr @_ZNSt3__118__unwrap_iter_implIPfLb1EE8__rewrapB8ue170006ES1_S1_(ptr noundef %5, ptr noundef %6)
          to label %8 unwind label %9

8:                                                ; preds = %2
  ret ptr %7

9:                                                ; preds = %2
  %10 = landingpad { ptr, i32 }
          catch ptr null
  %11 = extractvalue { ptr, i32 } %10, 0
  call void @__clang_call_terminate(ptr %11) #14
  unreachable
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden [2 x i64] @_ZNSt3__128__copy_backward_trivial_implB8ue170006IffEENS_4pairIPT_PT0_EES3_S3_S5_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #1 {
  %4 = alloca %"struct.std::__1::pair.45", align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i64, align 8
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  store ptr %2, ptr %7, align 8
  %9 = load ptr, ptr %6, align 8
  %10 = load ptr, ptr %5, align 8
  %11 = ptrtoint ptr %9 to i64
  %12 = ptrtoint ptr %10 to i64
  %13 = sub i64 %11, %12
  %14 = sdiv exact i64 %13, 4
  store i64 %14, ptr %8, align 8
  %15 = load i64, ptr %8, align 8
  %16 = load ptr, ptr %7, align 8
  %17 = sub i64 0, %15
  %18 = getelementptr inbounds float, ptr %16, i64 %17
  store ptr %18, ptr %7, align 8
  %19 = load ptr, ptr %7, align 8
  %20 = load ptr, ptr %5, align 8
  %21 = load i64, ptr %8, align 8
  %22 = call ptr @_ZNSt3__119__constexpr_memmoveB8ue170006IffLi0EEEPT_S2_PT0_NS_15__element_countE(ptr noundef %19, ptr noundef %20, i64 noundef %21)
  %23 = call [2 x i64] @_ZNSt3__19make_pairB8ue170006IRPfS2_EENS_4pairINS_18__unwrap_ref_decayIT_E4typeENS4_IT0_E4typeEEEOS5_OS8_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %7)
  store [2 x i64] %23, ptr %4, align 8
  %24 = load [2 x i64], ptr %4, align 8
  ret [2 x i64] %24
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden ptr @_ZNSt3__119__constexpr_memmoveB8ue170006IffLi0EEEPT_S2_PT0_NS_15__element_countE(ptr noundef %0, ptr noundef %1, i64 noundef %2) #5 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store i64 %2, ptr %6, align 8
  %8 = load i64, ptr %6, align 8
  store i64 %8, ptr %7, align 8
  %9 = load i64, ptr %7, align 8
  %10 = icmp ugt i64 %9, 0
  br i1 %10, label %11, label %18

11:                                               ; preds = %3
  %12 = load ptr, ptr %4, align 8
  %13 = load ptr, ptr %5, align 8
  %14 = load i64, ptr %7, align 8
  %15 = sub i64 %14, 1
  %16 = mul i64 %15, 4
  %17 = add i64 %16, 4
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %12, ptr align 4 %13, i64 %17, i1 false)
  br label %18

18:                                               ; preds = %11, %3
  %19 = load ptr, ptr %4, align 8
  ret ptr %19
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden [2 x i64] @_ZNSt3__19make_pairB8ue170006IRPfS2_EENS_4pairINS_18__unwrap_ref_decayIT_E4typeENS4_IT0_E4typeEEEOS5_OS8_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #5 {
  %3 = alloca %"struct.std::__1::pair.45", align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  %6 = load ptr, ptr %4, align 8
  %7 = load ptr, ptr %5, align 8
  %8 = call ptr @_ZNSt3__14pairIPfS1_EC1B8ue170006IRS1_S4_LPv0EEEOT_OT0_(ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %7) #12
  %9 = load [2 x i64], ptr %3, align 8
  ret [2 x i64] %9
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr ptr @_ZNSt3__14pairIPfS1_EC1B8ue170006IRS1_S4_LPv0EEEOT_OT0_(ptr noundef returned %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #0 align 2 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  %7 = load ptr, ptr %4, align 8
  %8 = load ptr, ptr %5, align 8
  %9 = load ptr, ptr %6, align 8
  %10 = call ptr @_ZNSt3__14pairIPfS1_EC2B8ue170006IRS1_S4_LPv0EEEOT_OT0_(ptr noundef %7, ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %9) #12
  ret ptr %7
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr ptr @_ZNSt3__14pairIPfS1_EC2B8ue170006IRS1_S4_LPv0EEEOT_OT0_(ptr noundef returned %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #0 align 2 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  %7 = load ptr, ptr %4, align 8
  %8 = getelementptr inbounds %"struct.std::__1::pair.45", ptr %7, i32 0, i32 0
  %9 = load ptr, ptr %5, align 8
  %10 = load ptr, ptr %9, align 8
  store ptr %10, ptr %8, align 8
  %11 = getelementptr inbounds %"struct.std::__1::pair.45", ptr %7, i32 0, i32 1
  %12 = load ptr, ptr %6, align 8
  %13 = load ptr, ptr %12, align 8
  store ptr %13, ptr %11, align 8
  ret ptr %7
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden ptr @_ZNSt3__118__unwrap_iter_implIPfLb1EE8__unwrapB8ue170006ES1_(ptr noundef %0) #5 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = call ptr @_ZNSt3__112__to_addressB8ue170006IfEEPT_S2_(ptr noundef %3) #12
  ret ptr %4
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr ptr @_ZNSt3__14pairIPfS1_EC1B8ue170006IS1_S1_LPv0EEEOT_OT0_(ptr noundef returned %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #0 align 2 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  %7 = load ptr, ptr %4, align 8
  %8 = load ptr, ptr %5, align 8
  %9 = load ptr, ptr %6, align 8
  %10 = call ptr @_ZNSt3__14pairIPfS1_EC2B8ue170006IS1_S1_LPv0EEEOT_OT0_(ptr noundef %7, ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %9) #12
  ret ptr %7
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr ptr @_ZNSt3__14pairIPfS1_EC2B8ue170006IS1_S1_LPv0EEEOT_OT0_(ptr noundef returned %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #0 align 2 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  %7 = load ptr, ptr %4, align 8
  %8 = getelementptr inbounds %"struct.std::__1::pair.45", ptr %7, i32 0, i32 0
  %9 = load ptr, ptr %5, align 8
  %10 = load ptr, ptr %9, align 8
  store ptr %10, ptr %8, align 8
  %11 = getelementptr inbounds %"struct.std::__1::pair.45", ptr %7, i32 0, i32 1
  %12 = load ptr, ptr %6, align 8
  %13 = load ptr, ptr %12, align 8
  store ptr %13, ptr %11, align 8
  ret ptr %7
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden ptr @_ZNSt3__118__unwrap_iter_implIPfLb1EE8__rewrapB8ue170006ES1_S1_(ptr noundef %0, ptr noundef %1) #5 align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = load ptr, ptr %4, align 8
  %7 = load ptr, ptr %3, align 8
  %8 = call ptr @_ZNSt3__112__to_addressB8ue170006IfEEPT_S2_(ptr noundef %7) #12
  %9 = ptrtoint ptr %6 to i64
  %10 = ptrtoint ptr %8 to i64
  %11 = sub i64 %9, %10
  %12 = sdiv exact i64 %11, 4
  %13 = getelementptr inbounds float, ptr %5, i64 %12
  ret ptr %13
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden ptr @_ZNSt3__14moveB8ue170006IPfS1_EET0_T_S3_S2_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #1 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca %"struct.std::__1::pair.45", align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  %8 = load ptr, ptr %4, align 8
  %9 = load ptr, ptr %5, align 8
  %10 = load ptr, ptr %6, align 8
  %11 = call [2 x i64] @_ZNSt3__16__moveB8ue170006INS_17_ClassicAlgPolicyEPfS2_S2_EENS_4pairIT0_T2_EES4_T1_S5_(ptr noundef %8, ptr noundef %9, ptr noundef %10)
  store [2 x i64] %11, ptr %7, align 8
  %12 = getelementptr inbounds %"struct.std::__1::pair.45", ptr %7, i32 0, i32 1
  %13 = load ptr, ptr %12, align 8
  ret ptr %13
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr void @_ZNSt3__114__split_bufferIfRNS_9allocatorIfEEE18__construct_at_endINS_13move_iteratorIPfEEEENS_9enable_ifIXsr31__has_forward_iterator_categoryIT_EE5valueEvE4typeESA_SA_(ptr noundef %0, i64 %1, i64 %2) #1 align 2 {
  %4 = alloca %"class.std::__1::move_iterator.46", align 8
  %5 = alloca %"class.std::__1::move_iterator.46", align 8
  %6 = alloca ptr, align 8
  %7 = alloca %"class.std::__1::move_iterator.46", align 8
  %8 = alloca %"class.std::__1::move_iterator.46", align 8
  %9 = alloca %"class.std::__1::move_iterator.46", align 8
  %10 = getelementptr inbounds %"class.std::__1::move_iterator.46", ptr %4, i32 0, i32 0
  %11 = inttoptr i64 %1 to ptr
  store ptr %11, ptr %10, align 8
  %12 = getelementptr inbounds %"class.std::__1::move_iterator.46", ptr %5, i32 0, i32 0
  %13 = inttoptr i64 %2 to ptr
  store ptr %13, ptr %12, align 8
  store ptr %0, ptr %6, align 8
  %14 = load ptr, ptr %6, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %7, ptr align 8 %4, i64 8, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %8, ptr align 8 %4, i64 8, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %9, ptr align 8 %5, i64 8, i1 false)
  %15 = getelementptr inbounds %"class.std::__1::move_iterator.46", ptr %8, i32 0, i32 0
  %16 = load ptr, ptr %15, align 8
  %17 = ptrtoint ptr %16 to i64
  %18 = getelementptr inbounds %"class.std::__1::move_iterator.46", ptr %9, i32 0, i32 0
  %19 = load ptr, ptr %18, align 8
  %20 = ptrtoint ptr %19 to i64
  %21 = call i64 @_ZNSt3__18distanceB8ue170006INS_13move_iteratorIPfEEEENS_15iterator_traitsIT_E15difference_typeES5_S5_(i64 %17, i64 %20)
  %22 = getelementptr inbounds %"class.std::__1::move_iterator.46", ptr %7, i32 0, i32 0
  %23 = load ptr, ptr %22, align 8
  %24 = ptrtoint ptr %23 to i64
  call void @_ZNSt3__114__split_bufferIfRNS_9allocatorIfEEE28__construct_at_end_with_sizeINS_13move_iteratorIPfEEEEvT_m(ptr noundef %14, i64 %24, i64 noundef %21)
  ret void
}

; Function Attrs: noinline optnone ssp uwtable(sync)
define linkonce_odr hidden ptr @_ZNSt3__113move_iteratorIPfEC1B8ue170006ES1_(ptr noundef returned %0, ptr noundef %1) unnamed_addr #3 align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = load ptr, ptr %4, align 8
  %7 = call ptr @_ZNSt3__113move_iteratorIPfEC2B8ue170006ES1_(ptr noundef %5, ptr noundef %6)
  ret ptr %5
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden [2 x i64] @_ZNSt3__16__moveB8ue170006INS_17_ClassicAlgPolicyEPfS2_S2_EENS_4pairIT0_T2_EES4_T1_S5_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #1 {
  %4 = alloca %"struct.std::__1::pair.45", align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  store ptr %2, ptr %7, align 8
  %8 = load ptr, ptr %5, align 8
  %9 = load ptr, ptr %6, align 8
  %10 = load ptr, ptr %7, align 8
  %11 = call [2 x i64] @_ZNSt3__123__dispatch_copy_or_moveB8ue170006INS_17_ClassicAlgPolicyENS_11__move_loopIS1_EENS_14__move_trivialEPfS5_S5_EENS_4pairIT2_T4_EES7_T3_S8_(ptr noundef %8, ptr noundef %9, ptr noundef %10)
  store [2 x i64] %11, ptr %4, align 8
  %12 = load [2 x i64], ptr %4, align 8
  ret [2 x i64] %12
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden [2 x i64] @_ZNSt3__123__dispatch_copy_or_moveB8ue170006INS_17_ClassicAlgPolicyENS_11__move_loopIS1_EENS_14__move_trivialEPfS5_S5_EENS_4pairIT2_T4_EES7_T3_S8_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #1 {
  %4 = alloca %"struct.std::__1::pair.45", align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  store ptr %2, ptr %7, align 8
  %8 = load ptr, ptr %5, align 8
  %9 = load ptr, ptr %6, align 8
  %10 = load ptr, ptr %7, align 8
  %11 = call [2 x i64] @_ZNSt3__121__unwrap_and_dispatchB8ue170006INS_10__overloadINS_11__move_loopINS_17_ClassicAlgPolicyEEENS_14__move_trivialEEEPfS7_S7_Li0EEENS_4pairIT0_T2_EES9_T1_SA_(ptr noundef %8, ptr noundef %9, ptr noundef %10)
  store [2 x i64] %11, ptr %4, align 8
  %12 = load [2 x i64], ptr %4, align 8
  ret [2 x i64] %12
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden [2 x i64] @_ZNSt3__121__unwrap_and_dispatchB8ue170006INS_10__overloadINS_11__move_loopINS_17_ClassicAlgPolicyEEENS_14__move_trivialEEEPfS7_S7_Li0EEENS_4pairIT0_T2_EES9_T1_SA_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #1 {
  %4 = alloca %"struct.std::__1::pair.45", align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca %"struct.std::__1::pair.45", align 8
  %9 = alloca %"struct.std::__1::pair.45", align 8
  %10 = alloca %"struct.std::__1::__overload", align 1
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  store ptr %2, ptr %7, align 8
  %13 = load ptr, ptr %5, align 8
  %14 = load ptr, ptr %6, align 8
  %15 = call [2 x i64] @_ZNSt3__114__unwrap_rangeB8ue170006IPfS1_EENS_4pairIT0_S3_EET_S5_(ptr noundef %13, ptr noundef %14)
  store [2 x i64] %15, ptr %8, align 8
  %16 = getelementptr inbounds %"struct.std::__1::pair.45", ptr %8, i32 0, i32 0
  %17 = load ptr, ptr %16, align 8
  %18 = getelementptr inbounds %"struct.std::__1::pair.45", ptr %8, i32 0, i32 1
  %19 = load ptr, ptr %18, align 8
  %20 = load ptr, ptr %7, align 8
  %21 = call ptr @_ZNSt3__113__unwrap_iterB8ue170006IPfNS_18__unwrap_iter_implIS1_Lb1EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEES5_(ptr noundef %20) #12
  %22 = call [2 x i64] @_ZNKSt3__114__move_trivialclB8ue170006IffLi0EEENS_4pairIPT_PT0_EES4_S4_S6_(ptr noundef %10, ptr noundef %17, ptr noundef %19, ptr noundef %21)
  store [2 x i64] %22, ptr %9, align 8
  %23 = load ptr, ptr %5, align 8
  %24 = getelementptr inbounds %"struct.std::__1::pair.45", ptr %9, i32 0, i32 0
  %25 = load ptr, ptr %24, align 8
  %26 = call ptr @_ZNSt3__114__rewrap_rangeB8ue170006IPfS1_EET_S2_T0_(ptr noundef %23, ptr noundef %25)
  store ptr %26, ptr %11, align 8
  %27 = load ptr, ptr %7, align 8
  %28 = getelementptr inbounds %"struct.std::__1::pair.45", ptr %9, i32 0, i32 1
  %29 = load ptr, ptr %28, align 8
  %30 = call ptr @_ZNSt3__113__rewrap_iterB8ue170006IPfS1_NS_18__unwrap_iter_implIS1_Lb1EEEEET_S4_T0_(ptr noundef %27, ptr noundef %29) #12
  store ptr %30, ptr %12, align 8
  %31 = call [2 x i64] @_ZNSt3__19make_pairB8ue170006IPfS1_EENS_4pairINS_18__unwrap_ref_decayIT_E4typeENS3_IT0_E4typeEEEOS4_OS7_(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(8) %12)
  store [2 x i64] %31, ptr %4, align 8
  %32 = load [2 x i64], ptr %4, align 8
  ret [2 x i64] %32
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden [2 x i64] @_ZNKSt3__114__move_trivialclB8ue170006IffLi0EEENS_4pairIPT_PT0_EES4_S4_S6_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #1 align 2 {
  %5 = alloca %"struct.std::__1::pair.45", align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  store ptr %0, ptr %6, align 8
  store ptr %1, ptr %7, align 8
  store ptr %2, ptr %8, align 8
  store ptr %3, ptr %9, align 8
  %10 = load ptr, ptr %6, align 8
  %11 = load ptr, ptr %7, align 8
  %12 = load ptr, ptr %8, align 8
  %13 = load ptr, ptr %9, align 8
  %14 = call [2 x i64] @_ZNSt3__119__copy_trivial_implB8ue170006IffEENS_4pairIPT_PT0_EES3_S3_S5_(ptr noundef %11, ptr noundef %12, ptr noundef %13)
  store [2 x i64] %14, ptr %5, align 8
  %15 = load [2 x i64], ptr %5, align 8
  ret [2 x i64] %15
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden [2 x i64] @_ZNSt3__119__copy_trivial_implB8ue170006IffEENS_4pairIPT_PT0_EES3_S3_S5_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #1 {
  %4 = alloca %"struct.std::__1::pair.45", align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i64, align 8
  %9 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  store ptr %2, ptr %7, align 8
  %10 = load ptr, ptr %6, align 8
  %11 = load ptr, ptr %5, align 8
  %12 = ptrtoint ptr %10 to i64
  %13 = ptrtoint ptr %11 to i64
  %14 = sub i64 %12, %13
  %15 = sdiv exact i64 %14, 4
  store i64 %15, ptr %8, align 8
  %16 = load ptr, ptr %7, align 8
  %17 = load ptr, ptr %5, align 8
  %18 = load i64, ptr %8, align 8
  %19 = call ptr @_ZNSt3__119__constexpr_memmoveB8ue170006IffLi0EEEPT_S2_PT0_NS_15__element_countE(ptr noundef %16, ptr noundef %17, i64 noundef %18)
  %20 = load ptr, ptr %7, align 8
  %21 = load i64, ptr %8, align 8
  %22 = getelementptr inbounds float, ptr %20, i64 %21
  store ptr %22, ptr %9, align 8
  %23 = call [2 x i64] @_ZNSt3__19make_pairB8ue170006IRPfS1_EENS_4pairINS_18__unwrap_ref_decayIT_E4typeENS4_IT0_E4typeEEEOS5_OS8_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %9)
  store [2 x i64] %23, ptr %4, align 8
  %24 = load [2 x i64], ptr %4, align 8
  ret [2 x i64] %24
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden [2 x i64] @_ZNSt3__19make_pairB8ue170006IRPfS1_EENS_4pairINS_18__unwrap_ref_decayIT_E4typeENS4_IT0_E4typeEEEOS5_OS8_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #5 {
  %3 = alloca %"struct.std::__1::pair.45", align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  %6 = load ptr, ptr %4, align 8
  %7 = load ptr, ptr %5, align 8
  %8 = call ptr @_ZNSt3__14pairIPfS1_EC1B8ue170006IRS1_S1_LPv0EEEOT_OT0_(ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %7) #12
  %9 = load [2 x i64], ptr %3, align 8
  ret [2 x i64] %9
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr ptr @_ZNSt3__14pairIPfS1_EC1B8ue170006IRS1_S1_LPv0EEEOT_OT0_(ptr noundef returned %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #0 align 2 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  %7 = load ptr, ptr %4, align 8
  %8 = load ptr, ptr %5, align 8
  %9 = load ptr, ptr %6, align 8
  %10 = call ptr @_ZNSt3__14pairIPfS1_EC2B8ue170006IRS1_S1_LPv0EEEOT_OT0_(ptr noundef %7, ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %9) #12
  ret ptr %7
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr ptr @_ZNSt3__14pairIPfS1_EC2B8ue170006IRS1_S1_LPv0EEEOT_OT0_(ptr noundef returned %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #0 align 2 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  %7 = load ptr, ptr %4, align 8
  %8 = getelementptr inbounds %"struct.std::__1::pair.45", ptr %7, i32 0, i32 0
  %9 = load ptr, ptr %5, align 8
  %10 = load ptr, ptr %9, align 8
  store ptr %10, ptr %8, align 8
  %11 = getelementptr inbounds %"struct.std::__1::pair.45", ptr %7, i32 0, i32 1
  %12 = load ptr, ptr %6, align 8
  %13 = load ptr, ptr %12, align 8
  store ptr %13, ptr %11, align 8
  ret ptr %7
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr void @_ZNSt3__114__split_bufferIfRNS_9allocatorIfEEE28__construct_at_end_with_sizeINS_13move_iteratorIPfEEEEvT_m(ptr noundef %0, i64 %1, i64 noundef %2) #1 align 2 personality ptr @__gxx_personality_v0 {
  %4 = alloca %"class.std::__1::move_iterator.46", align 8
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  %7 = alloca %"struct.std::__1::__split_buffer<float, std::__1::allocator<float> &>::_ConstructTransaction", align 8
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = getelementptr inbounds %"class.std::__1::move_iterator.46", ptr %4, i32 0, i32 0
  %11 = inttoptr i64 %1 to ptr
  store ptr %11, ptr %10, align 8
  store ptr %0, ptr %5, align 8
  store i64 %2, ptr %6, align 8
  %12 = load ptr, ptr %5, align 8
  %13 = getelementptr inbounds %"struct.std::__1::__split_buffer.38", ptr %12, i32 0, i32 2
  %14 = load i64, ptr %6, align 8
  %15 = call ptr @_ZNSt3__114__split_bufferIfRNS_9allocatorIfEEE21_ConstructTransactionC1B8ue170006EPPfm(ptr noundef %7, ptr noundef %13, i64 noundef %14) #12
  br label %16

16:                                               ; preds = %35, %3
  %17 = getelementptr inbounds %"struct.std::__1::__split_buffer<float, std::__1::allocator<float> &>::_ConstructTransaction", ptr %7, i32 0, i32 0
  %18 = load ptr, ptr %17, align 8
  %19 = getelementptr inbounds %"struct.std::__1::__split_buffer<float, std::__1::allocator<float> &>::_ConstructTransaction", ptr %7, i32 0, i32 1
  %20 = load ptr, ptr %19, align 8
  %21 = icmp ne ptr %18, %20
  br i1 %21, label %22, label %41

22:                                               ; preds = %16
  %23 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__114__split_bufferIfRNS_9allocatorIfEEE7__allocB8ue170006Ev(ptr noundef %12) #12
  %24 = getelementptr inbounds %"struct.std::__1::__split_buffer<float, std::__1::allocator<float> &>::_ConstructTransaction", ptr %7, i32 0, i32 0
  %25 = load ptr, ptr %24, align 8
  %26 = call ptr @_ZNSt3__112__to_addressB8ue170006IfEEPT_S2_(ptr noundef %25) #12
  %27 = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZNKSt3__113move_iteratorIPfEdeB8ue170006Ev(ptr noundef %4)
          to label %28 unwind label %36

28:                                               ; preds = %22
  invoke void @_ZNSt3__116allocator_traitsINS_9allocatorIfEEE9constructB8ue170006IfJfEvEEvRS2_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %23, ptr noundef %26, ptr noundef nonnull align 4 dereferenceable(4) %27)
          to label %29 unwind label %36

29:                                               ; preds = %28
  br label %30

30:                                               ; preds = %29
  %31 = getelementptr inbounds %"struct.std::__1::__split_buffer<float, std::__1::allocator<float> &>::_ConstructTransaction", ptr %7, i32 0, i32 0
  %32 = load ptr, ptr %31, align 8
  %33 = getelementptr inbounds float, ptr %32, i32 1
  store ptr %33, ptr %31, align 8
  %34 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__113move_iteratorIPfEppB8ue170006Ev(ptr noundef %4)
          to label %35 unwind label %36

35:                                               ; preds = %30
  br label %16, !llvm.loop !15

36:                                               ; preds = %30, %28, %22
  %37 = landingpad { ptr, i32 }
          cleanup
  %38 = extractvalue { ptr, i32 } %37, 0
  store ptr %38, ptr %8, align 8
  %39 = extractvalue { ptr, i32 } %37, 1
  store i32 %39, ptr %9, align 4
  %40 = call ptr @_ZNSt3__114__split_bufferIfRNS_9allocatorIfEEE21_ConstructTransactionD1B8ue170006Ev(ptr noundef %7) #12
  br label %43

41:                                               ; preds = %16
  %42 = call ptr @_ZNSt3__114__split_bufferIfRNS_9allocatorIfEEE21_ConstructTransactionD1B8ue170006Ev(ptr noundef %7) #12
  ret void

43:                                               ; preds = %36
  %44 = load ptr, ptr %8, align 8
  %45 = load i32, ptr %9, align 4
  %46 = insertvalue { ptr, i32 } undef, ptr %44, 0
  %47 = insertvalue { ptr, i32 } %46, i32 %45, 1
  resume { ptr, i32 } %47
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden i64 @_ZNSt3__18distanceB8ue170006INS_13move_iteratorIPfEEEENS_15iterator_traitsIT_E15difference_typeES5_S5_(i64 %0, i64 %1) #1 {
  %3 = alloca %"class.std::__1::move_iterator.46", align 8
  %4 = alloca %"class.std::__1::move_iterator.46", align 8
  %5 = alloca %"class.std::__1::move_iterator.46", align 8
  %6 = alloca %"class.std::__1::move_iterator.46", align 8
  %7 = alloca %"struct.std::__1::random_access_iterator_tag", align 1
  %8 = getelementptr inbounds %"class.std::__1::move_iterator.46", ptr %3, i32 0, i32 0
  %9 = inttoptr i64 %0 to ptr
  store ptr %9, ptr %8, align 8
  %10 = getelementptr inbounds %"class.std::__1::move_iterator.46", ptr %4, i32 0, i32 0
  %11 = inttoptr i64 %1 to ptr
  store ptr %11, ptr %10, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %5, ptr align 8 %3, i64 8, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %6, ptr align 8 %4, i64 8, i1 false)
  %12 = getelementptr inbounds %"class.std::__1::move_iterator.46", ptr %5, i32 0, i32 0
  %13 = load ptr, ptr %12, align 8
  %14 = ptrtoint ptr %13 to i64
  %15 = getelementptr inbounds %"class.std::__1::move_iterator.46", ptr %6, i32 0, i32 0
  %16 = load ptr, ptr %15, align 8
  %17 = ptrtoint ptr %16 to i64
  %18 = call i64 @_ZNSt3__110__distanceB8ue170006INS_13move_iteratorIPfEEEENS_15iterator_traitsIT_E15difference_typeES5_S5_NS_26random_access_iterator_tagE(i64 %14, i64 %17)
  ret i64 %18
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden ptr @_ZNSt3__114__split_bufferIfRNS_9allocatorIfEEE21_ConstructTransactionC1B8ue170006EPPfm(ptr noundef returned %0, ptr noundef %1, i64 noundef %2) unnamed_addr #0 align 2 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store i64 %2, ptr %6, align 8
  %7 = load ptr, ptr %4, align 8
  %8 = load ptr, ptr %5, align 8
  %9 = load i64, ptr %6, align 8
  %10 = call ptr @_ZNSt3__114__split_bufferIfRNS_9allocatorIfEEE21_ConstructTransactionC2B8ue170006EPPfm(ptr noundef %7, ptr noundef %8, i64 noundef %9) #12
  ret ptr %7
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef nonnull align 4 dereferenceable(4) ptr @_ZNKSt3__113move_iteratorIPfEdeB8ue170006Ev(ptr noundef %0) #5 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.std::__1::move_iterator.46", ptr %3, i32 0, i32 0
  %5 = load ptr, ptr %4, align 8
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__113move_iteratorIPfEppB8ue170006Ev(ptr noundef %0) #5 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.std::__1::move_iterator.46", ptr %3, i32 0, i32 0
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds float, ptr %5, i32 1
  store ptr %6, ptr %4, align 8
  ret ptr %3
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden ptr @_ZNSt3__114__split_bufferIfRNS_9allocatorIfEEE21_ConstructTransactionD1B8ue170006Ev(ptr noundef returned %0) unnamed_addr #0 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = call ptr @_ZNSt3__114__split_bufferIfRNS_9allocatorIfEEE21_ConstructTransactionD2B8ue170006Ev(ptr noundef %3) #12
  ret ptr %3
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden ptr @_ZNSt3__114__split_bufferIfRNS_9allocatorIfEEE21_ConstructTransactionC2B8ue170006EPPfm(ptr noundef returned %0, ptr noundef %1, i64 noundef %2) unnamed_addr #0 align 2 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store i64 %2, ptr %6, align 8
  %7 = load ptr, ptr %4, align 8
  %8 = getelementptr inbounds %"struct.std::__1::__split_buffer<float, std::__1::allocator<float> &>::_ConstructTransaction", ptr %7, i32 0, i32 0
  %9 = load ptr, ptr %5, align 8
  %10 = load ptr, ptr %9, align 8
  store ptr %10, ptr %8, align 8
  %11 = getelementptr inbounds %"struct.std::__1::__split_buffer<float, std::__1::allocator<float> &>::_ConstructTransaction", ptr %7, i32 0, i32 1
  %12 = load ptr, ptr %5, align 8
  %13 = load ptr, ptr %12, align 8
  %14 = load i64, ptr %6, align 8
  %15 = getelementptr inbounds float, ptr %13, i64 %14
  store ptr %15, ptr %11, align 8
  %16 = getelementptr inbounds %"struct.std::__1::__split_buffer<float, std::__1::allocator<float> &>::_ConstructTransaction", ptr %7, i32 0, i32 2
  %17 = load ptr, ptr %5, align 8
  store ptr %17, ptr %16, align 8
  ret ptr %7
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden ptr @_ZNSt3__114__split_bufferIfRNS_9allocatorIfEEE21_ConstructTransactionD2B8ue170006Ev(ptr noundef returned %0) unnamed_addr #0 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"struct.std::__1::__split_buffer<float, std::__1::allocator<float> &>::_ConstructTransaction", ptr %3, i32 0, i32 0
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %"struct.std::__1::__split_buffer<float, std::__1::allocator<float> &>::_ConstructTransaction", ptr %3, i32 0, i32 2
  %7 = load ptr, ptr %6, align 8
  store ptr %5, ptr %7, align 8
  ret ptr %3
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden i64 @_ZNSt3__110__distanceB8ue170006INS_13move_iteratorIPfEEEENS_15iterator_traitsIT_E15difference_typeES5_S5_NS_26random_access_iterator_tagE(i64 %0, i64 %1) #1 {
  %3 = alloca %"class.std::__1::move_iterator.46", align 8
  %4 = alloca %"class.std::__1::move_iterator.46", align 8
  %5 = alloca %"struct.std::__1::random_access_iterator_tag", align 1
  %6 = getelementptr inbounds %"class.std::__1::move_iterator.46", ptr %3, i32 0, i32 0
  %7 = inttoptr i64 %0 to ptr
  store ptr %7, ptr %6, align 8
  %8 = getelementptr inbounds %"class.std::__1::move_iterator.46", ptr %4, i32 0, i32 0
  %9 = inttoptr i64 %1 to ptr
  store ptr %9, ptr %8, align 8
  %10 = call i64 @_ZNSt3__1miB8ue170006IPfS1_EEDTmicldtfp_4baseEcldtfp0_4baseEERKNS_13move_iteratorIT_EERKNS3_IT0_EE(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %3)
  ret i64 %10
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden i64 @_ZNSt3__1miB8ue170006IPfS1_EEDTmicldtfp_4baseEcldtfp0_4baseEERKNS_13move_iteratorIT_EERKNS3_IT0_EE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #1 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = call ptr @_ZNKSt3__113move_iteratorIPfE4baseB8ue170006Ev(ptr noundef %5)
  %7 = load ptr, ptr %4, align 8
  %8 = call ptr @_ZNKSt3__113move_iteratorIPfE4baseB8ue170006Ev(ptr noundef %7)
  %9 = ptrtoint ptr %6 to i64
  %10 = ptrtoint ptr %8 to i64
  %11 = sub i64 %9, %10
  %12 = sdiv exact i64 %11, 4
  ret i64 %12
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden ptr @_ZNKSt3__113move_iteratorIPfE4baseB8ue170006Ev(ptr noundef %0) #5 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.std::__1::move_iterator.46", ptr %3, i32 0, i32 0
  %5 = load ptr, ptr %4, align 8
  ret ptr %5
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden ptr @_ZNSt3__113move_iteratorIPfEC2B8ue170006ES1_(ptr noundef returned %0, ptr noundef %1) unnamed_addr #0 align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = getelementptr inbounds %"class.std::__1::move_iterator.46", ptr %5, i32 0, i32 0
  %7 = load ptr, ptr %4, align 8
  store ptr %7, ptr %6, align 8
  ret ptr %5
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden ptr @_ZNSt3__142__uninitialized_allocator_move_if_noexceptB8ue170006INS_9allocatorIfEEPfS3_fvEET1_RT_T0_S7_S4_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #1 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  store ptr %2, ptr %7, align 8
  store ptr %3, ptr %8, align 8
  %9 = load ptr, ptr %6, align 8
  %10 = load ptr, ptr %7, align 8
  %11 = load ptr, ptr %8, align 8
  %12 = call ptr @_ZNSt3__14moveB8ue170006IPfS1_EET0_T_S3_S2_(ptr noundef %9, ptr noundef %10, ptr noundef %11)
  ret ptr %12
}

; Function Attrs: mustprogress noinline noreturn optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNKSt3__16vectorIfNS_9allocatorIfEEE20__throw_out_of_rangeB8ue170006Ev(ptr noundef %0) #8 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  call void @_ZNSt3__120__throw_out_of_rangeB8ue170006EPKc(ptr noundef @.str.2) #13
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden i64 @_ZNSt3__1miB8ue170006IPKfS2_EEDTmicldtfp_4baseEcldtfp0_4baseEERKNS_11__wrap_iterIT_EERKNS4_IT0_EE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #5 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = call ptr @_ZNKSt3__111__wrap_iterIPKfE4baseB8ue170006Ev(ptr noundef %5) #12
  %7 = load ptr, ptr %4, align 8
  %8 = call ptr @_ZNKSt3__111__wrap_iterIPKfE4baseB8ue170006Ev(ptr noundef %7) #12
  %9 = ptrtoint ptr %6 to i64
  %10 = ptrtoint ptr %8 to i64
  %11 = sub i64 %9, %10
  %12 = sdiv exact i64 %11, 4
  ret i64 %12
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden i64 @_ZNKSt3__16vectorIfNS_9allocatorIfEEE6cbeginB8ue170006Ev(ptr noundef %0) #5 align 2 {
  %2 = alloca %"class.std::__1::__wrap_iter.16", align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  %4 = load ptr, ptr %3, align 8
  %5 = call i64 @_ZNKSt3__16vectorIfNS_9allocatorIfEEE5beginB8ue170006Ev(ptr noundef %4) #12
  %6 = getelementptr inbounds %"class.std::__1::__wrap_iter.16", ptr %2, i32 0, i32 0
  %7 = inttoptr i64 %5 to ptr
  store ptr %7, ptr %6, align 8
  %8 = getelementptr inbounds %"class.std::__1::__wrap_iter.16", ptr %2, i32 0, i32 0
  %9 = load ptr, ptr %8, align 8
  %10 = ptrtoint ptr %9 to i64
  ret i64 %10
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNSt3__16vectorIfNS_9allocatorIfEEE17__destruct_at_endB8ue170006EPf(ptr noundef %0, ptr noundef %1) #5 align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %6 = load ptr, ptr %3, align 8
  %7 = call i64 @_ZNKSt3__16vectorIfNS_9allocatorIfEEE4sizeB8ue170006Ev(ptr noundef %6) #12
  store i64 %7, ptr %5, align 8
  %8 = load ptr, ptr %4, align 8
  call void @_ZNSt3__16vectorIfNS_9allocatorIfEEE22__base_destruct_at_endB8ue170006EPf(ptr noundef %6, ptr noundef %8) #12
  %9 = load i64, ptr %5, align 8
  call void @_ZNKSt3__16vectorIfNS_9allocatorIfEEE17__annotate_shrinkB8ue170006Em(ptr noundef %6, i64 noundef %9) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden i64 @_ZNKSt3__16vectorIfNS_9allocatorIfEEE5beginB8ue170006Ev(ptr noundef %0) #5 align 2 {
  %2 = alloca %"class.std::__1::__wrap_iter.16", align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %"class.std::__1::vector.9", ptr %4, i32 0, i32 0
  %6 = load ptr, ptr %5, align 8
  %7 = call i64 @_ZNKSt3__16vectorIfNS_9allocatorIfEEE11__make_iterB8ue170006EPKf(ptr noundef %4, ptr noundef %6) #12
  %8 = getelementptr inbounds %"class.std::__1::__wrap_iter.16", ptr %2, i32 0, i32 0
  %9 = inttoptr i64 %7 to ptr
  store ptr %9, ptr %8, align 8
  %10 = getelementptr inbounds %"class.std::__1::__wrap_iter.16", ptr %2, i32 0, i32 0
  %11 = load ptr, ptr %10, align 8
  %12 = ptrtoint ptr %11 to i64
  ret i64 %12
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden i64 @_ZNKSt3__16vectorIfNS_9allocatorIfEEE11__make_iterB8ue170006EPKf(ptr noundef %0, ptr noundef %1) #5 align 2 {
  %3 = alloca %"class.std::__1::__wrap_iter.16", align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  %6 = load ptr, ptr %4, align 8
  %7 = load ptr, ptr %5, align 8
  %8 = call ptr @_ZNSt3__111__wrap_iterIPKfEC1B8ue170006ES2_(ptr noundef %3, ptr noundef %7) #12
  %9 = getelementptr inbounds %"class.std::__1::__wrap_iter.16", ptr %3, i32 0, i32 0
  %10 = load ptr, ptr %9, align 8
  %11 = ptrtoint ptr %10 to i64
  ret i64 %11
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden ptr @_ZNSt3__111__wrap_iterIPKfEC1B8ue170006ES2_(ptr noundef returned %0, ptr noundef %1) unnamed_addr #0 align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = load ptr, ptr %4, align 8
  %7 = call ptr @_ZNSt3__111__wrap_iterIPKfEC2B8ue170006ES2_(ptr noundef %5, ptr noundef %6) #12
  ret ptr %5
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden ptr @_ZNSt3__111__wrap_iterIPKfEC2B8ue170006ES2_(ptr noundef returned %0, ptr noundef %1) unnamed_addr #0 align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = getelementptr inbounds %"class.std::__1::__wrap_iter.16", ptr %5, i32 0, i32 0
  %7 = load ptr, ptr %4, align 8
  store ptr %7, ptr %6, align 8
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNSt3__16vectorIfNS_9allocatorIfEEE22__base_destruct_at_endB8ue170006EPf(ptr noundef %0, ptr noundef %1) #5 align 2 personality ptr @__gxx_personality_v0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %6 = load ptr, ptr %3, align 8
  %7 = getelementptr inbounds %"class.std::__1::vector.9", ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 8
  store ptr %8, ptr %5, align 8
  br label %9

9:                                                ; preds = %18, %2
  %10 = load ptr, ptr %4, align 8
  %11 = load ptr, ptr %5, align 8
  %12 = icmp ne ptr %10, %11
  br i1 %12, label %13, label %19

13:                                               ; preds = %9
  %14 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__16vectorIfNS_9allocatorIfEEE7__allocB8ue170006Ev(ptr noundef %6) #12
  %15 = load ptr, ptr %5, align 8
  %16 = getelementptr inbounds float, ptr %15, i32 -1
  store ptr %16, ptr %5, align 8
  %17 = call ptr @_ZNSt3__112__to_addressB8ue170006IfEEPT_S2_(ptr noundef %16) #12
  invoke void @_ZNSt3__116allocator_traitsINS_9allocatorIfEEE7destroyB8ue170006IfvEEvRS2_PT_(ptr noundef nonnull align 1 dereferenceable(1) %14, ptr noundef %17)
          to label %18 unwind label %22

18:                                               ; preds = %13
  br label %9, !llvm.loop !16

19:                                               ; preds = %9
  %20 = load ptr, ptr %4, align 8
  %21 = getelementptr inbounds %"class.std::__1::vector.9", ptr %6, i32 0, i32 1
  store ptr %20, ptr %21, align 8
  ret void

22:                                               ; preds = %13
  %23 = landingpad { ptr, i32 }
          catch ptr null
  %24 = extractvalue { ptr, i32 } %23, 0
  call void @__clang_call_terminate(ptr %24) #14
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNKSt3__16vectorIfNS_9allocatorIfEEE17__annotate_shrinkB8ue170006Em(ptr noundef %0, i64 noundef %1) #5 align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  store ptr %0, ptr %3, align 8
  store i64 %1, ptr %4, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = call ptr @_ZNKSt3__16vectorIfNS_9allocatorIfEEE4dataB8ue170006Ev(ptr noundef %5) #12
  %7 = call ptr @_ZNKSt3__16vectorIfNS_9allocatorIfEEE4dataB8ue170006Ev(ptr noundef %5) #12
  %8 = call i64 @_ZNKSt3__16vectorIfNS_9allocatorIfEEE8capacityB8ue170006Ev(ptr noundef %5) #12
  %9 = getelementptr inbounds float, ptr %7, i64 %8
  %10 = call ptr @_ZNKSt3__16vectorIfNS_9allocatorIfEEE4dataB8ue170006Ev(ptr noundef %5) #12
  %11 = load i64, ptr %4, align 8
  %12 = getelementptr inbounds float, ptr %10, i64 %11
  %13 = call ptr @_ZNKSt3__16vectorIfNS_9allocatorIfEEE4dataB8ue170006Ev(ptr noundef %5) #12
  %14 = call i64 @_ZNKSt3__16vectorIfNS_9allocatorIfEEE4sizeB8ue170006Ev(ptr noundef %5) #12
  %15 = getelementptr inbounds float, ptr %13, i64 %14
  call void @_ZNKSt3__16vectorIfNS_9allocatorIfEEE31__annotate_contiguous_containerB8ue170006EPKvS5_S5_S5_(ptr noundef %5, ptr noundef %6, ptr noundef %9, ptr noundef %12, ptr noundef %15) #12
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden ptr @_ZNSt3__16vectorIcNS_9allocatorIcEEEC2B8ue170006Ev(ptr noundef returned %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca %"struct.std::__1::__default_init_tag", align 1
  store ptr %0, ptr %2, align 8
  %5 = load ptr, ptr %2, align 8
  %6 = getelementptr inbounds %"class.std::__1::vector.19", ptr %5, i32 0, i32 0
  store ptr null, ptr %6, align 8
  %7 = getelementptr inbounds %"class.std::__1::vector.19", ptr %5, i32 0, i32 1
  store ptr null, ptr %7, align 8
  %8 = getelementptr inbounds %"class.std::__1::vector.19", ptr %5, i32 0, i32 2
  store ptr null, ptr %3, align 8
  %9 = invoke ptr @_ZNSt3__117__compressed_pairIPcNS_9allocatorIcEEEC1B8ue170006IDnNS_18__default_init_tagEEEOT_OT0_(ptr noundef %8, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %10 unwind label %11

10:                                               ; preds = %1
  ret ptr %5

11:                                               ; preds = %1
  %12 = landingpad { ptr, i32 }
          catch ptr null
  %13 = extractvalue { ptr, i32 } %12, 0
  call void @__clang_call_terminate(ptr %13) #14
  unreachable
}

; Function Attrs: noinline optnone ssp uwtable(sync)
define linkonce_odr ptr @_ZNSt3__117__compressed_pairIPcNS_9allocatorIcEEEC1B8ue170006IDnNS_18__default_init_tagEEEOT_OT0_(ptr noundef returned %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #3 align 2 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  %7 = load ptr, ptr %4, align 8
  %8 = load ptr, ptr %5, align 8
  %9 = load ptr, ptr %6, align 8
  %10 = call ptr @_ZNSt3__117__compressed_pairIPcNS_9allocatorIcEEEC2B8ue170006IDnNS_18__default_init_tagEEEOT_OT0_(ptr noundef %7, ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 1 dereferenceable(1) %9)
  ret ptr %7
}

; Function Attrs: noinline optnone ssp uwtable(sync)
define linkonce_odr ptr @_ZNSt3__117__compressed_pairIPcNS_9allocatorIcEEEC2B8ue170006IDnNS_18__default_init_tagEEEOT_OT0_(ptr noundef returned %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #3 align 2 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca %"struct.std::__1::__default_init_tag", align 1
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  %8 = load ptr, ptr %4, align 8
  %9 = load ptr, ptr %5, align 8
  %10 = call ptr @_ZNSt3__122__compressed_pair_elemIPcLi0ELb0EEC2B8ue170006IDnvEEOT_(ptr noundef %8, ptr noundef nonnull align 8 dereferenceable(8) %9)
  %11 = load ptr, ptr %6, align 8
  %12 = call ptr @_ZNSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EEC2B8ue170006ENS_18__default_init_tagE(ptr noundef %8)
  ret ptr %8
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr ptr @_ZNSt3__122__compressed_pair_elemIPcLi0ELb0EEC2B8ue170006IDnvEEOT_(ptr noundef returned %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = getelementptr inbounds %"struct.std::__1::__compressed_pair_elem.21", ptr %5, i32 0, i32 0
  %7 = load ptr, ptr %4, align 8
  store ptr null, ptr %6, align 8
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__16vectorIcNS_9allocatorIcEEE9__end_capB8ue170006Ev(ptr noundef %0) #5 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.std::__1::vector.19", ptr %3, i32 0, i32 2
  %5 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__117__compressed_pairIPcNS_9allocatorIcEEE5firstB8ue170006Ev(ptr noundef %4) #12
  ret ptr %5
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr void @_ZNSt3__16vectorIcNS_9allocatorIcEEE22__construct_one_at_endB8ue170006IJRKcEEEvDpOT_(ptr noundef %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #1 align 2 personality ptr @__gxx_personality_v0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca %"struct.std::__1::vector<char>::_ConstructTransaction", align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %8 = load ptr, ptr %3, align 8
  %9 = call ptr @_ZNSt3__16vectorIcNS_9allocatorIcEEE21_ConstructTransactionC1B8ue170006ERS3_m(ptr noundef %5, ptr noundef nonnull align 8 dereferenceable(24) %8, i64 noundef 1)
  %10 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__16vectorIcNS_9allocatorIcEEE7__allocB8ue170006Ev(ptr noundef %8) #12
  %11 = getelementptr inbounds %"struct.std::__1::vector<char>::_ConstructTransaction", ptr %5, i32 0, i32 1
  %12 = load ptr, ptr %11, align 8
  %13 = call ptr @_ZNSt3__112__to_addressB8ue170006IcEEPT_S2_(ptr noundef %12) #12
  %14 = load ptr, ptr %4, align 8
  invoke void @_ZNSt3__116allocator_traitsINS_9allocatorIcEEE9constructB8ue170006IcJRKcEvEEvRS2_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %10, ptr noundef %13, ptr noundef nonnull align 1 dereferenceable(1) %14)
          to label %15 unwind label %20

15:                                               ; preds = %2
  %16 = getelementptr inbounds %"struct.std::__1::vector<char>::_ConstructTransaction", ptr %5, i32 0, i32 1
  %17 = load ptr, ptr %16, align 8
  %18 = getelementptr inbounds i8, ptr %17, i32 1
  store ptr %18, ptr %16, align 8
  %19 = call ptr @_ZNSt3__16vectorIcNS_9allocatorIcEEE21_ConstructTransactionD1B8ue170006Ev(ptr noundef %5) #12
  ret void

20:                                               ; preds = %2
  %21 = landingpad { ptr, i32 }
          cleanup
  %22 = extractvalue { ptr, i32 } %21, 0
  store ptr %22, ptr %6, align 8
  %23 = extractvalue { ptr, i32 } %21, 1
  store i32 %23, ptr %7, align 4
  %24 = call ptr @_ZNSt3__16vectorIcNS_9allocatorIcEEE21_ConstructTransactionD1B8ue170006Ev(ptr noundef %5) #12
  br label %25

25:                                               ; preds = %20
  %26 = load ptr, ptr %6, align 8
  %27 = load i32, ptr %7, align 4
  %28 = insertvalue { ptr, i32 } undef, ptr %26, 0
  %29 = insertvalue { ptr, i32 } %28, i32 %27, 1
  resume { ptr, i32 } %29
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr void @_ZNSt3__16vectorIcNS_9allocatorIcEEE21__push_back_slow_pathIRKcEEvOT_(ptr noundef %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #1 align 2 personality ptr @__gxx_personality_v0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca %"struct.std::__1::__split_buffer.47", align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %9 = load ptr, ptr %3, align 8
  %10 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__16vectorIcNS_9allocatorIcEEE7__allocB8ue170006Ev(ptr noundef %9) #12
  store ptr %10, ptr %5, align 8
  %11 = call i64 @_ZNKSt3__16vectorIcNS_9allocatorIcEEE4sizeB8ue170006Ev(ptr noundef %9) #12
  %12 = add i64 %11, 1
  %13 = call i64 @_ZNKSt3__16vectorIcNS_9allocatorIcEEE11__recommendB8ue170006Em(ptr noundef %9, i64 noundef %12)
  %14 = call i64 @_ZNKSt3__16vectorIcNS_9allocatorIcEEE4sizeB8ue170006Ev(ptr noundef %9) #12
  %15 = load ptr, ptr %5, align 8
  %16 = call ptr @_ZNSt3__114__split_bufferIcRNS_9allocatorIcEEEC1EmmS3_(ptr noundef %6, i64 noundef %13, i64 noundef %14, ptr noundef nonnull align 1 dereferenceable(1) %15)
  %17 = load ptr, ptr %5, align 8
  %18 = getelementptr inbounds %"struct.std::__1::__split_buffer.47", ptr %6, i32 0, i32 2
  %19 = load ptr, ptr %18, align 8
  %20 = call ptr @_ZNSt3__112__to_addressB8ue170006IcEEPT_S2_(ptr noundef %19) #12
  %21 = load ptr, ptr %4, align 8
  invoke void @_ZNSt3__116allocator_traitsINS_9allocatorIcEEE9constructB8ue170006IcJRKcEvEEvRS2_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %17, ptr noundef %20, ptr noundef nonnull align 1 dereferenceable(1) %21)
          to label %22 unwind label %28

22:                                               ; preds = %2
  %23 = getelementptr inbounds %"struct.std::__1::__split_buffer.47", ptr %6, i32 0, i32 2
  %24 = load ptr, ptr %23, align 8
  %25 = getelementptr inbounds i8, ptr %24, i32 1
  store ptr %25, ptr %23, align 8
  invoke void @_ZNSt3__16vectorIcNS_9allocatorIcEEE26__swap_out_circular_bufferERNS_14__split_bufferIcRS2_EE(ptr noundef %9, ptr noundef nonnull align 8 dereferenceable(40) %6)
          to label %26 unwind label %28

26:                                               ; preds = %22
  %27 = call ptr @_ZNSt3__114__split_bufferIcRNS_9allocatorIcEEED1Ev(ptr noundef %6) #12
  ret void

28:                                               ; preds = %22, %2
  %29 = landingpad { ptr, i32 }
          cleanup
  %30 = extractvalue { ptr, i32 } %29, 0
  store ptr %30, ptr %7, align 8
  %31 = extractvalue { ptr, i32 } %29, 1
  store i32 %31, ptr %8, align 4
  %32 = call ptr @_ZNSt3__114__split_bufferIcRNS_9allocatorIcEEED1Ev(ptr noundef %6) #12
  br label %33

33:                                               ; preds = %28
  %34 = load ptr, ptr %7, align 8
  %35 = load i32, ptr %8, align 4
  %36 = insertvalue { ptr, i32 } undef, ptr %34, 0
  %37 = insertvalue { ptr, i32 } %36, i32 %35, 1
  resume { ptr, i32 } %37
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__117__compressed_pairIPcNS_9allocatorIcEEE5firstB8ue170006Ev(ptr noundef %0) #5 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__122__compressed_pair_elemIPcLi0ELb0EE5__getB8ue170006Ev(ptr noundef %3) #12
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__122__compressed_pair_elemIPcLi0ELb0EE5__getB8ue170006Ev(ptr noundef %0) #5 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"struct.std::__1::__compressed_pair_elem.21", ptr %3, i32 0, i32 0
  ret ptr %4
}

; Function Attrs: noinline optnone ssp uwtable(sync)
define linkonce_odr hidden ptr @_ZNSt3__16vectorIcNS_9allocatorIcEEE21_ConstructTransactionC1B8ue170006ERS3_m(ptr noundef returned %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %2) unnamed_addr #3 align 2 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store i64 %2, ptr %6, align 8
  %7 = load ptr, ptr %4, align 8
  %8 = load ptr, ptr %5, align 8
  %9 = load i64, ptr %6, align 8
  %10 = call ptr @_ZNSt3__16vectorIcNS_9allocatorIcEEE21_ConstructTransactionC2B8ue170006ERS3_m(ptr noundef %7, ptr noundef nonnull align 8 dereferenceable(24) %8, i64 noundef %9)
  ret ptr %7
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr void @_ZNSt3__116allocator_traitsINS_9allocatorIcEEE9constructB8ue170006IcJRKcEvEEvRS2_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) #1 align 2 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  %7 = load ptr, ptr %4, align 8
  %8 = load ptr, ptr %5, align 8
  %9 = load ptr, ptr %6, align 8
  call void @_ZNSt3__19allocatorIcE9constructB8ue170006IcJRKcEEEvPT_DpOT0_(ptr noundef %7, ptr noundef %8, ptr noundef nonnull align 1 dereferenceable(1) %9)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__16vectorIcNS_9allocatorIcEEE7__allocB8ue170006Ev(ptr noundef %0) #5 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.std::__1::vector.19", ptr %3, i32 0, i32 2
  %5 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__117__compressed_pairIPcNS_9allocatorIcEEE6secondB8ue170006Ev(ptr noundef %4) #12
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden ptr @_ZNSt3__112__to_addressB8ue170006IcEEPT_S2_(ptr noundef %0) #5 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  ret ptr %3
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden ptr @_ZNSt3__16vectorIcNS_9allocatorIcEEE21_ConstructTransactionD1B8ue170006Ev(ptr noundef returned %0) unnamed_addr #0 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = call ptr @_ZNSt3__16vectorIcNS_9allocatorIcEEE21_ConstructTransactionD2B8ue170006Ev(ptr noundef %3) #12
  ret ptr %3
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden ptr @_ZNSt3__16vectorIcNS_9allocatorIcEEE21_ConstructTransactionC2B8ue170006ERS3_m(ptr noundef returned %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %2) unnamed_addr #0 align 2 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store i64 %2, ptr %6, align 8
  %7 = load ptr, ptr %4, align 8
  %8 = getelementptr inbounds %"struct.std::__1::vector<char>::_ConstructTransaction", ptr %7, i32 0, i32 0
  %9 = load ptr, ptr %5, align 8
  store ptr %9, ptr %8, align 8
  %10 = getelementptr inbounds %"struct.std::__1::vector<char>::_ConstructTransaction", ptr %7, i32 0, i32 1
  %11 = load ptr, ptr %5, align 8
  %12 = getelementptr inbounds %"class.std::__1::vector.19", ptr %11, i32 0, i32 1
  %13 = load ptr, ptr %12, align 8
  store ptr %13, ptr %10, align 8
  %14 = getelementptr inbounds %"struct.std::__1::vector<char>::_ConstructTransaction", ptr %7, i32 0, i32 2
  %15 = load ptr, ptr %5, align 8
  %16 = getelementptr inbounds %"class.std::__1::vector.19", ptr %15, i32 0, i32 1
  %17 = load ptr, ptr %16, align 8
  %18 = load i64, ptr %6, align 8
  %19 = getelementptr inbounds i8, ptr %17, i64 %18
  store ptr %19, ptr %14, align 8
  ret ptr %7
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr void @_ZNSt3__19allocatorIcE9constructB8ue170006IcJRKcEEEvPT_DpOT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) #5 align 2 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  %7 = load ptr, ptr %4, align 8
  %8 = load ptr, ptr %5, align 8
  %9 = load ptr, ptr %6, align 8
  %10 = load i8, ptr %9, align 1
  store i8 %10, ptr %8, align 1
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__117__compressed_pairIPcNS_9allocatorIcEEE6secondB8ue170006Ev(ptr noundef %0) #5 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EE5__getB8ue170006Ev(ptr noundef %3) #12
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EE5__getB8ue170006Ev(ptr noundef %0) #5 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  ret ptr %3
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden ptr @_ZNSt3__16vectorIcNS_9allocatorIcEEE21_ConstructTransactionD2B8ue170006Ev(ptr noundef returned %0) unnamed_addr #0 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"struct.std::__1::vector<char>::_ConstructTransaction", ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %"struct.std::__1::vector<char>::_ConstructTransaction", ptr %3, i32 0, i32 0
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %"class.std::__1::vector.19", ptr %7, i32 0, i32 1
  store ptr %5, ptr %8, align 8
  ret ptr %3
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden i64 @_ZNKSt3__16vectorIcNS_9allocatorIcEEE11__recommendB8ue170006Em(ptr noundef %0, i64 noundef %1) #1 align 2 {
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
  store i64 %1, ptr %5, align 8
  %9 = load ptr, ptr %4, align 8
  %10 = call i64 @_ZNKSt3__16vectorIcNS_9allocatorIcEEE8max_sizeEv(ptr noundef %9) #12
  store i64 %10, ptr %6, align 8
  %11 = load i64, ptr %5, align 8
  %12 = load i64, ptr %6, align 8
  %13 = icmp ugt i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  call void @_ZNKSt3__16vectorIcNS_9allocatorIcEEE20__throw_length_errorB8ue170006Ev(ptr noundef %9) #13
  unreachable

15:                                               ; preds = %2
  %16 = call i64 @_ZNKSt3__16vectorIcNS_9allocatorIcEEE8capacityB8ue170006Ev(ptr noundef %9) #12
  store i64 %16, ptr %7, align 8
  %17 = load i64, ptr %7, align 8
  %18 = load i64, ptr %6, align 8
  %19 = udiv i64 %18, 2
  %20 = icmp uge i64 %17, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %15
  %22 = load i64, ptr %6, align 8
  store i64 %22, ptr %3, align 8
  br label %28

23:                                               ; preds = %15
  %24 = load i64, ptr %7, align 8
  %25 = mul i64 2, %24
  store i64 %25, ptr %8, align 8
  %26 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__13maxB8ue170006ImEERKT_S3_S3_(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %5)
  %27 = load i64, ptr %26, align 8
  store i64 %27, ptr %3, align 8
  br label %28

28:                                               ; preds = %23, %21
  %29 = load i64, ptr %3, align 8
  ret i64 %29
}

; Function Attrs: noinline optnone ssp uwtable(sync)
define linkonce_odr hidden ptr @_ZNSt3__114__split_bufferIcRNS_9allocatorIcEEEC1EmmS3_(ptr noundef returned %0, i64 noundef %1, i64 noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) unnamed_addr #3 align 2 {
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
  store i64 %1, ptr %6, align 8
  store i64 %2, ptr %7, align 8
  store ptr %3, ptr %8, align 8
  %9 = load ptr, ptr %5, align 8
  %10 = load i64, ptr %6, align 8
  %11 = load i64, ptr %7, align 8
  %12 = load ptr, ptr %8, align 8
  %13 = call ptr @_ZNSt3__114__split_bufferIcRNS_9allocatorIcEEEC2EmmS3_(ptr noundef %9, i64 noundef %10, i64 noundef %11, ptr noundef nonnull align 1 dereferenceable(1) %12)
  ret ptr %9
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNSt3__16vectorIcNS_9allocatorIcEEE26__swap_out_circular_bufferERNS_14__split_bufferIcRS2_EE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(40) %1) #1 align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca %"class.std::__1::reverse_iterator.51", align 8
  %6 = alloca %"class.std::__1::reverse_iterator.51", align 8
  %7 = alloca %"class.std::__1::reverse_iterator.51", align 8
  %8 = alloca %"class.std::__1::reverse_iterator.51", align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %9 = load ptr, ptr %3, align 8
  call void @_ZNKSt3__16vectorIcNS_9allocatorIcEEE17__annotate_deleteB8ue170006Ev(ptr noundef %9) #12
  %10 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__16vectorIcNS_9allocatorIcEEE7__allocB8ue170006Ev(ptr noundef %9) #12
  %11 = getelementptr inbounds %"class.std::__1::vector.19", ptr %9, i32 0, i32 1
  %12 = load ptr, ptr %11, align 8
  %13 = call ptr @_ZNSt3__116reverse_iteratorIPcEC1B8ue170006ES1_(ptr noundef %6, ptr noundef %12)
  %14 = getelementptr inbounds %"class.std::__1::vector.19", ptr %9, i32 0, i32 0
  %15 = load ptr, ptr %14, align 8
  %16 = call ptr @_ZNSt3__116reverse_iteratorIPcEC1B8ue170006ES1_(ptr noundef %7, ptr noundef %15)
  %17 = load ptr, ptr %4, align 8
  %18 = getelementptr inbounds %"struct.std::__1::__split_buffer.47", ptr %17, i32 0, i32 1
  %19 = load ptr, ptr %18, align 8
  %20 = call ptr @_ZNSt3__116reverse_iteratorIPcEC1B8ue170006ES1_(ptr noundef %8, ptr noundef %19)
  %21 = load [2 x i64], ptr %6, align 8
  %22 = load [2 x i64], ptr %7, align 8
  %23 = load [2 x i64], ptr %8, align 8
  %24 = call [2 x i64] @_ZNSt3__142__uninitialized_allocator_move_if_noexceptB8ue170006INS_9allocatorIcEENS_16reverse_iteratorIPcEES5_cvEET1_RT_T0_S9_S6_(ptr noundef nonnull align 1 dereferenceable(1) %10, [2 x i64] %21, [2 x i64] %22, [2 x i64] %23)
  store [2 x i64] %24, ptr %5, align 8
  %25 = call ptr @_ZNKSt3__116reverse_iteratorIPcE4baseB8ue170006Ev(ptr noundef %5)
  %26 = load ptr, ptr %4, align 8
  %27 = getelementptr inbounds %"struct.std::__1::__split_buffer.47", ptr %26, i32 0, i32 1
  store ptr %25, ptr %27, align 8
  %28 = getelementptr inbounds %"class.std::__1::vector.19", ptr %9, i32 0, i32 0
  %29 = load ptr, ptr %4, align 8
  %30 = getelementptr inbounds %"struct.std::__1::__split_buffer.47", ptr %29, i32 0, i32 1
  call void @_ZNSt3__14swapB8ue170006IPcEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS3_EE5valueEvE4typeERS3_S6_(ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef nonnull align 8 dereferenceable(8) %30) #12
  %31 = getelementptr inbounds %"class.std::__1::vector.19", ptr %9, i32 0, i32 1
  %32 = load ptr, ptr %4, align 8
  %33 = getelementptr inbounds %"struct.std::__1::__split_buffer.47", ptr %32, i32 0, i32 2
  call void @_ZNSt3__14swapB8ue170006IPcEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS3_EE5valueEvE4typeERS3_S6_(ptr noundef nonnull align 8 dereferenceable(8) %31, ptr noundef nonnull align 8 dereferenceable(8) %33) #12
  %34 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__16vectorIcNS_9allocatorIcEEE9__end_capB8ue170006Ev(ptr noundef %9) #12
  %35 = load ptr, ptr %4, align 8
  %36 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__114__split_bufferIcRNS_9allocatorIcEEE9__end_capB8ue170006Ev(ptr noundef %35) #12
  call void @_ZNSt3__14swapB8ue170006IPcEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS3_EE5valueEvE4typeERS3_S6_(ptr noundef nonnull align 8 dereferenceable(8) %34, ptr noundef nonnull align 8 dereferenceable(8) %36) #12
  %37 = load ptr, ptr %4, align 8
  %38 = getelementptr inbounds %"struct.std::__1::__split_buffer.47", ptr %37, i32 0, i32 1
  %39 = load ptr, ptr %38, align 8
  %40 = load ptr, ptr %4, align 8
  %41 = getelementptr inbounds %"struct.std::__1::__split_buffer.47", ptr %40, i32 0, i32 0
  store ptr %39, ptr %41, align 8
  %42 = call i64 @_ZNKSt3__16vectorIcNS_9allocatorIcEEE4sizeB8ue170006Ev(ptr noundef %9) #12
  call void @_ZNKSt3__16vectorIcNS_9allocatorIcEEE14__annotate_newB8ue170006Em(ptr noundef %9, i64 noundef %42) #12
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden ptr @_ZNSt3__114__split_bufferIcRNS_9allocatorIcEEED1Ev(ptr noundef returned %0) unnamed_addr #0 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = call ptr @_ZNSt3__114__split_bufferIcRNS_9allocatorIcEEED2Ev(ptr noundef %3) #12
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden i64 @_ZNKSt3__16vectorIcNS_9allocatorIcEEE8max_sizeEv(ptr noundef %0) #5 align 2 personality ptr @__gxx_personality_v0 {
  %2 = alloca ptr, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store ptr %0, ptr %2, align 8
  %5 = load ptr, ptr %2, align 8
  %6 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt3__16vectorIcNS_9allocatorIcEEE7__allocB8ue170006Ev(ptr noundef %5) #12
  %7 = call i64 @_ZNSt3__116allocator_traitsINS_9allocatorIcEEE8max_sizeB8ue170006IS2_vEEmRKS2_(ptr noundef nonnull align 1 dereferenceable(1) %6) #12
  store i64 %7, ptr %3, align 8
  %8 = call i64 @_ZNSt3__114numeric_limitsIlE3maxB8ue170006Ev() #12
  store i64 %8, ptr %4, align 8
  %9 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__13minB8ue170006ImEERKT_S3_S3_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %10 unwind label %12

10:                                               ; preds = %1
  %11 = load i64, ptr %9, align 8
  ret i64 %11

12:                                               ; preds = %1
  %13 = landingpad { ptr, i32 }
          catch ptr null
  %14 = extractvalue { ptr, i32 } %13, 0
  call void @__clang_call_terminate(ptr %14) #14
  unreachable
}

; Function Attrs: mustprogress noinline noreturn optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNKSt3__16vectorIcNS_9allocatorIcEEE20__throw_length_errorB8ue170006Ev(ptr noundef %0) #8 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  call void @_ZNSt3__120__throw_length_errorB8ue170006EPKc(ptr noundef @.str.2) #13
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden i64 @_ZNKSt3__16vectorIcNS_9allocatorIcEEE8capacityB8ue170006Ev(ptr noundef %0) #5 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt3__16vectorIcNS_9allocatorIcEEE9__end_capB8ue170006Ev(ptr noundef %3) #12
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %"class.std::__1::vector.19", ptr %3, i32 0, i32 0
  %7 = load ptr, ptr %6, align 8
  %8 = ptrtoint ptr %5 to i64
  %9 = ptrtoint ptr %7 to i64
  %10 = sub i64 %8, %9
  ret i64 %10
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr i64 @_ZNSt3__116allocator_traitsINS_9allocatorIcEEE8max_sizeB8ue170006IS2_vEEmRKS2_(ptr noundef nonnull align 1 dereferenceable(1) %0) #5 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = call i64 @_ZNKSt3__19allocatorIcE8max_sizeB8ue170006Ev(ptr noundef %3) #12
  ret i64 %4
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt3__16vectorIcNS_9allocatorIcEEE7__allocB8ue170006Ev(ptr noundef %0) #5 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.std::__1::vector.19", ptr %3, i32 0, i32 2
  %5 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt3__117__compressed_pairIPcNS_9allocatorIcEEE6secondB8ue170006Ev(ptr noundef %4) #12
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden i64 @_ZNKSt3__19allocatorIcE8max_sizeB8ue170006Ev(ptr noundef %0) #5 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  ret i64 -1
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt3__117__compressed_pairIPcNS_9allocatorIcEEE6secondB8ue170006Ev(ptr noundef %0) #5 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EE5__getB8ue170006Ev(ptr noundef %3) #12
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EE5__getB8ue170006Ev(ptr noundef %0) #5 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt3__16vectorIcNS_9allocatorIcEEE9__end_capB8ue170006Ev(ptr noundef %0) #5 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.std::__1::vector.19", ptr %3, i32 0, i32 2
  %5 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt3__117__compressed_pairIPcNS_9allocatorIcEEE5firstB8ue170006Ev(ptr noundef %4) #12
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt3__117__compressed_pairIPcNS_9allocatorIcEEE5firstB8ue170006Ev(ptr noundef %0) #5 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt3__122__compressed_pair_elemIPcLi0ELb0EE5__getB8ue170006Ev(ptr noundef %3) #12
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt3__122__compressed_pair_elemIPcLi0ELb0EE5__getB8ue170006Ev(ptr noundef %0) #5 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"struct.std::__1::__compressed_pair_elem.21", ptr %3, i32 0, i32 0
  ret ptr %4
}

; Function Attrs: noinline optnone ssp uwtable(sync)
define linkonce_odr hidden ptr @_ZNSt3__114__split_bufferIcRNS_9allocatorIcEEEC2EmmS3_(ptr noundef returned %0, i64 noundef %1, i64 noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) unnamed_addr #3 align 2 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca %"struct.std::__1::__allocation_result.50", align 8
  store ptr %0, ptr %6, align 8
  store i64 %1, ptr %7, align 8
  store i64 %2, ptr %8, align 8
  store ptr %3, ptr %9, align 8
  %12 = load ptr, ptr %6, align 8
  store ptr %12, ptr %5, align 8
  %13 = getelementptr inbounds %"struct.std::__1::__split_buffer.47", ptr %12, i32 0, i32 3
  store ptr null, ptr %10, align 8
  %14 = load ptr, ptr %9, align 8
  %15 = call ptr @_ZNSt3__117__compressed_pairIPcRNS_9allocatorIcEEEC1B8ue170006IDnS4_EEOT_OT0_(ptr noundef %13, ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 1 dereferenceable(1) %14)
  %16 = load i64, ptr %7, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %4
  %19 = getelementptr inbounds %"struct.std::__1::__split_buffer.47", ptr %12, i32 0, i32 0
  store ptr null, ptr %19, align 8
  br label %29

20:                                               ; preds = %4
  %21 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__114__split_bufferIcRNS_9allocatorIcEEE7__allocB8ue170006Ev(ptr noundef %12) #12
  %22 = load i64, ptr %7, align 8
  %23 = call [2 x i64] @_ZNSt3__119__allocate_at_leastB8ue170006INS_9allocatorIcEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS5_m(ptr noundef nonnull align 1 dereferenceable(1) %21, i64 noundef %22)
  store [2 x i64] %23, ptr %11, align 8
  %24 = getelementptr inbounds %"struct.std::__1::__allocation_result.50", ptr %11, i32 0, i32 0
  %25 = load ptr, ptr %24, align 8
  %26 = getelementptr inbounds %"struct.std::__1::__split_buffer.47", ptr %12, i32 0, i32 0
  store ptr %25, ptr %26, align 8
  %27 = getelementptr inbounds %"struct.std::__1::__allocation_result.50", ptr %11, i32 0, i32 1
  %28 = load i64, ptr %27, align 8
  store i64 %28, ptr %7, align 8
  br label %29

29:                                               ; preds = %20, %18
  %30 = getelementptr inbounds %"struct.std::__1::__split_buffer.47", ptr %12, i32 0, i32 0
  %31 = load ptr, ptr %30, align 8
  %32 = load i64, ptr %8, align 8
  %33 = getelementptr inbounds i8, ptr %31, i64 %32
  %34 = getelementptr inbounds %"struct.std::__1::__split_buffer.47", ptr %12, i32 0, i32 2
  store ptr %33, ptr %34, align 8
  %35 = getelementptr inbounds %"struct.std::__1::__split_buffer.47", ptr %12, i32 0, i32 1
  store ptr %33, ptr %35, align 8
  %36 = getelementptr inbounds %"struct.std::__1::__split_buffer.47", ptr %12, i32 0, i32 0
  %37 = load ptr, ptr %36, align 8
  %38 = load i64, ptr %7, align 8
  %39 = getelementptr inbounds i8, ptr %37, i64 %38
  %40 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__114__split_bufferIcRNS_9allocatorIcEEE9__end_capB8ue170006Ev(ptr noundef %12) #12
  store ptr %39, ptr %40, align 8
  %41 = load ptr, ptr %5, align 8
  ret ptr %41
}

; Function Attrs: noinline optnone ssp uwtable(sync)
define linkonce_odr ptr @_ZNSt3__117__compressed_pairIPcRNS_9allocatorIcEEEC1B8ue170006IDnS4_EEOT_OT0_(ptr noundef returned %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #3 align 2 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  %7 = load ptr, ptr %4, align 8
  %8 = load ptr, ptr %5, align 8
  %9 = load ptr, ptr %6, align 8
  %10 = call ptr @_ZNSt3__117__compressed_pairIPcRNS_9allocatorIcEEEC2B8ue170006IDnS4_EEOT_OT0_(ptr noundef %7, ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 1 dereferenceable(1) %9)
  ret ptr %7
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden [2 x i64] @_ZNSt3__119__allocate_at_leastB8ue170006INS_9allocatorIcEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS5_m(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1) #1 {
  %3 = alloca %"struct.std::__1::__allocation_result.50", align 8
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
  store i64 %1, ptr %5, align 8
  %6 = getelementptr inbounds %"struct.std::__1::__allocation_result.50", ptr %3, i32 0, i32 0
  %7 = load ptr, ptr %4, align 8
  %8 = load i64, ptr %5, align 8
  %9 = call ptr @_ZNSt3__19allocatorIcE8allocateB8ue170006Em(ptr noundef %7, i64 noundef %8)
  store ptr %9, ptr %6, align 8
  %10 = getelementptr inbounds %"struct.std::__1::__allocation_result.50", ptr %3, i32 0, i32 1
  %11 = load i64, ptr %5, align 8
  store i64 %11, ptr %10, align 8
  %12 = load [2 x i64], ptr %3, align 8
  ret [2 x i64] %12
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__114__split_bufferIcRNS_9allocatorIcEEE7__allocB8ue170006Ev(ptr noundef %0) #5 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"struct.std::__1::__split_buffer.47", ptr %3, i32 0, i32 3
  %5 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__117__compressed_pairIPcRNS_9allocatorIcEEE6secondB8ue170006Ev(ptr noundef %4) #12
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__114__split_bufferIcRNS_9allocatorIcEEE9__end_capB8ue170006Ev(ptr noundef %0) #5 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"struct.std::__1::__split_buffer.47", ptr %3, i32 0, i32 3
  %5 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__117__compressed_pairIPcRNS_9allocatorIcEEE5firstB8ue170006Ev(ptr noundef %4) #12
  ret ptr %5
}

; Function Attrs: noinline optnone ssp uwtable(sync)
define linkonce_odr ptr @_ZNSt3__117__compressed_pairIPcRNS_9allocatorIcEEEC2B8ue170006IDnS4_EEOT_OT0_(ptr noundef returned %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #3 align 2 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  %7 = load ptr, ptr %4, align 8
  %8 = load ptr, ptr %5, align 8
  %9 = call ptr @_ZNSt3__122__compressed_pair_elemIPcLi0ELb0EEC2B8ue170006IDnvEEOT_(ptr noundef %7, ptr noundef nonnull align 8 dereferenceable(8) %8)
  %10 = getelementptr inbounds i8, ptr %7, i64 8
  %11 = load ptr, ptr %6, align 8
  %12 = call ptr @_ZNSt3__122__compressed_pair_elemIRNS_9allocatorIcEELi1ELb0EEC2B8ue170006IS3_vEEOT_(ptr noundef %10, ptr noundef nonnull align 1 dereferenceable(1) %11)
  ret ptr %7
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr ptr @_ZNSt3__122__compressed_pair_elemIRNS_9allocatorIcEELi1ELb0EEC2B8ue170006IS3_vEEOT_(ptr noundef returned %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #0 align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = getelementptr inbounds %"struct.std::__1::__compressed_pair_elem.49", ptr %5, i32 0, i32 0
  %7 = load ptr, ptr %4, align 8
  store ptr %7, ptr %6, align 8
  ret ptr %5
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden ptr @_ZNSt3__19allocatorIcE8allocateB8ue170006Em(ptr noundef %0, i64 noundef %1) #1 align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  store ptr %0, ptr %3, align 8
  store i64 %1, ptr %4, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = load i64, ptr %4, align 8
  %7 = call i64 @_ZNSt3__116allocator_traitsINS_9allocatorIcEEE8max_sizeB8ue170006IS2_vEEmRKS2_(ptr noundef nonnull align 1 dereferenceable(1) %5) #12
  %8 = icmp ugt i64 %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  call void @_ZSt28__throw_bad_array_new_lengthB8ue170006v() #13
  unreachable

10:                                               ; preds = %2
  %11 = load i64, ptr %4, align 8
  %12 = mul i64 %11, 1
  %13 = call ptr @_ZNSt3__117__libcpp_allocateB8ue170006Emm(i64 noundef %12, i64 noundef 1)
  ret ptr %13
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__117__compressed_pairIPcRNS_9allocatorIcEEE6secondB8ue170006Ev(ptr noundef %0) #5 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds i8, ptr %3, i64 8
  %5 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__122__compressed_pair_elemIRNS_9allocatorIcEELi1ELb0EE5__getB8ue170006Ev(ptr noundef %4) #12
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__122__compressed_pair_elemIRNS_9allocatorIcEELi1ELb0EE5__getB8ue170006Ev(ptr noundef %0) #5 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"struct.std::__1::__compressed_pair_elem.49", ptr %3, i32 0, i32 0
  %5 = load ptr, ptr %4, align 8
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__117__compressed_pairIPcRNS_9allocatorIcEEE5firstB8ue170006Ev(ptr noundef %0) #5 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__122__compressed_pair_elemIPcLi0ELb0EE5__getB8ue170006Ev(ptr noundef %3) #12
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNKSt3__16vectorIcNS_9allocatorIcEEE17__annotate_deleteB8ue170006Ev(ptr noundef %0) #5 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = call ptr @_ZNKSt3__16vectorIcNS_9allocatorIcEEE4dataB8ue170006Ev(ptr noundef %3) #12
  %5 = call ptr @_ZNKSt3__16vectorIcNS_9allocatorIcEEE4dataB8ue170006Ev(ptr noundef %3) #12
  %6 = call i64 @_ZNKSt3__16vectorIcNS_9allocatorIcEEE8capacityB8ue170006Ev(ptr noundef %3) #12
  %7 = getelementptr inbounds i8, ptr %5, i64 %6
  %8 = call ptr @_ZNKSt3__16vectorIcNS_9allocatorIcEEE4dataB8ue170006Ev(ptr noundef %3) #12
  %9 = call i64 @_ZNKSt3__16vectorIcNS_9allocatorIcEEE4sizeB8ue170006Ev(ptr noundef %3) #12
  %10 = getelementptr inbounds i8, ptr %8, i64 %9
  %11 = call ptr @_ZNKSt3__16vectorIcNS_9allocatorIcEEE4dataB8ue170006Ev(ptr noundef %3) #12
  %12 = call i64 @_ZNKSt3__16vectorIcNS_9allocatorIcEEE8capacityB8ue170006Ev(ptr noundef %3) #12
  %13 = getelementptr inbounds i8, ptr %11, i64 %12
  call void @_ZNKSt3__16vectorIcNS_9allocatorIcEEE31__annotate_contiguous_containerB8ue170006EPKvS5_S5_S5_(ptr noundef %3, ptr noundef %4, ptr noundef %7, ptr noundef %10, ptr noundef %13) #12
  ret void
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden [2 x i64] @_ZNSt3__142__uninitialized_allocator_move_if_noexceptB8ue170006INS_9allocatorIcEENS_16reverse_iteratorIPcEES5_cvEET1_RT_T0_S9_S6_(ptr noundef nonnull align 1 dereferenceable(1) %0, [2 x i64] %1, [2 x i64] %2, [2 x i64] %3) #1 {
  %5 = alloca %"class.std::__1::reverse_iterator.51", align 8
  %6 = alloca %"class.std::__1::reverse_iterator.51", align 8
  %7 = alloca %"class.std::__1::reverse_iterator.51", align 8
  %8 = alloca %"class.std::__1::reverse_iterator.51", align 8
  %9 = alloca ptr, align 8
  %10 = alloca %"class.std::__1::reverse_iterator.51", align 8
  %11 = alloca %"class.std::__1::reverse_iterator.51", align 8
  %12 = alloca %"class.std::__1::reverse_iterator.51", align 8
  store [2 x i64] %1, ptr %6, align 8
  store [2 x i64] %2, ptr %7, align 8
  store [2 x i64] %3, ptr %8, align 8
  store ptr %0, ptr %9, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %10, ptr align 8 %6, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %11, ptr align 8 %7, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %12, ptr align 8 %8, i64 16, i1 false)
  %13 = load [2 x i64], ptr %10, align 8
  %14 = load [2 x i64], ptr %11, align 8
  %15 = load [2 x i64], ptr %12, align 8
  %16 = call [2 x i64] @_ZNSt3__14moveB8ue170006INS_16reverse_iteratorIPcEES3_EET0_T_S5_S4_([2 x i64] %13, [2 x i64] %14, [2 x i64] %15)
  store [2 x i64] %16, ptr %5, align 8
  %17 = load [2 x i64], ptr %5, align 8
  ret [2 x i64] %17
}

; Function Attrs: noinline optnone ssp uwtable(sync)
define linkonce_odr hidden ptr @_ZNSt3__116reverse_iteratorIPcEC1B8ue170006ES1_(ptr noundef returned %0, ptr noundef %1) unnamed_addr #3 align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = load ptr, ptr %4, align 8
  %7 = call ptr @_ZNSt3__116reverse_iteratorIPcEC2B8ue170006ES1_(ptr noundef %5, ptr noundef %6)
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden ptr @_ZNKSt3__116reverse_iteratorIPcE4baseB8ue170006Ev(ptr noundef %0) #5 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.std::__1::reverse_iterator.51", ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNSt3__14swapB8ue170006IPcEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS3_EE5valueEvE4typeERS3_S6_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #5 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %6 = load ptr, ptr %3, align 8
  %7 = load ptr, ptr %6, align 8
  store ptr %7, ptr %5, align 8
  %8 = load ptr, ptr %4, align 8
  %9 = load ptr, ptr %8, align 8
  %10 = load ptr, ptr %3, align 8
  store ptr %9, ptr %10, align 8
  %11 = load ptr, ptr %5, align 8
  %12 = load ptr, ptr %4, align 8
  store ptr %11, ptr %12, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNKSt3__16vectorIcNS_9allocatorIcEEE14__annotate_newB8ue170006Em(ptr noundef %0, i64 noundef %1) #5 align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  store ptr %0, ptr %3, align 8
  store i64 %1, ptr %4, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = call ptr @_ZNKSt3__16vectorIcNS_9allocatorIcEEE4dataB8ue170006Ev(ptr noundef %5) #12
  %7 = call ptr @_ZNKSt3__16vectorIcNS_9allocatorIcEEE4dataB8ue170006Ev(ptr noundef %5) #12
  %8 = call i64 @_ZNKSt3__16vectorIcNS_9allocatorIcEEE8capacityB8ue170006Ev(ptr noundef %5) #12
  %9 = getelementptr inbounds i8, ptr %7, i64 %8
  %10 = call ptr @_ZNKSt3__16vectorIcNS_9allocatorIcEEE4dataB8ue170006Ev(ptr noundef %5) #12
  %11 = call i64 @_ZNKSt3__16vectorIcNS_9allocatorIcEEE8capacityB8ue170006Ev(ptr noundef %5) #12
  %12 = getelementptr inbounds i8, ptr %10, i64 %11
  %13 = call ptr @_ZNKSt3__16vectorIcNS_9allocatorIcEEE4dataB8ue170006Ev(ptr noundef %5) #12
  %14 = load i64, ptr %4, align 8
  %15 = getelementptr inbounds i8, ptr %13, i64 %14
  call void @_ZNKSt3__16vectorIcNS_9allocatorIcEEE31__annotate_contiguous_containerB8ue170006EPKvS5_S5_S5_(ptr noundef %5, ptr noundef %6, ptr noundef %9, ptr noundef %12, ptr noundef %15) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNKSt3__16vectorIcNS_9allocatorIcEEE31__annotate_contiguous_containerB8ue170006EPKvS5_S5_S5_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #5 align 2 {
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  store ptr %0, ptr %6, align 8
  store ptr %1, ptr %7, align 8
  store ptr %2, ptr %8, align 8
  store ptr %3, ptr %9, align 8
  store ptr %4, ptr %10, align 8
  %11 = load ptr, ptr %6, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden ptr @_ZNKSt3__16vectorIcNS_9allocatorIcEEE4dataB8ue170006Ev(ptr noundef %0) #5 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.std::__1::vector.19", ptr %3, i32 0, i32 0
  %5 = load ptr, ptr %4, align 8
  %6 = call ptr @_ZNSt3__112__to_addressB8ue170006IcEEPT_S2_(ptr noundef %5) #12
  ret ptr %6
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden [2 x i64] @_ZNSt3__14moveB8ue170006INS_16reverse_iteratorIPcEES3_EET0_T_S5_S4_([2 x i64] %0, [2 x i64] %1, [2 x i64] %2) #1 {
  %4 = alloca %"class.std::__1::reverse_iterator.51", align 8
  %5 = alloca %"class.std::__1::reverse_iterator.51", align 8
  %6 = alloca %"class.std::__1::reverse_iterator.51", align 8
  %7 = alloca %"class.std::__1::reverse_iterator.51", align 8
  %8 = alloca %"struct.std::__1::pair.53", align 8
  %9 = alloca %"class.std::__1::reverse_iterator.51", align 8
  %10 = alloca %"class.std::__1::reverse_iterator.51", align 8
  %11 = alloca %"class.std::__1::reverse_iterator.51", align 8
  store [2 x i64] %0, ptr %5, align 8
  store [2 x i64] %1, ptr %6, align 8
  store [2 x i64] %2, ptr %7, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %9, ptr align 8 %5, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %10, ptr align 8 %6, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %11, ptr align 8 %7, i64 16, i1 false)
  %12 = load [2 x i64], ptr %9, align 8
  %13 = load [2 x i64], ptr %10, align 8
  %14 = load [2 x i64], ptr %11, align 8
  call void @_ZNSt3__16__moveB8ue170006INS_17_ClassicAlgPolicyENS_16reverse_iteratorIPcEES4_S4_EENS_4pairIT0_T2_EES6_T1_S7_(ptr sret(%"struct.std::__1::pair.53") align 8 %8, [2 x i64] %12, [2 x i64] %13, [2 x i64] %14)
  %15 = getelementptr inbounds %"struct.std::__1::pair.53", ptr %8, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %4, ptr align 8 %15, i64 16, i1 false)
  %16 = load [2 x i64], ptr %4, align 8
  ret [2 x i64] %16
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNSt3__16__moveB8ue170006INS_17_ClassicAlgPolicyENS_16reverse_iteratorIPcEES4_S4_EENS_4pairIT0_T2_EES6_T1_S7_(ptr noalias sret(%"struct.std::__1::pair.53") align 8 %0, [2 x i64] %1, [2 x i64] %2, [2 x i64] %3) #1 {
  %5 = alloca %"class.std::__1::reverse_iterator.51", align 8
  %6 = alloca %"class.std::__1::reverse_iterator.51", align 8
  %7 = alloca %"class.std::__1::reverse_iterator.51", align 8
  %8 = alloca %"class.std::__1::reverse_iterator.51", align 8
  %9 = alloca %"class.std::__1::reverse_iterator.51", align 8
  %10 = alloca %"class.std::__1::reverse_iterator.51", align 8
  store [2 x i64] %1, ptr %5, align 8
  store [2 x i64] %2, ptr %6, align 8
  store [2 x i64] %3, ptr %7, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %8, ptr align 8 %5, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %9, ptr align 8 %6, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %10, ptr align 8 %7, i64 16, i1 false)
  %11 = load [2 x i64], ptr %8, align 8
  %12 = load [2 x i64], ptr %9, align 8
  %13 = load [2 x i64], ptr %10, align 8
  call void @_ZNSt3__123__dispatch_copy_or_moveB8ue170006INS_17_ClassicAlgPolicyENS_11__move_loopIS1_EENS_14__move_trivialENS_16reverse_iteratorIPcEES7_S7_EENS_4pairIT2_T4_EES9_T3_SA_(ptr sret(%"struct.std::__1::pair.53") align 8 %0, [2 x i64] %11, [2 x i64] %12, [2 x i64] %13)
  ret void
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNSt3__123__dispatch_copy_or_moveB8ue170006INS_17_ClassicAlgPolicyENS_11__move_loopIS1_EENS_14__move_trivialENS_16reverse_iteratorIPcEES7_S7_EENS_4pairIT2_T4_EES9_T3_SA_(ptr noalias sret(%"struct.std::__1::pair.53") align 8 %0, [2 x i64] %1, [2 x i64] %2, [2 x i64] %3) #1 {
  %5 = alloca %"class.std::__1::reverse_iterator.51", align 8
  %6 = alloca %"class.std::__1::reverse_iterator.51", align 8
  %7 = alloca %"class.std::__1::reverse_iterator.51", align 8
  %8 = alloca %"class.std::__1::reverse_iterator.51", align 8
  %9 = alloca %"class.std::__1::reverse_iterator.51", align 8
  %10 = alloca %"class.std::__1::reverse_iterator.51", align 8
  store [2 x i64] %1, ptr %5, align 8
  store [2 x i64] %2, ptr %6, align 8
  store [2 x i64] %3, ptr %7, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %8, ptr align 8 %5, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %9, ptr align 8 %6, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %10, ptr align 8 %7, i64 16, i1 false)
  %11 = load [2 x i64], ptr %8, align 8
  %12 = load [2 x i64], ptr %9, align 8
  %13 = load [2 x i64], ptr %10, align 8
  call void @_ZNSt3__121__unwrap_and_dispatchB8ue170006INS_10__overloadINS_11__move_loopINS_17_ClassicAlgPolicyEEENS_14__move_trivialEEENS_16reverse_iteratorIPcEES9_S9_Li0EEENS_4pairIT0_T2_EESB_T1_SC_(ptr sret(%"struct.std::__1::pair.53") align 8 %0, [2 x i64] %11, [2 x i64] %12, [2 x i64] %13)
  ret void
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNSt3__121__unwrap_and_dispatchB8ue170006INS_10__overloadINS_11__move_loopINS_17_ClassicAlgPolicyEEENS_14__move_trivialEEENS_16reverse_iteratorIPcEES9_S9_Li0EEENS_4pairIT0_T2_EESB_T1_SC_(ptr noalias sret(%"struct.std::__1::pair.53") align 8 %0, [2 x i64] %1, [2 x i64] %2, [2 x i64] %3) #1 {
  %5 = alloca %"class.std::__1::reverse_iterator.51", align 8
  %6 = alloca %"class.std::__1::reverse_iterator.51", align 8
  %7 = alloca %"class.std::__1::reverse_iterator.51", align 8
  %8 = alloca %"struct.std::__1::pair.53", align 8
  %9 = alloca %"class.std::__1::reverse_iterator.51", align 8
  %10 = alloca %"class.std::__1::reverse_iterator.51", align 8
  %11 = alloca %"struct.std::__1::pair.53", align 8
  %12 = alloca %"struct.std::__1::__overload", align 1
  %13 = alloca %"class.std::__1::reverse_iterator.51", align 8
  %14 = alloca %"class.std::__1::reverse_iterator.51", align 8
  %15 = alloca %"class.std::__1::reverse_iterator.51", align 8
  %16 = alloca %"class.std::__1::reverse_iterator.51", align 8
  %17 = alloca %"class.std::__1::reverse_iterator.51", align 8
  %18 = alloca %"class.std::__1::reverse_iterator.51", align 8
  %19 = alloca %"class.std::__1::reverse_iterator.51", align 8
  %20 = alloca %"class.std::__1::reverse_iterator.51", align 8
  %21 = alloca %"class.std::__1::reverse_iterator.51", align 8
  %22 = alloca %"class.std::__1::reverse_iterator.51", align 8
  store [2 x i64] %1, ptr %5, align 8
  store [2 x i64] %2, ptr %6, align 8
  store [2 x i64] %3, ptr %7, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %9, ptr align 8 %5, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %10, ptr align 8 %6, i64 16, i1 false)
  %23 = load [2 x i64], ptr %9, align 8
  %24 = load [2 x i64], ptr %10, align 8
  call void @_ZNSt3__114__unwrap_rangeB8ue170006INS_16reverse_iteratorIPcEES3_EENS_4pairIT0_S5_EET_S7_(ptr sret(%"struct.std::__1::pair.53") align 8 %8, [2 x i64] %23, [2 x i64] %24)
  %25 = getelementptr inbounds %"struct.std::__1::pair.53", ptr %8, i32 0, i32 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %13, ptr align 8 %25, i64 16, i1 false)
  %26 = getelementptr inbounds %"struct.std::__1::pair.53", ptr %8, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %14, ptr align 8 %26, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %16, ptr align 8 %7, i64 16, i1 false)
  %27 = load [2 x i64], ptr %16, align 8
  %28 = call [2 x i64] @_ZNSt3__113__unwrap_iterB8ue170006INS_16reverse_iteratorIPcEENS_18__unwrap_iter_implIS3_Lb0EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEES7_([2 x i64] %27) #12
  store [2 x i64] %28, ptr %15, align 8
  %29 = load [2 x i64], ptr %13, align 8
  %30 = load [2 x i64], ptr %14, align 8
  %31 = load [2 x i64], ptr %15, align 8
  call void @_ZNKSt3__111__move_loopINS_17_ClassicAlgPolicyEEclB8ue170006INS_16reverse_iteratorIPcEES6_S6_EENS_4pairIT_T1_EES8_T0_S9_(ptr sret(%"struct.std::__1::pair.53") align 8 %11, ptr noundef %12, [2 x i64] %29, [2 x i64] %30, [2 x i64] %31)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %18, ptr align 8 %5, i64 16, i1 false)
  %32 = getelementptr inbounds %"struct.std::__1::pair.53", ptr %11, i32 0, i32 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %19, ptr align 8 %32, i64 16, i1 false)
  %33 = load [2 x i64], ptr %18, align 8
  %34 = load [2 x i64], ptr %19, align 8
  %35 = call [2 x i64] @_ZNSt3__114__rewrap_rangeB8ue170006INS_16reverse_iteratorIPcEES3_EET_S4_T0_([2 x i64] %33, [2 x i64] %34)
  store [2 x i64] %35, ptr %17, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %21, ptr align 8 %7, i64 16, i1 false)
  %36 = getelementptr inbounds %"struct.std::__1::pair.53", ptr %11, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %22, ptr align 8 %36, i64 16, i1 false)
  %37 = load [2 x i64], ptr %21, align 8
  %38 = load [2 x i64], ptr %22, align 8
  %39 = call [2 x i64] @_ZNSt3__113__rewrap_iterB8ue170006INS_16reverse_iteratorIPcEES3_NS_18__unwrap_iter_implIS3_Lb0EEEEET_S6_T0_([2 x i64] %37, [2 x i64] %38) #12
  store [2 x i64] %39, ptr %20, align 8
  call void @_ZNSt3__19make_pairB8ue170006INS_16reverse_iteratorIPcEES3_EENS_4pairINS_18__unwrap_ref_decayIT_E4typeENS5_IT0_E4typeEEEOS6_OS9_(ptr sret(%"struct.std::__1::pair.53") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %17, ptr noundef nonnull align 8 dereferenceable(16) %20)
  ret void
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNSt3__114__unwrap_rangeB8ue170006INS_16reverse_iteratorIPcEES3_EENS_4pairIT0_S5_EET_S7_(ptr noalias sret(%"struct.std::__1::pair.53") align 8 %0, [2 x i64] %1, [2 x i64] %2) #1 {
  %4 = alloca %"class.std::__1::reverse_iterator.51", align 8
  %5 = alloca %"class.std::__1::reverse_iterator.51", align 8
  %6 = alloca %"class.std::__1::reverse_iterator.51", align 8
  %7 = alloca %"class.std::__1::reverse_iterator.51", align 8
  %8 = alloca %"class.std::__1::reverse_iterator.51", align 8
  %9 = alloca %"class.std::__1::reverse_iterator.51", align 8
  store [2 x i64] %1, ptr %4, align 8
  store [2 x i64] %2, ptr %5, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %7, ptr align 8 %4, i64 16, i1 false)
  %10 = load [2 x i64], ptr %7, align 8
  %11 = call [2 x i64] @_ZNSt3__113__unwrap_iterB8ue170006INS_16reverse_iteratorIPcEENS_18__unwrap_iter_implIS3_Lb0EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEES7_([2 x i64] %10) #12
  store [2 x i64] %11, ptr %6, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %9, ptr align 8 %5, i64 16, i1 false)
  %12 = load [2 x i64], ptr %9, align 8
  %13 = call [2 x i64] @_ZNSt3__113__unwrap_iterB8ue170006INS_16reverse_iteratorIPcEENS_18__unwrap_iter_implIS3_Lb0EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEES7_([2 x i64] %12) #12
  store [2 x i64] %13, ptr %8, align 8
  call void @_ZNSt3__19make_pairB8ue170006INS_16reverse_iteratorIPcEES3_EENS_4pairINS_18__unwrap_ref_decayIT_E4typeENS5_IT0_E4typeEEEOS6_OS9_(ptr sret(%"struct.std::__1::pair.53") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %8)
  ret void
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr void @_ZNKSt3__111__move_loopINS_17_ClassicAlgPolicyEEclB8ue170006INS_16reverse_iteratorIPcEES6_S6_EENS_4pairIT_T1_EES8_T0_S9_(ptr noalias sret(%"struct.std::__1::pair.53") align 8 %0, ptr noundef %1, [2 x i64] %2, [2 x i64] %3, [2 x i64] %4) #1 align 2 {
  %6 = alloca %"class.std::__1::reverse_iterator.51", align 8
  %7 = alloca %"class.std::__1::reverse_iterator.51", align 8
  %8 = alloca %"class.std::__1::reverse_iterator.51", align 8
  %9 = alloca ptr, align 8
  store [2 x i64] %2, ptr %6, align 8
  store [2 x i64] %3, ptr %7, align 8
  store [2 x i64] %4, ptr %8, align 8
  store ptr %1, ptr %9, align 8
  %10 = load ptr, ptr %9, align 8
  br label %11

11:                                               ; preds = %13, %5
  %12 = call zeroext i1 @_ZNSt3__1neB8ue170006IPcS1_EEbRKNS_16reverse_iteratorIT_EERKNS2_IT0_EE(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %7)
  br i1 %12, label %13, label %19

13:                                               ; preds = %11
  %14 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__18_IterOpsINS_17_ClassicAlgPolicyEE11__iter_moveB8ue170006IRNS_16reverse_iteratorIPcEEEENS_9enable_ifIXsr12is_referenceIDTdeclsr3stdE7declvalIRT_EEEEE5valueEDTclsr3stdE4movedeclsr3stdE7declvalISA_EEEEE4typeEOS9_(ptr noundef nonnull align 8 dereferenceable(16) %6)
  %15 = load i8, ptr %14, align 1
  %16 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt3__116reverse_iteratorIPcEdeB8ue170006Ev(ptr noundef %8)
  store i8 %15, ptr %16, align 1
  %17 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt3__116reverse_iteratorIPcEppB8ue170006Ev(ptr noundef %6)
  %18 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt3__116reverse_iteratorIPcEppB8ue170006Ev(ptr noundef %8)
  br label %11, !llvm.loop !17

19:                                               ; preds = %11
  call void @_ZNSt3__19make_pairB8ue170006INS_16reverse_iteratorIPcEES3_EENS_4pairINS_18__unwrap_ref_decayIT_E4typeENS5_IT0_E4typeEEEOS6_OS9_(ptr sret(%"struct.std::__1::pair.53") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %8)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden [2 x i64] @_ZNSt3__113__unwrap_iterB8ue170006INS_16reverse_iteratorIPcEENS_18__unwrap_iter_implIS3_Lb0EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEES7_([2 x i64] %0) #5 {
  %2 = alloca %"class.std::__1::reverse_iterator.51", align 8
  %3 = alloca %"class.std::__1::reverse_iterator.51", align 8
  %4 = alloca %"class.std::__1::reverse_iterator.51", align 8
  store [2 x i64] %0, ptr %3, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %4, ptr align 8 %3, i64 16, i1 false)
  %5 = load [2 x i64], ptr %4, align 8
  %6 = call [2 x i64] @_ZNSt3__118__unwrap_iter_implINS_16reverse_iteratorIPcEELb0EE8__unwrapB8ue170006ES3_([2 x i64] %5) #12
  store [2 x i64] %6, ptr %2, align 8
  %7 = load [2 x i64], ptr %2, align 8
  ret [2 x i64] %7
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNSt3__19make_pairB8ue170006INS_16reverse_iteratorIPcEES3_EENS_4pairINS_18__unwrap_ref_decayIT_E4typeENS5_IT0_E4typeEEEOS6_OS9_(ptr noalias sret(%"struct.std::__1::pair.53") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) #5 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %1, ptr %4, align 8
  store ptr %2, ptr %5, align 8
  %6 = load ptr, ptr %4, align 8
  %7 = load ptr, ptr %5, align 8
  %8 = call ptr @_ZNSt3__14pairINS_16reverse_iteratorIPcEES3_EC1B8ue170006IS3_S3_LPv0EEEOT_OT0_(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %7) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden [2 x i64] @_ZNSt3__114__rewrap_rangeB8ue170006INS_16reverse_iteratorIPcEES3_EET_S4_T0_([2 x i64] %0, [2 x i64] %1) #5 {
  %3 = alloca %"class.std::__1::reverse_iterator.51", align 8
  %4 = alloca %"class.std::__1::reverse_iterator.51", align 8
  %5 = alloca %"class.std::__1::reverse_iterator.51", align 8
  %6 = alloca %"class.std::__1::reverse_iterator.51", align 8
  %7 = alloca %"class.std::__1::reverse_iterator.51", align 8
  store [2 x i64] %0, ptr %4, align 8
  store [2 x i64] %1, ptr %5, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %6, ptr align 8 %4, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %7, ptr align 8 %5, i64 16, i1 false)
  %8 = load [2 x i64], ptr %6, align 8
  %9 = load [2 x i64], ptr %7, align 8
  %10 = call [2 x i64] @_ZNSt3__113__rewrap_iterB8ue170006INS_16reverse_iteratorIPcEES3_NS_18__unwrap_iter_implIS3_Lb0EEEEET_S6_T0_([2 x i64] %8, [2 x i64] %9) #12
  store [2 x i64] %10, ptr %3, align 8
  %11 = load [2 x i64], ptr %3, align 8
  ret [2 x i64] %11
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden [2 x i64] @_ZNSt3__113__rewrap_iterB8ue170006INS_16reverse_iteratorIPcEES3_NS_18__unwrap_iter_implIS3_Lb0EEEEET_S6_T0_([2 x i64] %0, [2 x i64] %1) #5 personality ptr @__gxx_personality_v0 {
  %3 = alloca %"class.std::__1::reverse_iterator.51", align 8
  %4 = alloca %"class.std::__1::reverse_iterator.51", align 8
  %5 = alloca %"class.std::__1::reverse_iterator.51", align 8
  %6 = alloca %"class.std::__1::reverse_iterator.51", align 8
  %7 = alloca %"class.std::__1::reverse_iterator.51", align 8
  store [2 x i64] %0, ptr %4, align 8
  store [2 x i64] %1, ptr %5, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %6, ptr align 8 %4, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %7, ptr align 8 %5, i64 16, i1 false)
  %8 = load [2 x i64], ptr %6, align 8
  %9 = load [2 x i64], ptr %7, align 8
  %10 = invoke [2 x i64] @_ZNSt3__118__unwrap_iter_implINS_16reverse_iteratorIPcEELb0EE8__rewrapB8ue170006ES3_S3_([2 x i64] %8, [2 x i64] %9)
          to label %11 unwind label %13

11:                                               ; preds = %2
  store [2 x i64] %10, ptr %3, align 8
  %12 = load [2 x i64], ptr %3, align 8
  ret [2 x i64] %12

13:                                               ; preds = %2
  %14 = landingpad { ptr, i32 }
          catch ptr null
  %15 = extractvalue { ptr, i32 } %14, 0
  call void @__clang_call_terminate(ptr %15) #14
  unreachable
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden zeroext i1 @_ZNSt3__1neB8ue170006IPcS1_EEbRKNS_16reverse_iteratorIT_EERKNS2_IT0_EE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) #1 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = call ptr @_ZNKSt3__116reverse_iteratorIPcE4baseB8ue170006Ev(ptr noundef %5)
  %7 = load ptr, ptr %4, align 8
  %8 = call ptr @_ZNKSt3__116reverse_iteratorIPcE4baseB8ue170006Ev(ptr noundef %7)
  %9 = icmp ne ptr %6, %8
  ret i1 %9
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__18_IterOpsINS_17_ClassicAlgPolicyEE11__iter_moveB8ue170006IRNS_16reverse_iteratorIPcEEEENS_9enable_ifIXsr12is_referenceIDTdeclsr3stdE7declvalIRT_EEEEE5valueEDTclsr3stdE4movedeclsr3stdE7declvalISA_EEEEE4typeEOS9_(ptr noundef nonnull align 8 dereferenceable(16) %0) #1 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @_ZNSt3__18_IterOpsINS_17_ClassicAlgPolicyEE25__validate_iter_referenceB8ue170006IRNS_16reverse_iteratorIPcEEEEvv()
  %3 = load ptr, ptr %2, align 8
  %4 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt3__116reverse_iteratorIPcEdeB8ue170006Ev(ptr noundef %3)
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt3__116reverse_iteratorIPcEdeB8ue170006Ev(ptr noundef %0) #5 align 2 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %4 = load ptr, ptr %2, align 8
  %5 = getelementptr inbounds %"class.std::__1::reverse_iterator.51", ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 8
  store ptr %6, ptr %3, align 8
  %7 = load ptr, ptr %3, align 8
  %8 = getelementptr inbounds i8, ptr %7, i32 -1
  store ptr %8, ptr %3, align 8
  ret ptr %8
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt3__116reverse_iteratorIPcEppB8ue170006Ev(ptr noundef %0) #5 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.std::__1::reverse_iterator.51", ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds i8, ptr %5, i32 -1
  store ptr %6, ptr %4, align 8
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNSt3__18_IterOpsINS_17_ClassicAlgPolicyEE25__validate_iter_referenceB8ue170006IRNS_16reverse_iteratorIPcEEEEvv() #5 align 2 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden [2 x i64] @_ZNSt3__118__unwrap_iter_implINS_16reverse_iteratorIPcEELb0EE8__unwrapB8ue170006ES3_([2 x i64] %0) #5 align 2 {
  %2 = alloca %"class.std::__1::reverse_iterator.51", align 8
  %3 = alloca %"class.std::__1::reverse_iterator.51", align 8
  store [2 x i64] %0, ptr %3, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %2, ptr align 8 %3, i64 16, i1 false)
  %4 = load [2 x i64], ptr %2, align 8
  ret [2 x i64] %4
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr ptr @_ZNSt3__14pairINS_16reverse_iteratorIPcEES3_EC1B8ue170006IS3_S3_LPv0EEEOT_OT0_(ptr noundef returned %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #0 align 2 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  %7 = load ptr, ptr %4, align 8
  %8 = load ptr, ptr %5, align 8
  %9 = load ptr, ptr %6, align 8
  %10 = call ptr @_ZNSt3__14pairINS_16reverse_iteratorIPcEES3_EC2B8ue170006IS3_S3_LPv0EEEOT_OT0_(ptr noundef %7, ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) %9) #12
  ret ptr %7
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr ptr @_ZNSt3__14pairINS_16reverse_iteratorIPcEES3_EC2B8ue170006IS3_S3_LPv0EEEOT_OT0_(ptr noundef returned %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #0 align 2 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  %7 = load ptr, ptr %4, align 8
  %8 = getelementptr inbounds %"struct.std::__1::pair.53", ptr %7, i32 0, i32 0
  %9 = load ptr, ptr %5, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %8, ptr align 8 %9, i64 16, i1 false)
  %10 = getelementptr inbounds %"struct.std::__1::pair.53", ptr %7, i32 0, i32 1
  %11 = load ptr, ptr %6, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %10, ptr align 8 %11, i64 16, i1 false)
  ret ptr %7
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden [2 x i64] @_ZNSt3__118__unwrap_iter_implINS_16reverse_iteratorIPcEELb0EE8__rewrapB8ue170006ES3_S3_([2 x i64] %0, [2 x i64] %1) #5 align 2 {
  %3 = alloca %"class.std::__1::reverse_iterator.51", align 8
  %4 = alloca %"class.std::__1::reverse_iterator.51", align 8
  %5 = alloca %"class.std::__1::reverse_iterator.51", align 8
  store [2 x i64] %0, ptr %4, align 8
  store [2 x i64] %1, ptr %5, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %3, ptr align 8 %5, i64 16, i1 false)
  %6 = load [2 x i64], ptr %3, align 8
  ret [2 x i64] %6
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden ptr @_ZNSt3__116reverse_iteratorIPcEC2B8ue170006ES1_(ptr noundef returned %0, ptr noundef %1) unnamed_addr #0 align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = getelementptr inbounds %"class.std::__1::reverse_iterator.51", ptr %5, i32 0, i32 0
  %7 = load ptr, ptr %4, align 8
  store ptr %7, ptr %6, align 8
  %8 = getelementptr inbounds %"class.std::__1::reverse_iterator.51", ptr %5, i32 0, i32 1
  %9 = load ptr, ptr %4, align 8
  store ptr %9, ptr %8, align 8
  ret ptr %5
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden ptr @_ZNSt3__114__split_bufferIcRNS_9allocatorIcEEED2Ev(ptr noundef returned %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  %4 = load ptr, ptr %3, align 8
  store ptr %4, ptr %2, align 8
  call void @_ZNSt3__114__split_bufferIcRNS_9allocatorIcEEE5clearB8ue170006Ev(ptr noundef %4) #12
  %5 = getelementptr inbounds %"struct.std::__1::__split_buffer.47", ptr %4, i32 0, i32 0
  %6 = load ptr, ptr %5, align 8
  %7 = icmp ne ptr %6, null
  br i1 %7, label %8, label %14

8:                                                ; preds = %1
  %9 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__114__split_bufferIcRNS_9allocatorIcEEE7__allocB8ue170006Ev(ptr noundef %4) #12
  %10 = getelementptr inbounds %"struct.std::__1::__split_buffer.47", ptr %4, i32 0, i32 0
  %11 = load ptr, ptr %10, align 8
  %12 = invoke i64 @_ZNKSt3__114__split_bufferIcRNS_9allocatorIcEEE8capacityB8ue170006Ev(ptr noundef %4)
          to label %13 unwind label %16

13:                                               ; preds = %8
  call void @_ZNSt3__116allocator_traitsINS_9allocatorIcEEE10deallocateB8ue170006ERS2_Pcm(ptr noundef nonnull align 1 dereferenceable(1) %9, ptr noundef %11, i64 noundef %12) #12
  br label %14

14:                                               ; preds = %13, %1
  %15 = load ptr, ptr %2, align 8
  ret ptr %15

16:                                               ; preds = %8
  %17 = landingpad { ptr, i32 }
          catch ptr null
  %18 = extractvalue { ptr, i32 } %17, 0
  call void @__clang_call_terminate(ptr %18) #14
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNSt3__114__split_bufferIcRNS_9allocatorIcEEE5clearB8ue170006Ev(ptr noundef %0) #5 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"struct.std::__1::__split_buffer.47", ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8
  call void @_ZNSt3__114__split_bufferIcRNS_9allocatorIcEEE17__destruct_at_endB8ue170006EPc(ptr noundef %3, ptr noundef %5) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNSt3__116allocator_traitsINS_9allocatorIcEEE10deallocateB8ue170006ERS2_Pcm(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) #5 align 2 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store i64 %2, ptr %6, align 8
  %7 = load ptr, ptr %4, align 8
  %8 = load ptr, ptr %5, align 8
  %9 = load i64, ptr %6, align 8
  call void @_ZNSt3__19allocatorIcE10deallocateB8ue170006EPcm(ptr noundef %7, ptr noundef %8, i64 noundef %9) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden i64 @_ZNKSt3__114__split_bufferIcRNS_9allocatorIcEEE8capacityB8ue170006Ev(ptr noundef %0) #5 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt3__114__split_bufferIcRNS_9allocatorIcEEE9__end_capB8ue170006Ev(ptr noundef %3) #12
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %"struct.std::__1::__split_buffer.47", ptr %3, i32 0, i32 0
  %7 = load ptr, ptr %6, align 8
  %8 = ptrtoint ptr %5 to i64
  %9 = ptrtoint ptr %7 to i64
  %10 = sub i64 %8, %9
  ret i64 %10
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNSt3__114__split_bufferIcRNS_9allocatorIcEEE17__destruct_at_endB8ue170006EPc(ptr noundef %0, ptr noundef %1) #5 align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca %"struct.std::__1::integral_constant", align 1
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %6 = load ptr, ptr %3, align 8
  %7 = load ptr, ptr %4, align 8
  call void @_ZNSt3__114__split_bufferIcRNS_9allocatorIcEEE17__destruct_at_endB8ue170006EPcNS_17integral_constantIbLb0EEE(ptr noundef %6, ptr noundef %7) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNSt3__114__split_bufferIcRNS_9allocatorIcEEE17__destruct_at_endB8ue170006EPcNS_17integral_constantIbLb0EEE(ptr noundef %0, ptr noundef %1) #5 align 2 personality ptr @__gxx_personality_v0 {
  %3 = alloca %"struct.std::__1::integral_constant", align 1
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  %6 = load ptr, ptr %4, align 8
  br label %7

7:                                                ; preds = %18, %2
  %8 = load ptr, ptr %5, align 8
  %9 = getelementptr inbounds %"struct.std::__1::__split_buffer.47", ptr %6, i32 0, i32 2
  %10 = load ptr, ptr %9, align 8
  %11 = icmp ne ptr %8, %10
  br i1 %11, label %12, label %19

12:                                               ; preds = %7
  %13 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__114__split_bufferIcRNS_9allocatorIcEEE7__allocB8ue170006Ev(ptr noundef %6) #12
  %14 = getelementptr inbounds %"struct.std::__1::__split_buffer.47", ptr %6, i32 0, i32 2
  %15 = load ptr, ptr %14, align 8
  %16 = getelementptr inbounds i8, ptr %15, i32 -1
  store ptr %16, ptr %14, align 8
  %17 = call ptr @_ZNSt3__112__to_addressB8ue170006IcEEPT_S2_(ptr noundef %16) #12
  invoke void @_ZNSt3__116allocator_traitsINS_9allocatorIcEEE7destroyB8ue170006IcvEEvRS2_PT_(ptr noundef nonnull align 1 dereferenceable(1) %13, ptr noundef %17)
          to label %18 unwind label %20

18:                                               ; preds = %12
  br label %7, !llvm.loop !18

19:                                               ; preds = %7
  ret void

20:                                               ; preds = %12
  %21 = landingpad { ptr, i32 }
          catch ptr null
  %22 = extractvalue { ptr, i32 } %21, 0
  call void @__clang_call_terminate(ptr %22) #14
  unreachable
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr void @_ZNSt3__116allocator_traitsINS_9allocatorIcEEE7destroyB8ue170006IcvEEvRS2_PT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1) #1 align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = load ptr, ptr %4, align 8
  call void @_ZNSt3__19allocatorIcE7destroyB8ue170006EPc(ptr noundef %5, ptr noundef %6)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNSt3__19allocatorIcE7destroyB8ue170006EPc(ptr noundef %0, ptr noundef %1) #5 align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = load ptr, ptr %4, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNSt3__19allocatorIcE10deallocateB8ue170006EPcm(ptr noundef %0, ptr noundef %1, i64 noundef %2) #5 align 2 personality ptr @__gxx_personality_v0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store i64 %2, ptr %6, align 8
  %7 = load ptr, ptr %4, align 8
  %8 = load ptr, ptr %5, align 8
  %9 = load i64, ptr %6, align 8
  %10 = mul i64 %9, 1
  invoke void @_ZNSt3__119__libcpp_deallocateB8ue170006EPvmm(ptr noundef %8, i64 noundef %10, i64 noundef 1)
          to label %11 unwind label %12

11:                                               ; preds = %3
  ret void

12:                                               ; preds = %3
  %13 = landingpad { ptr, i32 }
          catch ptr null
  %14 = extractvalue { ptr, i32 } %13, 0
  call void @__clang_call_terminate(ptr %14) #14
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt3__114__split_bufferIcRNS_9allocatorIcEEE9__end_capB8ue170006Ev(ptr noundef %0) #5 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"struct.std::__1::__split_buffer.47", ptr %3, i32 0, i32 3
  %5 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt3__117__compressed_pairIPcRNS_9allocatorIcEEE5firstB8ue170006Ev(ptr noundef %4) #12
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt3__117__compressed_pairIPcRNS_9allocatorIcEEE5firstB8ue170006Ev(ptr noundef %0) #5 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt3__122__compressed_pair_elemIPcLi0ELb0EE5__getB8ue170006Ev(ptr noundef %3) #12
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden i64 @_ZNSt3__16vectorIcNS_9allocatorIcEEE11__make_iterB8ue170006EPc(ptr noundef %0, ptr noundef %1) #5 align 2 {
  %3 = alloca %"class.std::__1::__wrap_iter.23", align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  %6 = load ptr, ptr %4, align 8
  %7 = load ptr, ptr %5, align 8
  %8 = call ptr @_ZNSt3__111__wrap_iterIPcEC1B8ue170006ES1_(ptr noundef %3, ptr noundef %7) #12
  %9 = getelementptr inbounds %"class.std::__1::__wrap_iter.23", ptr %3, i32 0, i32 0
  %10 = load ptr, ptr %9, align 8
  %11 = ptrtoint ptr %10 to i64
  ret i64 %11
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden ptr @_ZNSt3__111__wrap_iterIPcEC1B8ue170006ES1_(ptr noundef returned %0, ptr noundef %1) unnamed_addr #0 align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = load ptr, ptr %4, align 8
  %7 = call ptr @_ZNSt3__111__wrap_iterIPcEC2B8ue170006ES1_(ptr noundef %5, ptr noundef %6) #12
  ret ptr %5
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden ptr @_ZNSt3__111__wrap_iterIPcEC2B8ue170006ES1_(ptr noundef returned %0, ptr noundef %1) unnamed_addr #0 align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = getelementptr inbounds %"class.std::__1::__wrap_iter.23", ptr %5, i32 0, i32 0
  %7 = load ptr, ptr %4, align 8
  store ptr %7, ptr %6, align 8
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden i64 @_ZNSt3__1miB8ue170006IPKcPcEEDTmicldtfp_4baseEcldtfp0_4baseEERKNS_11__wrap_iterIT_EERKNS5_IT0_EE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #5 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = call ptr @_ZNKSt3__111__wrap_iterIPKcE4baseB8ue170006Ev(ptr noundef %5) #12
  %7 = load ptr, ptr %4, align 8
  %8 = call ptr @_ZNKSt3__111__wrap_iterIPcE4baseB8ue170006Ev(ptr noundef %7) #12
  %9 = ptrtoint ptr %6 to i64
  %10 = ptrtoint ptr %8 to i64
  %11 = sub i64 %9, %10
  ret i64 %11
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNSt3__16vectorIcNS_9allocatorIcEEE12__move_rangeEPcS4_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #1 align 2 personality ptr @__gxx_personality_v0 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca i64, align 8
  %11 = alloca ptr, align 8
  %12 = alloca %"struct.std::__1::vector<char>::_ConstructTransaction", align 8
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca i32, align 4
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  store ptr %2, ptr %7, align 8
  store ptr %3, ptr %8, align 8
  %16 = load ptr, ptr %5, align 8
  %17 = getelementptr inbounds %"class.std::__1::vector.19", ptr %16, i32 0, i32 1
  %18 = load ptr, ptr %17, align 8
  store ptr %18, ptr %9, align 8
  %19 = load ptr, ptr %9, align 8
  %20 = load ptr, ptr %8, align 8
  %21 = ptrtoint ptr %19 to i64
  %22 = ptrtoint ptr %20 to i64
  %23 = sub i64 %21, %22
  store i64 %23, ptr %10, align 8
  %24 = load ptr, ptr %6, align 8
  %25 = load i64, ptr %10, align 8
  %26 = getelementptr inbounds i8, ptr %24, i64 %25
  store ptr %26, ptr %11, align 8
  %27 = load ptr, ptr %7, align 8
  %28 = load ptr, ptr %11, align 8
  %29 = ptrtoint ptr %27 to i64
  %30 = ptrtoint ptr %28 to i64
  %31 = sub i64 %29, %30
  %32 = call ptr @_ZNSt3__16vectorIcNS_9allocatorIcEEE21_ConstructTransactionC1B8ue170006ERS3_m(ptr noundef %12, ptr noundef nonnull align 8 dereferenceable(24) %16, i64 noundef %31)
  %33 = getelementptr inbounds %"struct.std::__1::vector<char>::_ConstructTransaction", ptr %12, i32 0, i32 1
  %34 = load ptr, ptr %33, align 8
  store ptr %34, ptr %13, align 8
  br label %35

35:                                               ; preds = %45, %4
  %36 = load ptr, ptr %11, align 8
  %37 = load ptr, ptr %7, align 8
  %38 = icmp ult ptr %36, %37
  br i1 %38, label %39, label %57

39:                                               ; preds = %35
  %40 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__16vectorIcNS_9allocatorIcEEE7__allocB8ue170006Ev(ptr noundef %16) #12
  %41 = load ptr, ptr %13, align 8
  %42 = call ptr @_ZNSt3__112__to_addressB8ue170006IcEEPT_S2_(ptr noundef %41) #12
  %43 = load ptr, ptr %11, align 8
  invoke void @_ZNSt3__116allocator_traitsINS_9allocatorIcEEE9constructB8ue170006IcJcEvEEvRS2_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %40, ptr noundef %42, ptr noundef nonnull align 1 dereferenceable(1) %43)
          to label %44 unwind label %52

44:                                               ; preds = %39
  br label %45

45:                                               ; preds = %44
  %46 = load ptr, ptr %11, align 8
  %47 = getelementptr inbounds i8, ptr %46, i32 1
  store ptr %47, ptr %11, align 8
  %48 = load ptr, ptr %13, align 8
  %49 = getelementptr inbounds i8, ptr %48, i32 1
  store ptr %49, ptr %13, align 8
  %50 = load ptr, ptr %13, align 8
  %51 = getelementptr inbounds %"struct.std::__1::vector<char>::_ConstructTransaction", ptr %12, i32 0, i32 1
  store ptr %50, ptr %51, align 8
  br label %35, !llvm.loop !19

52:                                               ; preds = %39
  %53 = landingpad { ptr, i32 }
          cleanup
  %54 = extractvalue { ptr, i32 } %53, 0
  store ptr %54, ptr %14, align 8
  %55 = extractvalue { ptr, i32 } %53, 1
  store i32 %55, ptr %15, align 4
  %56 = call ptr @_ZNSt3__16vectorIcNS_9allocatorIcEEE21_ConstructTransactionD1B8ue170006Ev(ptr noundef %12) #12
  br label %65

57:                                               ; preds = %35
  %58 = call ptr @_ZNSt3__16vectorIcNS_9allocatorIcEEE21_ConstructTransactionD1B8ue170006Ev(ptr noundef %12) #12
  %59 = load ptr, ptr %6, align 8
  %60 = load ptr, ptr %6, align 8
  %61 = load i64, ptr %10, align 8
  %62 = getelementptr inbounds i8, ptr %60, i64 %61
  %63 = load ptr, ptr %9, align 8
  %64 = call ptr @_ZNSt3__113move_backwardB8ue170006IPcS1_EET0_T_S3_S2_(ptr noundef %59, ptr noundef %62, ptr noundef %63)
  ret void

65:                                               ; preds = %52
  %66 = load ptr, ptr %14, align 8
  %67 = load i32, ptr %15, align 4
  %68 = insertvalue { ptr, i32 } undef, ptr %66, 0
  %69 = insertvalue { ptr, i32 } %68, i32 %67, 1
  resume { ptr, i32 } %69
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden ptr @_ZNSt3__114pointer_traitsIPKcE10pointer_toB8ue170006ERS1_(ptr noundef nonnull align 1 dereferenceable(1) %0) #5 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  ret ptr %3
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNSt3__114__split_bufferIcRNS_9allocatorIcEEE9push_backB8ue170006ERKc(ptr noundef %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #1 align 2 personality ptr @__gxx_personality_v0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %"struct.std::__1::__split_buffer.47", align 8
  %10 = alloca %"class.std::__1::move_iterator.55", align 8
  %11 = alloca ptr, align 8
  %12 = alloca i32, align 4
  %13 = alloca %"class.std::__1::move_iterator.55", align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %14 = load ptr, ptr %3, align 8
  %15 = getelementptr inbounds %"struct.std::__1::__split_buffer.47", ptr %14, i32 0, i32 2
  %16 = load ptr, ptr %15, align 8
  %17 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__114__split_bufferIcRNS_9allocatorIcEEE9__end_capB8ue170006Ev(ptr noundef %14) #12
  %18 = load ptr, ptr %17, align 8
  %19 = icmp eq ptr %16, %18
  br i1 %19, label %20, label %99

20:                                               ; preds = %2
  %21 = getelementptr inbounds %"struct.std::__1::__split_buffer.47", ptr %14, i32 0, i32 1
  %22 = load ptr, ptr %21, align 8
  %23 = getelementptr inbounds %"struct.std::__1::__split_buffer.47", ptr %14, i32 0, i32 0
  %24 = load ptr, ptr %23, align 8
  %25 = icmp ugt ptr %22, %24
  br i1 %25, label %26, label %53

26:                                               ; preds = %20
  %27 = getelementptr inbounds %"struct.std::__1::__split_buffer.47", ptr %14, i32 0, i32 1
  %28 = load ptr, ptr %27, align 8
  %29 = getelementptr inbounds %"struct.std::__1::__split_buffer.47", ptr %14, i32 0, i32 0
  %30 = load ptr, ptr %29, align 8
  %31 = ptrtoint ptr %28 to i64
  %32 = ptrtoint ptr %30 to i64
  %33 = sub i64 %31, %32
  store i64 %33, ptr %5, align 8
  %34 = load i64, ptr %5, align 8
  %35 = add nsw i64 %34, 1
  %36 = sdiv i64 %35, 2
  store i64 %36, ptr %5, align 8
  %37 = getelementptr inbounds %"struct.std::__1::__split_buffer.47", ptr %14, i32 0, i32 1
  %38 = load ptr, ptr %37, align 8
  %39 = getelementptr inbounds %"struct.std::__1::__split_buffer.47", ptr %14, i32 0, i32 2
  %40 = load ptr, ptr %39, align 8
  %41 = getelementptr inbounds %"struct.std::__1::__split_buffer.47", ptr %14, i32 0, i32 1
  %42 = load ptr, ptr %41, align 8
  %43 = load i64, ptr %5, align 8
  %44 = sub i64 0, %43
  %45 = getelementptr inbounds i8, ptr %42, i64 %44
  %46 = call ptr @_ZNSt3__14moveB8ue170006IPcS1_EET0_T_S3_S2_(ptr noundef %38, ptr noundef %40, ptr noundef %45)
  %47 = getelementptr inbounds %"struct.std::__1::__split_buffer.47", ptr %14, i32 0, i32 2
  store ptr %46, ptr %47, align 8
  %48 = load i64, ptr %5, align 8
  %49 = getelementptr inbounds %"struct.std::__1::__split_buffer.47", ptr %14, i32 0, i32 1
  %50 = load ptr, ptr %49, align 8
  %51 = sub i64 0, %48
  %52 = getelementptr inbounds i8, ptr %50, i64 %51
  store ptr %52, ptr %49, align 8
  br label %98

53:                                               ; preds = %20
  %54 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__114__split_bufferIcRNS_9allocatorIcEEE9__end_capB8ue170006Ev(ptr noundef %14) #12
  %55 = load ptr, ptr %54, align 8
  %56 = getelementptr inbounds %"struct.std::__1::__split_buffer.47", ptr %14, i32 0, i32 0
  %57 = load ptr, ptr %56, align 8
  %58 = ptrtoint ptr %55 to i64
  %59 = ptrtoint ptr %57 to i64
  %60 = sub i64 %58, %59
  %61 = mul i64 2, %60
  store i64 %61, ptr %7, align 8
  store i64 1, ptr %8, align 8
  %62 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__13maxB8ue170006ImEERKT_S3_S3_(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %8)
  %63 = load i64, ptr %62, align 8
  store i64 %63, ptr %6, align 8
  %64 = load i64, ptr %6, align 8
  %65 = load i64, ptr %6, align 8
  %66 = udiv i64 %65, 4
  %67 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__114__split_bufferIcRNS_9allocatorIcEEE7__allocB8ue170006Ev(ptr noundef %14) #12
  %68 = call ptr @_ZNSt3__114__split_bufferIcRNS_9allocatorIcEEEC1EmmS3_(ptr noundef %9, i64 noundef %64, i64 noundef %66, ptr noundef nonnull align 1 dereferenceable(1) %67)
  %69 = getelementptr inbounds %"struct.std::__1::__split_buffer.47", ptr %14, i32 0, i32 1
  %70 = load ptr, ptr %69, align 8
  %71 = invoke ptr @_ZNSt3__113move_iteratorIPcEC1B8ue170006ES1_(ptr noundef %10, ptr noundef %70)
          to label %72 unwind label %93

72:                                               ; preds = %53
  %73 = getelementptr inbounds %"struct.std::__1::__split_buffer.47", ptr %14, i32 0, i32 2
  %74 = load ptr, ptr %73, align 8
  %75 = invoke ptr @_ZNSt3__113move_iteratorIPcEC1B8ue170006ES1_(ptr noundef %13, ptr noundef %74)
          to label %76 unwind label %93

76:                                               ; preds = %72
  %77 = getelementptr inbounds %"class.std::__1::move_iterator.55", ptr %10, i32 0, i32 0
  %78 = load ptr, ptr %77, align 8
  %79 = ptrtoint ptr %78 to i64
  %80 = getelementptr inbounds %"class.std::__1::move_iterator.55", ptr %13, i32 0, i32 0
  %81 = load ptr, ptr %80, align 8
  %82 = ptrtoint ptr %81 to i64
  invoke void @_ZNSt3__114__split_bufferIcRNS_9allocatorIcEEE18__construct_at_endINS_13move_iteratorIPcEEEENS_9enable_ifIXsr31__has_forward_iterator_categoryIT_EE5valueEvE4typeESA_SA_(ptr noundef %9, i64 %79, i64 %82)
          to label %83 unwind label %93

83:                                               ; preds = %76
  %84 = getelementptr inbounds %"struct.std::__1::__split_buffer.47", ptr %14, i32 0, i32 0
  %85 = getelementptr inbounds %"struct.std::__1::__split_buffer.47", ptr %9, i32 0, i32 0
  call void @_ZNSt3__14swapB8ue170006IPcEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS3_EE5valueEvE4typeERS3_S6_(ptr noundef nonnull align 8 dereferenceable(8) %84, ptr noundef nonnull align 8 dereferenceable(8) %85) #12
  %86 = getelementptr inbounds %"struct.std::__1::__split_buffer.47", ptr %14, i32 0, i32 1
  %87 = getelementptr inbounds %"struct.std::__1::__split_buffer.47", ptr %9, i32 0, i32 1
  call void @_ZNSt3__14swapB8ue170006IPcEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS3_EE5valueEvE4typeERS3_S6_(ptr noundef nonnull align 8 dereferenceable(8) %86, ptr noundef nonnull align 8 dereferenceable(8) %87) #12
  %88 = getelementptr inbounds %"struct.std::__1::__split_buffer.47", ptr %14, i32 0, i32 2
  %89 = getelementptr inbounds %"struct.std::__1::__split_buffer.47", ptr %9, i32 0, i32 2
  call void @_ZNSt3__14swapB8ue170006IPcEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS3_EE5valueEvE4typeERS3_S6_(ptr noundef nonnull align 8 dereferenceable(8) %88, ptr noundef nonnull align 8 dereferenceable(8) %89) #12
  %90 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__114__split_bufferIcRNS_9allocatorIcEEE9__end_capB8ue170006Ev(ptr noundef %14) #12
  %91 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__114__split_bufferIcRNS_9allocatorIcEEE9__end_capB8ue170006Ev(ptr noundef %9) #12
  call void @_ZNSt3__14swapB8ue170006IPcEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS3_EE5valueEvE4typeERS3_S6_(ptr noundef nonnull align 8 dereferenceable(8) %90, ptr noundef nonnull align 8 dereferenceable(8) %91) #12
  %92 = call ptr @_ZNSt3__114__split_bufferIcRNS_9allocatorIcEEED1Ev(ptr noundef %9) #12
  br label %98

93:                                               ; preds = %76, %72, %53
  %94 = landingpad { ptr, i32 }
          cleanup
  %95 = extractvalue { ptr, i32 } %94, 0
  store ptr %95, ptr %11, align 8
  %96 = extractvalue { ptr, i32 } %94, 1
  store i32 %96, ptr %12, align 4
  %97 = call ptr @_ZNSt3__114__split_bufferIcRNS_9allocatorIcEEED1Ev(ptr noundef %9) #12
  br label %108

98:                                               ; preds = %83, %26
  br label %99

99:                                               ; preds = %98, %2
  %100 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__114__split_bufferIcRNS_9allocatorIcEEE7__allocB8ue170006Ev(ptr noundef %14) #12
  %101 = getelementptr inbounds %"struct.std::__1::__split_buffer.47", ptr %14, i32 0, i32 2
  %102 = load ptr, ptr %101, align 8
  %103 = call ptr @_ZNSt3__112__to_addressB8ue170006IcEEPT_S2_(ptr noundef %102) #12
  %104 = load ptr, ptr %4, align 8
  call void @_ZNSt3__116allocator_traitsINS_9allocatorIcEEE9constructB8ue170006IcJRKcEvEEvRS2_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %100, ptr noundef %103, ptr noundef nonnull align 1 dereferenceable(1) %104)
  %105 = getelementptr inbounds %"struct.std::__1::__split_buffer.47", ptr %14, i32 0, i32 2
  %106 = load ptr, ptr %105, align 8
  %107 = getelementptr inbounds i8, ptr %106, i32 1
  store ptr %107, ptr %105, align 8
  ret void

108:                                              ; preds = %93
  %109 = load ptr, ptr %11, align 8
  %110 = load i32, ptr %12, align 4
  %111 = insertvalue { ptr, i32 } undef, ptr %109, 0
  %112 = insertvalue { ptr, i32 } %111, i32 %110, 1
  resume { ptr, i32 } %112
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden ptr @_ZNSt3__16vectorIcNS_9allocatorIcEEE26__swap_out_circular_bufferERNS_14__split_bufferIcRS2_EEPc(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef %2) #1 align 2 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca %"class.std::__1::reverse_iterator.51", align 8
  %9 = alloca %"class.std::__1::reverse_iterator.51", align 8
  %10 = alloca %"class.std::__1::reverse_iterator.51", align 8
  %11 = alloca %"class.std::__1::reverse_iterator.51", align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  %12 = load ptr, ptr %4, align 8
  call void @_ZNKSt3__16vectorIcNS_9allocatorIcEEE17__annotate_deleteB8ue170006Ev(ptr noundef %12) #12
  %13 = load ptr, ptr %5, align 8
  %14 = getelementptr inbounds %"struct.std::__1::__split_buffer.47", ptr %13, i32 0, i32 1
  %15 = load ptr, ptr %14, align 8
  store ptr %15, ptr %7, align 8
  %16 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__16vectorIcNS_9allocatorIcEEE7__allocB8ue170006Ev(ptr noundef %12) #12
  %17 = load ptr, ptr %6, align 8
  %18 = call ptr @_ZNSt3__116reverse_iteratorIPcEC1B8ue170006ES1_(ptr noundef %9, ptr noundef %17)
  %19 = getelementptr inbounds %"class.std::__1::vector.19", ptr %12, i32 0, i32 0
  %20 = load ptr, ptr %19, align 8
  %21 = call ptr @_ZNSt3__116reverse_iteratorIPcEC1B8ue170006ES1_(ptr noundef %10, ptr noundef %20)
  %22 = load ptr, ptr %5, align 8
  %23 = getelementptr inbounds %"struct.std::__1::__split_buffer.47", ptr %22, i32 0, i32 1
  %24 = load ptr, ptr %23, align 8
  %25 = call ptr @_ZNSt3__116reverse_iteratorIPcEC1B8ue170006ES1_(ptr noundef %11, ptr noundef %24)
  %26 = load [2 x i64], ptr %9, align 8
  %27 = load [2 x i64], ptr %10, align 8
  %28 = load [2 x i64], ptr %11, align 8
  %29 = call [2 x i64] @_ZNSt3__142__uninitialized_allocator_move_if_noexceptB8ue170006INS_9allocatorIcEENS_16reverse_iteratorIPcEES5_cvEET1_RT_T0_S9_S6_(ptr noundef nonnull align 1 dereferenceable(1) %16, [2 x i64] %26, [2 x i64] %27, [2 x i64] %28)
  store [2 x i64] %29, ptr %8, align 8
  %30 = call ptr @_ZNKSt3__116reverse_iteratorIPcE4baseB8ue170006Ev(ptr noundef %8)
  %31 = load ptr, ptr %5, align 8
  %32 = getelementptr inbounds %"struct.std::__1::__split_buffer.47", ptr %31, i32 0, i32 1
  store ptr %30, ptr %32, align 8
  %33 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__16vectorIcNS_9allocatorIcEEE7__allocB8ue170006Ev(ptr noundef %12) #12
  %34 = load ptr, ptr %6, align 8
  %35 = getelementptr inbounds %"class.std::__1::vector.19", ptr %12, i32 0, i32 1
  %36 = load ptr, ptr %35, align 8
  %37 = load ptr, ptr %5, align 8
  %38 = getelementptr inbounds %"struct.std::__1::__split_buffer.47", ptr %37, i32 0, i32 2
  %39 = load ptr, ptr %38, align 8
  %40 = call ptr @_ZNSt3__142__uninitialized_allocator_move_if_noexceptB8ue170006INS_9allocatorIcEEPcS3_cvEET1_RT_T0_S7_S4_(ptr noundef nonnull align 1 dereferenceable(1) %33, ptr noundef %34, ptr noundef %36, ptr noundef %39)
  %41 = load ptr, ptr %5, align 8
  %42 = getelementptr inbounds %"struct.std::__1::__split_buffer.47", ptr %41, i32 0, i32 2
  store ptr %40, ptr %42, align 8
  %43 = getelementptr inbounds %"class.std::__1::vector.19", ptr %12, i32 0, i32 0
  %44 = load ptr, ptr %5, align 8
  %45 = getelementptr inbounds %"struct.std::__1::__split_buffer.47", ptr %44, i32 0, i32 1
  call void @_ZNSt3__14swapB8ue170006IPcEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS3_EE5valueEvE4typeERS3_S6_(ptr noundef nonnull align 8 dereferenceable(8) %43, ptr noundef nonnull align 8 dereferenceable(8) %45) #12
  %46 = getelementptr inbounds %"class.std::__1::vector.19", ptr %12, i32 0, i32 1
  %47 = load ptr, ptr %5, align 8
  %48 = getelementptr inbounds %"struct.std::__1::__split_buffer.47", ptr %47, i32 0, i32 2
  call void @_ZNSt3__14swapB8ue170006IPcEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS3_EE5valueEvE4typeERS3_S6_(ptr noundef nonnull align 8 dereferenceable(8) %46, ptr noundef nonnull align 8 dereferenceable(8) %48) #12
  %49 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__16vectorIcNS_9allocatorIcEEE9__end_capB8ue170006Ev(ptr noundef %12) #12
  %50 = load ptr, ptr %5, align 8
  %51 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__114__split_bufferIcRNS_9allocatorIcEEE9__end_capB8ue170006Ev(ptr noundef %50) #12
  call void @_ZNSt3__14swapB8ue170006IPcEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS3_EE5valueEvE4typeERS3_S6_(ptr noundef nonnull align 8 dereferenceable(8) %49, ptr noundef nonnull align 8 dereferenceable(8) %51) #12
  %52 = load ptr, ptr %5, align 8
  %53 = getelementptr inbounds %"struct.std::__1::__split_buffer.47", ptr %52, i32 0, i32 1
  %54 = load ptr, ptr %53, align 8
  %55 = load ptr, ptr %5, align 8
  %56 = getelementptr inbounds %"struct.std::__1::__split_buffer.47", ptr %55, i32 0, i32 0
  store ptr %54, ptr %56, align 8
  %57 = call i64 @_ZNKSt3__16vectorIcNS_9allocatorIcEEE4sizeB8ue170006Ev(ptr noundef %12) #12
  call void @_ZNKSt3__16vectorIcNS_9allocatorIcEEE14__annotate_newB8ue170006Em(ptr noundef %12, i64 noundef %57) #12
  %58 = load ptr, ptr %7, align 8
  ret ptr %58
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden ptr @_ZNKSt3__111__wrap_iterIPKcE4baseB8ue170006Ev(ptr noundef %0) #5 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.std::__1::__wrap_iter.22", ptr %3, i32 0, i32 0
  %5 = load ptr, ptr %4, align 8
  ret ptr %5
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr void @_ZNSt3__116allocator_traitsINS_9allocatorIcEEE9constructB8ue170006IcJcEvEEvRS2_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) #1 align 2 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  %7 = load ptr, ptr %4, align 8
  %8 = load ptr, ptr %5, align 8
  %9 = load ptr, ptr %6, align 8
  call void @_ZNSt3__19allocatorIcE9constructB8ue170006IcJcEEEvPT_DpOT0_(ptr noundef %7, ptr noundef %8, ptr noundef nonnull align 1 dereferenceable(1) %9)
  ret void
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden ptr @_ZNSt3__113move_backwardB8ue170006IPcS1_EET0_T_S3_S2_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #1 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca %"struct.std::__1::pair.54", align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  %8 = load ptr, ptr %4, align 8
  %9 = load ptr, ptr %5, align 8
  %10 = load ptr, ptr %6, align 8
  %11 = call [2 x i64] @_ZNSt3__115__move_backwardB8ue170006INS_17_ClassicAlgPolicyEPcS2_S2_EENS_4pairIT0_T2_EES4_T1_S5_(ptr noundef %8, ptr noundef %9, ptr noundef %10)
  store [2 x i64] %11, ptr %7, align 8
  %12 = getelementptr inbounds %"struct.std::__1::pair.54", ptr %7, i32 0, i32 1
  %13 = load ptr, ptr %12, align 8
  ret ptr %13
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr void @_ZNSt3__19allocatorIcE9constructB8ue170006IcJcEEEvPT_DpOT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) #5 align 2 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  %7 = load ptr, ptr %4, align 8
  %8 = load ptr, ptr %5, align 8
  %9 = load ptr, ptr %6, align 8
  %10 = load i8, ptr %9, align 1
  store i8 %10, ptr %8, align 1
  ret void
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden [2 x i64] @_ZNSt3__115__move_backwardB8ue170006INS_17_ClassicAlgPolicyEPcS2_S2_EENS_4pairIT0_T2_EES4_T1_S5_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #1 {
  %4 = alloca %"struct.std::__1::pair.54", align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  store ptr %2, ptr %7, align 8
  %8 = load ptr, ptr %5, align 8
  %9 = load ptr, ptr %6, align 8
  %10 = load ptr, ptr %7, align 8
  %11 = call [2 x i64] @_ZNSt3__123__dispatch_copy_or_moveB8ue170006INS_17_ClassicAlgPolicyENS_20__move_backward_loopIS1_EENS_23__move_backward_trivialEPcS5_S5_EENS_4pairIT2_T4_EES7_T3_S8_(ptr noundef %8, ptr noundef %9, ptr noundef %10)
  store [2 x i64] %11, ptr %4, align 8
  %12 = load [2 x i64], ptr %4, align 8
  ret [2 x i64] %12
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden [2 x i64] @_ZNSt3__123__dispatch_copy_or_moveB8ue170006INS_17_ClassicAlgPolicyENS_20__move_backward_loopIS1_EENS_23__move_backward_trivialEPcS5_S5_EENS_4pairIT2_T4_EES7_T3_S8_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #1 {
  %4 = alloca %"struct.std::__1::pair.54", align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  store ptr %2, ptr %7, align 8
  %8 = load ptr, ptr %5, align 8
  %9 = load ptr, ptr %6, align 8
  %10 = load ptr, ptr %7, align 8
  %11 = call [2 x i64] @_ZNSt3__121__unwrap_and_dispatchB8ue170006INS_10__overloadINS_20__move_backward_loopINS_17_ClassicAlgPolicyEEENS_23__move_backward_trivialEEEPcS7_S7_Li0EEENS_4pairIT0_T2_EES9_T1_SA_(ptr noundef %8, ptr noundef %9, ptr noundef %10)
  store [2 x i64] %11, ptr %4, align 8
  %12 = load [2 x i64], ptr %4, align 8
  ret [2 x i64] %12
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden [2 x i64] @_ZNSt3__121__unwrap_and_dispatchB8ue170006INS_10__overloadINS_20__move_backward_loopINS_17_ClassicAlgPolicyEEENS_23__move_backward_trivialEEEPcS7_S7_Li0EEENS_4pairIT0_T2_EES9_T1_SA_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #1 {
  %4 = alloca %"struct.std::__1::pair.54", align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca %"struct.std::__1::pair.54", align 8
  %9 = alloca %"struct.std::__1::pair.54", align 8
  %10 = alloca %"struct.std::__1::__overload.37", align 1
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  store ptr %2, ptr %7, align 8
  %13 = load ptr, ptr %5, align 8
  %14 = load ptr, ptr %6, align 8
  %15 = call [2 x i64] @_ZNSt3__114__unwrap_rangeB8ue170006IPcS1_EENS_4pairIT0_S3_EET_S5_(ptr noundef %13, ptr noundef %14)
  store [2 x i64] %15, ptr %8, align 8
  %16 = getelementptr inbounds %"struct.std::__1::pair.54", ptr %8, i32 0, i32 0
  %17 = load ptr, ptr %16, align 8
  %18 = getelementptr inbounds %"struct.std::__1::pair.54", ptr %8, i32 0, i32 1
  %19 = load ptr, ptr %18, align 8
  %20 = load ptr, ptr %7, align 8
  %21 = call ptr @_ZNSt3__113__unwrap_iterB8ue170006IPcNS_18__unwrap_iter_implIS1_Lb1EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEES5_(ptr noundef %20) #12
  %22 = call [2 x i64] @_ZNKSt3__123__move_backward_trivialclB8ue170006IccLi0EEENS_4pairIPT_PT0_EES4_S4_S6_(ptr noundef %10, ptr noundef %17, ptr noundef %19, ptr noundef %21)
  store [2 x i64] %22, ptr %9, align 8
  %23 = load ptr, ptr %5, align 8
  %24 = getelementptr inbounds %"struct.std::__1::pair.54", ptr %9, i32 0, i32 0
  %25 = load ptr, ptr %24, align 8
  %26 = call ptr @_ZNSt3__114__rewrap_rangeB8ue170006IPcS1_EET_S2_T0_(ptr noundef %23, ptr noundef %25)
  store ptr %26, ptr %11, align 8
  %27 = load ptr, ptr %7, align 8
  %28 = getelementptr inbounds %"struct.std::__1::pair.54", ptr %9, i32 0, i32 1
  %29 = load ptr, ptr %28, align 8
  %30 = call ptr @_ZNSt3__113__rewrap_iterB8ue170006IPcS1_NS_18__unwrap_iter_implIS1_Lb1EEEEET_S4_T0_(ptr noundef %27, ptr noundef %29) #12
  store ptr %30, ptr %12, align 8
  %31 = call [2 x i64] @_ZNSt3__19make_pairB8ue170006IPcS1_EENS_4pairINS_18__unwrap_ref_decayIT_E4typeENS3_IT0_E4typeEEEOS4_OS7_(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(8) %12)
  store [2 x i64] %31, ptr %4, align 8
  %32 = load [2 x i64], ptr %4, align 8
  ret [2 x i64] %32
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden [2 x i64] @_ZNSt3__114__unwrap_rangeB8ue170006IPcS1_EENS_4pairIT0_S3_EET_S5_(ptr noundef %0, ptr noundef %1) #1 {
  %3 = alloca %"struct.std::__1::pair.54", align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  %8 = load ptr, ptr %4, align 8
  %9 = call ptr @_ZNSt3__113__unwrap_iterB8ue170006IPcNS_18__unwrap_iter_implIS1_Lb1EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEES5_(ptr noundef %8) #12
  store ptr %9, ptr %6, align 8
  %10 = load ptr, ptr %5, align 8
  %11 = call ptr @_ZNSt3__113__unwrap_iterB8ue170006IPcNS_18__unwrap_iter_implIS1_Lb1EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEES5_(ptr noundef %10) #12
  store ptr %11, ptr %7, align 8
  %12 = call [2 x i64] @_ZNSt3__19make_pairB8ue170006IPcS1_EENS_4pairINS_18__unwrap_ref_decayIT_E4typeENS3_IT0_E4typeEEEOS4_OS7_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %7)
  store [2 x i64] %12, ptr %3, align 8
  %13 = load [2 x i64], ptr %3, align 8
  ret [2 x i64] %13
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden [2 x i64] @_ZNKSt3__123__move_backward_trivialclB8ue170006IccLi0EEENS_4pairIPT_PT0_EES4_S4_S6_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #1 align 2 {
  %5 = alloca %"struct.std::__1::pair.54", align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  store ptr %0, ptr %6, align 8
  store ptr %1, ptr %7, align 8
  store ptr %2, ptr %8, align 8
  store ptr %3, ptr %9, align 8
  %10 = load ptr, ptr %6, align 8
  %11 = load ptr, ptr %7, align 8
  %12 = load ptr, ptr %8, align 8
  %13 = load ptr, ptr %9, align 8
  %14 = call [2 x i64] @_ZNSt3__128__copy_backward_trivial_implB8ue170006IccEENS_4pairIPT_PT0_EES3_S3_S5_(ptr noundef %11, ptr noundef %12, ptr noundef %13)
  store [2 x i64] %14, ptr %5, align 8
  %15 = load [2 x i64], ptr %5, align 8
  ret [2 x i64] %15
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden ptr @_ZNSt3__113__unwrap_iterB8ue170006IPcNS_18__unwrap_iter_implIS1_Lb1EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEES5_(ptr noundef %0) #5 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = call ptr @_ZNSt3__118__unwrap_iter_implIPcLb1EE8__unwrapB8ue170006ES1_(ptr noundef %3) #12
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden [2 x i64] @_ZNSt3__19make_pairB8ue170006IPcS1_EENS_4pairINS_18__unwrap_ref_decayIT_E4typeENS3_IT0_E4typeEEEOS4_OS7_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #5 {
  %3 = alloca %"struct.std::__1::pair.54", align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  %6 = load ptr, ptr %4, align 8
  %7 = load ptr, ptr %5, align 8
  %8 = call ptr @_ZNSt3__14pairIPcS1_EC1B8ue170006IS1_S1_LPv0EEEOT_OT0_(ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %7) #12
  %9 = load [2 x i64], ptr %3, align 8
  ret [2 x i64] %9
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden ptr @_ZNSt3__114__rewrap_rangeB8ue170006IPcS1_EET_S2_T0_(ptr noundef %0, ptr noundef %1) #5 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = load ptr, ptr %4, align 8
  %7 = call ptr @_ZNSt3__113__rewrap_iterB8ue170006IPcS1_NS_18__unwrap_iter_implIS1_Lb1EEEEET_S4_T0_(ptr noundef %5, ptr noundef %6) #12
  ret ptr %7
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden ptr @_ZNSt3__113__rewrap_iterB8ue170006IPcS1_NS_18__unwrap_iter_implIS1_Lb1EEEEET_S4_T0_(ptr noundef %0, ptr noundef %1) #5 personality ptr @__gxx_personality_v0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = load ptr, ptr %4, align 8
  %7 = invoke ptr @_ZNSt3__118__unwrap_iter_implIPcLb1EE8__rewrapB8ue170006ES1_S1_(ptr noundef %5, ptr noundef %6)
          to label %8 unwind label %9

8:                                                ; preds = %2
  ret ptr %7

9:                                                ; preds = %2
  %10 = landingpad { ptr, i32 }
          catch ptr null
  %11 = extractvalue { ptr, i32 } %10, 0
  call void @__clang_call_terminate(ptr %11) #14
  unreachable
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden [2 x i64] @_ZNSt3__128__copy_backward_trivial_implB8ue170006IccEENS_4pairIPT_PT0_EES3_S3_S5_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #1 {
  %4 = alloca %"struct.std::__1::pair.54", align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i64, align 8
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  store ptr %2, ptr %7, align 8
  %9 = load ptr, ptr %6, align 8
  %10 = load ptr, ptr %5, align 8
  %11 = ptrtoint ptr %9 to i64
  %12 = ptrtoint ptr %10 to i64
  %13 = sub i64 %11, %12
  store i64 %13, ptr %8, align 8
  %14 = load i64, ptr %8, align 8
  %15 = load ptr, ptr %7, align 8
  %16 = sub i64 0, %14
  %17 = getelementptr inbounds i8, ptr %15, i64 %16
  store ptr %17, ptr %7, align 8
  %18 = load ptr, ptr %7, align 8
  %19 = load ptr, ptr %5, align 8
  %20 = load i64, ptr %8, align 8
  %21 = call ptr @_ZNSt3__119__constexpr_memmoveB8ue170006IccLi0EEEPT_S2_PT0_NS_15__element_countE(ptr noundef %18, ptr noundef %19, i64 noundef %20)
  %22 = call [2 x i64] @_ZNSt3__19make_pairB8ue170006IRPcS2_EENS_4pairINS_18__unwrap_ref_decayIT_E4typeENS4_IT0_E4typeEEEOS5_OS8_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %7)
  store [2 x i64] %22, ptr %4, align 8
  %23 = load [2 x i64], ptr %4, align 8
  ret [2 x i64] %23
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden ptr @_ZNSt3__119__constexpr_memmoveB8ue170006IccLi0EEEPT_S2_PT0_NS_15__element_countE(ptr noundef %0, ptr noundef %1, i64 noundef %2) #5 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store i64 %2, ptr %6, align 8
  %8 = load i64, ptr %6, align 8
  store i64 %8, ptr %7, align 8
  %9 = load i64, ptr %7, align 8
  %10 = icmp ugt i64 %9, 0
  br i1 %10, label %11, label %18

11:                                               ; preds = %3
  %12 = load ptr, ptr %4, align 8
  %13 = load ptr, ptr %5, align 8
  %14 = load i64, ptr %7, align 8
  %15 = sub i64 %14, 1
  %16 = mul i64 %15, 1
  %17 = add i64 %16, 1
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %12, ptr align 1 %13, i64 %17, i1 false)
  br label %18

18:                                               ; preds = %11, %3
  %19 = load ptr, ptr %4, align 8
  ret ptr %19
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden [2 x i64] @_ZNSt3__19make_pairB8ue170006IRPcS2_EENS_4pairINS_18__unwrap_ref_decayIT_E4typeENS4_IT0_E4typeEEEOS5_OS8_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #5 {
  %3 = alloca %"struct.std::__1::pair.54", align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  %6 = load ptr, ptr %4, align 8
  %7 = load ptr, ptr %5, align 8
  %8 = call ptr @_ZNSt3__14pairIPcS1_EC1B8ue170006IRS1_S4_LPv0EEEOT_OT0_(ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %7) #12
  %9 = load [2 x i64], ptr %3, align 8
  ret [2 x i64] %9
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr ptr @_ZNSt3__14pairIPcS1_EC1B8ue170006IRS1_S4_LPv0EEEOT_OT0_(ptr noundef returned %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #0 align 2 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  %7 = load ptr, ptr %4, align 8
  %8 = load ptr, ptr %5, align 8
  %9 = load ptr, ptr %6, align 8
  %10 = call ptr @_ZNSt3__14pairIPcS1_EC2B8ue170006IRS1_S4_LPv0EEEOT_OT0_(ptr noundef %7, ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %9) #12
  ret ptr %7
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr ptr @_ZNSt3__14pairIPcS1_EC2B8ue170006IRS1_S4_LPv0EEEOT_OT0_(ptr noundef returned %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #0 align 2 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  %7 = load ptr, ptr %4, align 8
  %8 = getelementptr inbounds %"struct.std::__1::pair.54", ptr %7, i32 0, i32 0
  %9 = load ptr, ptr %5, align 8
  %10 = load ptr, ptr %9, align 8
  store ptr %10, ptr %8, align 8
  %11 = getelementptr inbounds %"struct.std::__1::pair.54", ptr %7, i32 0, i32 1
  %12 = load ptr, ptr %6, align 8
  %13 = load ptr, ptr %12, align 8
  store ptr %13, ptr %11, align 8
  ret ptr %7
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden ptr @_ZNSt3__118__unwrap_iter_implIPcLb1EE8__unwrapB8ue170006ES1_(ptr noundef %0) #5 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = call ptr @_ZNSt3__112__to_addressB8ue170006IcEEPT_S2_(ptr noundef %3) #12
  ret ptr %4
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr ptr @_ZNSt3__14pairIPcS1_EC1B8ue170006IS1_S1_LPv0EEEOT_OT0_(ptr noundef returned %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #0 align 2 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  %7 = load ptr, ptr %4, align 8
  %8 = load ptr, ptr %5, align 8
  %9 = load ptr, ptr %6, align 8
  %10 = call ptr @_ZNSt3__14pairIPcS1_EC2B8ue170006IS1_S1_LPv0EEEOT_OT0_(ptr noundef %7, ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %9) #12
  ret ptr %7
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr ptr @_ZNSt3__14pairIPcS1_EC2B8ue170006IS1_S1_LPv0EEEOT_OT0_(ptr noundef returned %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #0 align 2 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  %7 = load ptr, ptr %4, align 8
  %8 = getelementptr inbounds %"struct.std::__1::pair.54", ptr %7, i32 0, i32 0
  %9 = load ptr, ptr %5, align 8
  %10 = load ptr, ptr %9, align 8
  store ptr %10, ptr %8, align 8
  %11 = getelementptr inbounds %"struct.std::__1::pair.54", ptr %7, i32 0, i32 1
  %12 = load ptr, ptr %6, align 8
  %13 = load ptr, ptr %12, align 8
  store ptr %13, ptr %11, align 8
  ret ptr %7
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden ptr @_ZNSt3__118__unwrap_iter_implIPcLb1EE8__rewrapB8ue170006ES1_S1_(ptr noundef %0, ptr noundef %1) #5 align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = load ptr, ptr %4, align 8
  %7 = load ptr, ptr %3, align 8
  %8 = call ptr @_ZNSt3__112__to_addressB8ue170006IcEEPT_S2_(ptr noundef %7) #12
  %9 = ptrtoint ptr %6 to i64
  %10 = ptrtoint ptr %8 to i64
  %11 = sub i64 %9, %10
  %12 = getelementptr inbounds i8, ptr %5, i64 %11
  ret ptr %12
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden ptr @_ZNSt3__14moveB8ue170006IPcS1_EET0_T_S3_S2_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #1 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca %"struct.std::__1::pair.54", align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  %8 = load ptr, ptr %4, align 8
  %9 = load ptr, ptr %5, align 8
  %10 = load ptr, ptr %6, align 8
  %11 = call [2 x i64] @_ZNSt3__16__moveB8ue170006INS_17_ClassicAlgPolicyEPcS2_S2_EENS_4pairIT0_T2_EES4_T1_S5_(ptr noundef %8, ptr noundef %9, ptr noundef %10)
  store [2 x i64] %11, ptr %7, align 8
  %12 = getelementptr inbounds %"struct.std::__1::pair.54", ptr %7, i32 0, i32 1
  %13 = load ptr, ptr %12, align 8
  ret ptr %13
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr void @_ZNSt3__114__split_bufferIcRNS_9allocatorIcEEE18__construct_at_endINS_13move_iteratorIPcEEEENS_9enable_ifIXsr31__has_forward_iterator_categoryIT_EE5valueEvE4typeESA_SA_(ptr noundef %0, i64 %1, i64 %2) #1 align 2 {
  %4 = alloca %"class.std::__1::move_iterator.55", align 8
  %5 = alloca %"class.std::__1::move_iterator.55", align 8
  %6 = alloca ptr, align 8
  %7 = alloca %"class.std::__1::move_iterator.55", align 8
  %8 = alloca %"class.std::__1::move_iterator.55", align 8
  %9 = alloca %"class.std::__1::move_iterator.55", align 8
  %10 = getelementptr inbounds %"class.std::__1::move_iterator.55", ptr %4, i32 0, i32 0
  %11 = inttoptr i64 %1 to ptr
  store ptr %11, ptr %10, align 8
  %12 = getelementptr inbounds %"class.std::__1::move_iterator.55", ptr %5, i32 0, i32 0
  %13 = inttoptr i64 %2 to ptr
  store ptr %13, ptr %12, align 8
  store ptr %0, ptr %6, align 8
  %14 = load ptr, ptr %6, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %7, ptr align 8 %4, i64 8, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %8, ptr align 8 %4, i64 8, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %9, ptr align 8 %5, i64 8, i1 false)
  %15 = getelementptr inbounds %"class.std::__1::move_iterator.55", ptr %8, i32 0, i32 0
  %16 = load ptr, ptr %15, align 8
  %17 = ptrtoint ptr %16 to i64
  %18 = getelementptr inbounds %"class.std::__1::move_iterator.55", ptr %9, i32 0, i32 0
  %19 = load ptr, ptr %18, align 8
  %20 = ptrtoint ptr %19 to i64
  %21 = call i64 @_ZNSt3__18distanceB8ue170006INS_13move_iteratorIPcEEEENS_15iterator_traitsIT_E15difference_typeES5_S5_(i64 %17, i64 %20)
  %22 = getelementptr inbounds %"class.std::__1::move_iterator.55", ptr %7, i32 0, i32 0
  %23 = load ptr, ptr %22, align 8
  %24 = ptrtoint ptr %23 to i64
  call void @_ZNSt3__114__split_bufferIcRNS_9allocatorIcEEE28__construct_at_end_with_sizeINS_13move_iteratorIPcEEEEvT_m(ptr noundef %14, i64 %24, i64 noundef %21)
  ret void
}

; Function Attrs: noinline optnone ssp uwtable(sync)
define linkonce_odr hidden ptr @_ZNSt3__113move_iteratorIPcEC1B8ue170006ES1_(ptr noundef returned %0, ptr noundef %1) unnamed_addr #3 align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = load ptr, ptr %4, align 8
  %7 = call ptr @_ZNSt3__113move_iteratorIPcEC2B8ue170006ES1_(ptr noundef %5, ptr noundef %6)
  ret ptr %5
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden [2 x i64] @_ZNSt3__16__moveB8ue170006INS_17_ClassicAlgPolicyEPcS2_S2_EENS_4pairIT0_T2_EES4_T1_S5_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #1 {
  %4 = alloca %"struct.std::__1::pair.54", align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  store ptr %2, ptr %7, align 8
  %8 = load ptr, ptr %5, align 8
  %9 = load ptr, ptr %6, align 8
  %10 = load ptr, ptr %7, align 8
  %11 = call [2 x i64] @_ZNSt3__123__dispatch_copy_or_moveB8ue170006INS_17_ClassicAlgPolicyENS_11__move_loopIS1_EENS_14__move_trivialEPcS5_S5_EENS_4pairIT2_T4_EES7_T3_S8_(ptr noundef %8, ptr noundef %9, ptr noundef %10)
  store [2 x i64] %11, ptr %4, align 8
  %12 = load [2 x i64], ptr %4, align 8
  ret [2 x i64] %12
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden [2 x i64] @_ZNSt3__123__dispatch_copy_or_moveB8ue170006INS_17_ClassicAlgPolicyENS_11__move_loopIS1_EENS_14__move_trivialEPcS5_S5_EENS_4pairIT2_T4_EES7_T3_S8_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #1 {
  %4 = alloca %"struct.std::__1::pair.54", align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  store ptr %2, ptr %7, align 8
  %8 = load ptr, ptr %5, align 8
  %9 = load ptr, ptr %6, align 8
  %10 = load ptr, ptr %7, align 8
  %11 = call [2 x i64] @_ZNSt3__121__unwrap_and_dispatchB8ue170006INS_10__overloadINS_11__move_loopINS_17_ClassicAlgPolicyEEENS_14__move_trivialEEEPcS7_S7_Li0EEENS_4pairIT0_T2_EES9_T1_SA_(ptr noundef %8, ptr noundef %9, ptr noundef %10)
  store [2 x i64] %11, ptr %4, align 8
  %12 = load [2 x i64], ptr %4, align 8
  ret [2 x i64] %12
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden [2 x i64] @_ZNSt3__121__unwrap_and_dispatchB8ue170006INS_10__overloadINS_11__move_loopINS_17_ClassicAlgPolicyEEENS_14__move_trivialEEEPcS7_S7_Li0EEENS_4pairIT0_T2_EES9_T1_SA_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #1 {
  %4 = alloca %"struct.std::__1::pair.54", align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca %"struct.std::__1::pair.54", align 8
  %9 = alloca %"struct.std::__1::pair.54", align 8
  %10 = alloca %"struct.std::__1::__overload", align 1
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  store ptr %2, ptr %7, align 8
  %13 = load ptr, ptr %5, align 8
  %14 = load ptr, ptr %6, align 8
  %15 = call [2 x i64] @_ZNSt3__114__unwrap_rangeB8ue170006IPcS1_EENS_4pairIT0_S3_EET_S5_(ptr noundef %13, ptr noundef %14)
  store [2 x i64] %15, ptr %8, align 8
  %16 = getelementptr inbounds %"struct.std::__1::pair.54", ptr %8, i32 0, i32 0
  %17 = load ptr, ptr %16, align 8
  %18 = getelementptr inbounds %"struct.std::__1::pair.54", ptr %8, i32 0, i32 1
  %19 = load ptr, ptr %18, align 8
  %20 = load ptr, ptr %7, align 8
  %21 = call ptr @_ZNSt3__113__unwrap_iterB8ue170006IPcNS_18__unwrap_iter_implIS1_Lb1EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEES5_(ptr noundef %20) #12
  %22 = call [2 x i64] @_ZNKSt3__114__move_trivialclB8ue170006IccLi0EEENS_4pairIPT_PT0_EES4_S4_S6_(ptr noundef %10, ptr noundef %17, ptr noundef %19, ptr noundef %21)
  store [2 x i64] %22, ptr %9, align 8
  %23 = load ptr, ptr %5, align 8
  %24 = getelementptr inbounds %"struct.std::__1::pair.54", ptr %9, i32 0, i32 0
  %25 = load ptr, ptr %24, align 8
  %26 = call ptr @_ZNSt3__114__rewrap_rangeB8ue170006IPcS1_EET_S2_T0_(ptr noundef %23, ptr noundef %25)
  store ptr %26, ptr %11, align 8
  %27 = load ptr, ptr %7, align 8
  %28 = getelementptr inbounds %"struct.std::__1::pair.54", ptr %9, i32 0, i32 1
  %29 = load ptr, ptr %28, align 8
  %30 = call ptr @_ZNSt3__113__rewrap_iterB8ue170006IPcS1_NS_18__unwrap_iter_implIS1_Lb1EEEEET_S4_T0_(ptr noundef %27, ptr noundef %29) #12
  store ptr %30, ptr %12, align 8
  %31 = call [2 x i64] @_ZNSt3__19make_pairB8ue170006IPcS1_EENS_4pairINS_18__unwrap_ref_decayIT_E4typeENS3_IT0_E4typeEEEOS4_OS7_(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(8) %12)
  store [2 x i64] %31, ptr %4, align 8
  %32 = load [2 x i64], ptr %4, align 8
  ret [2 x i64] %32
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden [2 x i64] @_ZNKSt3__114__move_trivialclB8ue170006IccLi0EEENS_4pairIPT_PT0_EES4_S4_S6_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #1 align 2 {
  %5 = alloca %"struct.std::__1::pair.54", align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  store ptr %0, ptr %6, align 8
  store ptr %1, ptr %7, align 8
  store ptr %2, ptr %8, align 8
  store ptr %3, ptr %9, align 8
  %10 = load ptr, ptr %6, align 8
  %11 = load ptr, ptr %7, align 8
  %12 = load ptr, ptr %8, align 8
  %13 = load ptr, ptr %9, align 8
  %14 = call [2 x i64] @_ZNSt3__119__copy_trivial_implB8ue170006IccEENS_4pairIPT_PT0_EES3_S3_S5_(ptr noundef %11, ptr noundef %12, ptr noundef %13)
  store [2 x i64] %14, ptr %5, align 8
  %15 = load [2 x i64], ptr %5, align 8
  ret [2 x i64] %15
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden [2 x i64] @_ZNSt3__119__copy_trivial_implB8ue170006IccEENS_4pairIPT_PT0_EES3_S3_S5_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #1 {
  %4 = alloca %"struct.std::__1::pair.54", align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i64, align 8
  %9 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  store ptr %2, ptr %7, align 8
  %10 = load ptr, ptr %6, align 8
  %11 = load ptr, ptr %5, align 8
  %12 = ptrtoint ptr %10 to i64
  %13 = ptrtoint ptr %11 to i64
  %14 = sub i64 %12, %13
  store i64 %14, ptr %8, align 8
  %15 = load ptr, ptr %7, align 8
  %16 = load ptr, ptr %5, align 8
  %17 = load i64, ptr %8, align 8
  %18 = call ptr @_ZNSt3__119__constexpr_memmoveB8ue170006IccLi0EEEPT_S2_PT0_NS_15__element_countE(ptr noundef %15, ptr noundef %16, i64 noundef %17)
  %19 = load ptr, ptr %7, align 8
  %20 = load i64, ptr %8, align 8
  %21 = getelementptr inbounds i8, ptr %19, i64 %20
  store ptr %21, ptr %9, align 8
  %22 = call [2 x i64] @_ZNSt3__19make_pairB8ue170006IRPcS1_EENS_4pairINS_18__unwrap_ref_decayIT_E4typeENS4_IT0_E4typeEEEOS5_OS8_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %9)
  store [2 x i64] %22, ptr %4, align 8
  %23 = load [2 x i64], ptr %4, align 8
  ret [2 x i64] %23
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden [2 x i64] @_ZNSt3__19make_pairB8ue170006IRPcS1_EENS_4pairINS_18__unwrap_ref_decayIT_E4typeENS4_IT0_E4typeEEEOS5_OS8_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #5 {
  %3 = alloca %"struct.std::__1::pair.54", align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  %6 = load ptr, ptr %4, align 8
  %7 = load ptr, ptr %5, align 8
  %8 = call ptr @_ZNSt3__14pairIPcS1_EC1B8ue170006IRS1_S1_LPv0EEEOT_OT0_(ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %7) #12
  %9 = load [2 x i64], ptr %3, align 8
  ret [2 x i64] %9
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr ptr @_ZNSt3__14pairIPcS1_EC1B8ue170006IRS1_S1_LPv0EEEOT_OT0_(ptr noundef returned %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #0 align 2 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  %7 = load ptr, ptr %4, align 8
  %8 = load ptr, ptr %5, align 8
  %9 = load ptr, ptr %6, align 8
  %10 = call ptr @_ZNSt3__14pairIPcS1_EC2B8ue170006IRS1_S1_LPv0EEEOT_OT0_(ptr noundef %7, ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %9) #12
  ret ptr %7
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr ptr @_ZNSt3__14pairIPcS1_EC2B8ue170006IRS1_S1_LPv0EEEOT_OT0_(ptr noundef returned %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #0 align 2 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  %7 = load ptr, ptr %4, align 8
  %8 = getelementptr inbounds %"struct.std::__1::pair.54", ptr %7, i32 0, i32 0
  %9 = load ptr, ptr %5, align 8
  %10 = load ptr, ptr %9, align 8
  store ptr %10, ptr %8, align 8
  %11 = getelementptr inbounds %"struct.std::__1::pair.54", ptr %7, i32 0, i32 1
  %12 = load ptr, ptr %6, align 8
  %13 = load ptr, ptr %12, align 8
  store ptr %13, ptr %11, align 8
  ret ptr %7
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr void @_ZNSt3__114__split_bufferIcRNS_9allocatorIcEEE28__construct_at_end_with_sizeINS_13move_iteratorIPcEEEEvT_m(ptr noundef %0, i64 %1, i64 noundef %2) #1 align 2 personality ptr @__gxx_personality_v0 {
  %4 = alloca %"class.std::__1::move_iterator.55", align 8
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  %7 = alloca %"struct.std::__1::__split_buffer<char, std::__1::allocator<char> &>::_ConstructTransaction", align 8
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = getelementptr inbounds %"class.std::__1::move_iterator.55", ptr %4, i32 0, i32 0
  %11 = inttoptr i64 %1 to ptr
  store ptr %11, ptr %10, align 8
  store ptr %0, ptr %5, align 8
  store i64 %2, ptr %6, align 8
  %12 = load ptr, ptr %5, align 8
  %13 = getelementptr inbounds %"struct.std::__1::__split_buffer.47", ptr %12, i32 0, i32 2
  %14 = load i64, ptr %6, align 8
  %15 = call ptr @_ZNSt3__114__split_bufferIcRNS_9allocatorIcEEE21_ConstructTransactionC1B8ue170006EPPcm(ptr noundef %7, ptr noundef %13, i64 noundef %14) #12
  br label %16

16:                                               ; preds = %35, %3
  %17 = getelementptr inbounds %"struct.std::__1::__split_buffer<char, std::__1::allocator<char> &>::_ConstructTransaction", ptr %7, i32 0, i32 0
  %18 = load ptr, ptr %17, align 8
  %19 = getelementptr inbounds %"struct.std::__1::__split_buffer<char, std::__1::allocator<char> &>::_ConstructTransaction", ptr %7, i32 0, i32 1
  %20 = load ptr, ptr %19, align 8
  %21 = icmp ne ptr %18, %20
  br i1 %21, label %22, label %41

22:                                               ; preds = %16
  %23 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__114__split_bufferIcRNS_9allocatorIcEEE7__allocB8ue170006Ev(ptr noundef %12) #12
  %24 = getelementptr inbounds %"struct.std::__1::__split_buffer<char, std::__1::allocator<char> &>::_ConstructTransaction", ptr %7, i32 0, i32 0
  %25 = load ptr, ptr %24, align 8
  %26 = call ptr @_ZNSt3__112__to_addressB8ue170006IcEEPT_S2_(ptr noundef %25) #12
  %27 = invoke noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt3__113move_iteratorIPcEdeB8ue170006Ev(ptr noundef %4)
          to label %28 unwind label %36

28:                                               ; preds = %22
  invoke void @_ZNSt3__116allocator_traitsINS_9allocatorIcEEE9constructB8ue170006IcJcEvEEvRS2_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %23, ptr noundef %26, ptr noundef nonnull align 1 dereferenceable(1) %27)
          to label %29 unwind label %36

29:                                               ; preds = %28
  br label %30

30:                                               ; preds = %29
  %31 = getelementptr inbounds %"struct.std::__1::__split_buffer<char, std::__1::allocator<char> &>::_ConstructTransaction", ptr %7, i32 0, i32 0
  %32 = load ptr, ptr %31, align 8
  %33 = getelementptr inbounds i8, ptr %32, i32 1
  store ptr %33, ptr %31, align 8
  %34 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__113move_iteratorIPcEppB8ue170006Ev(ptr noundef %4)
          to label %35 unwind label %36

35:                                               ; preds = %30
  br label %16, !llvm.loop !20

36:                                               ; preds = %30, %28, %22
  %37 = landingpad { ptr, i32 }
          cleanup
  %38 = extractvalue { ptr, i32 } %37, 0
  store ptr %38, ptr %8, align 8
  %39 = extractvalue { ptr, i32 } %37, 1
  store i32 %39, ptr %9, align 4
  %40 = call ptr @_ZNSt3__114__split_bufferIcRNS_9allocatorIcEEE21_ConstructTransactionD1B8ue170006Ev(ptr noundef %7) #12
  br label %43

41:                                               ; preds = %16
  %42 = call ptr @_ZNSt3__114__split_bufferIcRNS_9allocatorIcEEE21_ConstructTransactionD1B8ue170006Ev(ptr noundef %7) #12
  ret void

43:                                               ; preds = %36
  %44 = load ptr, ptr %8, align 8
  %45 = load i32, ptr %9, align 4
  %46 = insertvalue { ptr, i32 } undef, ptr %44, 0
  %47 = insertvalue { ptr, i32 } %46, i32 %45, 1
  resume { ptr, i32 } %47
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden i64 @_ZNSt3__18distanceB8ue170006INS_13move_iteratorIPcEEEENS_15iterator_traitsIT_E15difference_typeES5_S5_(i64 %0, i64 %1) #1 {
  %3 = alloca %"class.std::__1::move_iterator.55", align 8
  %4 = alloca %"class.std::__1::move_iterator.55", align 8
  %5 = alloca %"class.std::__1::move_iterator.55", align 8
  %6 = alloca %"class.std::__1::move_iterator.55", align 8
  %7 = alloca %"struct.std::__1::random_access_iterator_tag", align 1
  %8 = getelementptr inbounds %"class.std::__1::move_iterator.55", ptr %3, i32 0, i32 0
  %9 = inttoptr i64 %0 to ptr
  store ptr %9, ptr %8, align 8
  %10 = getelementptr inbounds %"class.std::__1::move_iterator.55", ptr %4, i32 0, i32 0
  %11 = inttoptr i64 %1 to ptr
  store ptr %11, ptr %10, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %5, ptr align 8 %3, i64 8, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %6, ptr align 8 %4, i64 8, i1 false)
  %12 = getelementptr inbounds %"class.std::__1::move_iterator.55", ptr %5, i32 0, i32 0
  %13 = load ptr, ptr %12, align 8
  %14 = ptrtoint ptr %13 to i64
  %15 = getelementptr inbounds %"class.std::__1::move_iterator.55", ptr %6, i32 0, i32 0
  %16 = load ptr, ptr %15, align 8
  %17 = ptrtoint ptr %16 to i64
  %18 = call i64 @_ZNSt3__110__distanceB8ue170006INS_13move_iteratorIPcEEEENS_15iterator_traitsIT_E15difference_typeES5_S5_NS_26random_access_iterator_tagE(i64 %14, i64 %17)
  ret i64 %18
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden ptr @_ZNSt3__114__split_bufferIcRNS_9allocatorIcEEE21_ConstructTransactionC1B8ue170006EPPcm(ptr noundef returned %0, ptr noundef %1, i64 noundef %2) unnamed_addr #0 align 2 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store i64 %2, ptr %6, align 8
  %7 = load ptr, ptr %4, align 8
  %8 = load ptr, ptr %5, align 8
  %9 = load i64, ptr %6, align 8
  %10 = call ptr @_ZNSt3__114__split_bufferIcRNS_9allocatorIcEEE21_ConstructTransactionC2B8ue170006EPPcm(ptr noundef %7, ptr noundef %8, i64 noundef %9) #12
  ret ptr %7
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt3__113move_iteratorIPcEdeB8ue170006Ev(ptr noundef %0) #5 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.std::__1::move_iterator.55", ptr %3, i32 0, i32 0
  %5 = load ptr, ptr %4, align 8
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__113move_iteratorIPcEppB8ue170006Ev(ptr noundef %0) #5 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.std::__1::move_iterator.55", ptr %3, i32 0, i32 0
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds i8, ptr %5, i32 1
  store ptr %6, ptr %4, align 8
  ret ptr %3
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden ptr @_ZNSt3__114__split_bufferIcRNS_9allocatorIcEEE21_ConstructTransactionD1B8ue170006Ev(ptr noundef returned %0) unnamed_addr #0 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = call ptr @_ZNSt3__114__split_bufferIcRNS_9allocatorIcEEE21_ConstructTransactionD2B8ue170006Ev(ptr noundef %3) #12
  ret ptr %3
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden ptr @_ZNSt3__114__split_bufferIcRNS_9allocatorIcEEE21_ConstructTransactionC2B8ue170006EPPcm(ptr noundef returned %0, ptr noundef %1, i64 noundef %2) unnamed_addr #0 align 2 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store i64 %2, ptr %6, align 8
  %7 = load ptr, ptr %4, align 8
  %8 = getelementptr inbounds %"struct.std::__1::__split_buffer<char, std::__1::allocator<char> &>::_ConstructTransaction", ptr %7, i32 0, i32 0
  %9 = load ptr, ptr %5, align 8
  %10 = load ptr, ptr %9, align 8
  store ptr %10, ptr %8, align 8
  %11 = getelementptr inbounds %"struct.std::__1::__split_buffer<char, std::__1::allocator<char> &>::_ConstructTransaction", ptr %7, i32 0, i32 1
  %12 = load ptr, ptr %5, align 8
  %13 = load ptr, ptr %12, align 8
  %14 = load i64, ptr %6, align 8
  %15 = getelementptr inbounds i8, ptr %13, i64 %14
  store ptr %15, ptr %11, align 8
  %16 = getelementptr inbounds %"struct.std::__1::__split_buffer<char, std::__1::allocator<char> &>::_ConstructTransaction", ptr %7, i32 0, i32 2
  %17 = load ptr, ptr %5, align 8
  store ptr %17, ptr %16, align 8
  ret ptr %7
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden ptr @_ZNSt3__114__split_bufferIcRNS_9allocatorIcEEE21_ConstructTransactionD2B8ue170006Ev(ptr noundef returned %0) unnamed_addr #0 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"struct.std::__1::__split_buffer<char, std::__1::allocator<char> &>::_ConstructTransaction", ptr %3, i32 0, i32 0
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %"struct.std::__1::__split_buffer<char, std::__1::allocator<char> &>::_ConstructTransaction", ptr %3, i32 0, i32 2
  %7 = load ptr, ptr %6, align 8
  store ptr %5, ptr %7, align 8
  ret ptr %3
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden i64 @_ZNSt3__110__distanceB8ue170006INS_13move_iteratorIPcEEEENS_15iterator_traitsIT_E15difference_typeES5_S5_NS_26random_access_iterator_tagE(i64 %0, i64 %1) #1 {
  %3 = alloca %"class.std::__1::move_iterator.55", align 8
  %4 = alloca %"class.std::__1::move_iterator.55", align 8
  %5 = alloca %"struct.std::__1::random_access_iterator_tag", align 1
  %6 = getelementptr inbounds %"class.std::__1::move_iterator.55", ptr %3, i32 0, i32 0
  %7 = inttoptr i64 %0 to ptr
  store ptr %7, ptr %6, align 8
  %8 = getelementptr inbounds %"class.std::__1::move_iterator.55", ptr %4, i32 0, i32 0
  %9 = inttoptr i64 %1 to ptr
  store ptr %9, ptr %8, align 8
  %10 = call i64 @_ZNSt3__1miB8ue170006IPcS1_EEDTmicldtfp_4baseEcldtfp0_4baseEERKNS_13move_iteratorIT_EERKNS3_IT0_EE(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %3)
  ret i64 %10
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden i64 @_ZNSt3__1miB8ue170006IPcS1_EEDTmicldtfp_4baseEcldtfp0_4baseEERKNS_13move_iteratorIT_EERKNS3_IT0_EE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #1 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = call ptr @_ZNKSt3__113move_iteratorIPcE4baseB8ue170006Ev(ptr noundef %5)
  %7 = load ptr, ptr %4, align 8
  %8 = call ptr @_ZNKSt3__113move_iteratorIPcE4baseB8ue170006Ev(ptr noundef %7)
  %9 = ptrtoint ptr %6 to i64
  %10 = ptrtoint ptr %8 to i64
  %11 = sub i64 %9, %10
  ret i64 %11
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden ptr @_ZNKSt3__113move_iteratorIPcE4baseB8ue170006Ev(ptr noundef %0) #5 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.std::__1::move_iterator.55", ptr %3, i32 0, i32 0
  %5 = load ptr, ptr %4, align 8
  ret ptr %5
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden ptr @_ZNSt3__113move_iteratorIPcEC2B8ue170006ES1_(ptr noundef returned %0, ptr noundef %1) unnamed_addr #0 align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = getelementptr inbounds %"class.std::__1::move_iterator.55", ptr %5, i32 0, i32 0
  %7 = load ptr, ptr %4, align 8
  store ptr %7, ptr %6, align 8
  ret ptr %5
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden ptr @_ZNSt3__142__uninitialized_allocator_move_if_noexceptB8ue170006INS_9allocatorIcEEPcS3_cvEET1_RT_T0_S7_S4_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #1 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  store ptr %2, ptr %7, align 8
  store ptr %3, ptr %8, align 8
  %9 = load ptr, ptr %6, align 8
  %10 = load ptr, ptr %7, align 8
  %11 = load ptr, ptr %8, align 8
  %12 = call ptr @_ZNSt3__14moveB8ue170006IPcS1_EET0_T_S3_S2_(ptr noundef %9, ptr noundef %10, ptr noundef %11)
  ret ptr %12
}

; Function Attrs: mustprogress noinline noreturn optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNKSt3__16vectorIcNS_9allocatorIcEEE20__throw_out_of_rangeB8ue170006Ev(ptr noundef %0) #8 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  call void @_ZNSt3__120__throw_out_of_rangeB8ue170006EPKc(ptr noundef @.str.2) #13
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden i64 @_ZNSt3__1miB8ue170006IPKcS2_EEDTmicldtfp_4baseEcldtfp0_4baseEERKNS_11__wrap_iterIT_EERKNS4_IT0_EE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #5 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = call ptr @_ZNKSt3__111__wrap_iterIPKcE4baseB8ue170006Ev(ptr noundef %5) #12
  %7 = load ptr, ptr %4, align 8
  %8 = call ptr @_ZNKSt3__111__wrap_iterIPKcE4baseB8ue170006Ev(ptr noundef %7) #12
  %9 = ptrtoint ptr %6 to i64
  %10 = ptrtoint ptr %8 to i64
  %11 = sub i64 %9, %10
  ret i64 %11
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden i64 @_ZNKSt3__16vectorIcNS_9allocatorIcEEE6cbeginB8ue170006Ev(ptr noundef %0) #5 align 2 {
  %2 = alloca %"class.std::__1::__wrap_iter.22", align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  %4 = load ptr, ptr %3, align 8
  %5 = call i64 @_ZNKSt3__16vectorIcNS_9allocatorIcEEE5beginB8ue170006Ev(ptr noundef %4) #12
  %6 = getelementptr inbounds %"class.std::__1::__wrap_iter.22", ptr %2, i32 0, i32 0
  %7 = inttoptr i64 %5 to ptr
  store ptr %7, ptr %6, align 8
  %8 = getelementptr inbounds %"class.std::__1::__wrap_iter.22", ptr %2, i32 0, i32 0
  %9 = load ptr, ptr %8, align 8
  %10 = ptrtoint ptr %9 to i64
  ret i64 %10
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNSt3__16vectorIcNS_9allocatorIcEEE17__destruct_at_endB8ue170006EPc(ptr noundef %0, ptr noundef %1) #5 align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %6 = load ptr, ptr %3, align 8
  %7 = call i64 @_ZNKSt3__16vectorIcNS_9allocatorIcEEE4sizeB8ue170006Ev(ptr noundef %6) #12
  store i64 %7, ptr %5, align 8
  %8 = load ptr, ptr %4, align 8
  call void @_ZNSt3__16vectorIcNS_9allocatorIcEEE22__base_destruct_at_endB8ue170006EPc(ptr noundef %6, ptr noundef %8) #12
  %9 = load i64, ptr %5, align 8
  call void @_ZNKSt3__16vectorIcNS_9allocatorIcEEE17__annotate_shrinkB8ue170006Em(ptr noundef %6, i64 noundef %9) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden i64 @_ZNKSt3__16vectorIcNS_9allocatorIcEEE5beginB8ue170006Ev(ptr noundef %0) #5 align 2 {
  %2 = alloca %"class.std::__1::__wrap_iter.22", align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %"class.std::__1::vector.19", ptr %4, i32 0, i32 0
  %6 = load ptr, ptr %5, align 8
  %7 = call i64 @_ZNKSt3__16vectorIcNS_9allocatorIcEEE11__make_iterB8ue170006EPKc(ptr noundef %4, ptr noundef %6) #12
  %8 = getelementptr inbounds %"class.std::__1::__wrap_iter.22", ptr %2, i32 0, i32 0
  %9 = inttoptr i64 %7 to ptr
  store ptr %9, ptr %8, align 8
  %10 = getelementptr inbounds %"class.std::__1::__wrap_iter.22", ptr %2, i32 0, i32 0
  %11 = load ptr, ptr %10, align 8
  %12 = ptrtoint ptr %11 to i64
  ret i64 %12
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden i64 @_ZNKSt3__16vectorIcNS_9allocatorIcEEE11__make_iterB8ue170006EPKc(ptr noundef %0, ptr noundef %1) #5 align 2 {
  %3 = alloca %"class.std::__1::__wrap_iter.22", align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  %6 = load ptr, ptr %4, align 8
  %7 = load ptr, ptr %5, align 8
  %8 = call ptr @_ZNSt3__111__wrap_iterIPKcEC1B8ue170006ES2_(ptr noundef %3, ptr noundef %7) #12
  %9 = getelementptr inbounds %"class.std::__1::__wrap_iter.22", ptr %3, i32 0, i32 0
  %10 = load ptr, ptr %9, align 8
  %11 = ptrtoint ptr %10 to i64
  ret i64 %11
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden ptr @_ZNSt3__111__wrap_iterIPKcEC1B8ue170006ES2_(ptr noundef returned %0, ptr noundef %1) unnamed_addr #0 align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = load ptr, ptr %4, align 8
  %7 = call ptr @_ZNSt3__111__wrap_iterIPKcEC2B8ue170006ES2_(ptr noundef %5, ptr noundef %6) #12
  ret ptr %5
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden ptr @_ZNSt3__111__wrap_iterIPKcEC2B8ue170006ES2_(ptr noundef returned %0, ptr noundef %1) unnamed_addr #0 align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = getelementptr inbounds %"class.std::__1::__wrap_iter.22", ptr %5, i32 0, i32 0
  %7 = load ptr, ptr %4, align 8
  store ptr %7, ptr %6, align 8
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNSt3__16vectorIcNS_9allocatorIcEEE22__base_destruct_at_endB8ue170006EPc(ptr noundef %0, ptr noundef %1) #5 align 2 personality ptr @__gxx_personality_v0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %6 = load ptr, ptr %3, align 8
  %7 = getelementptr inbounds %"class.std::__1::vector.19", ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 8
  store ptr %8, ptr %5, align 8
  br label %9

9:                                                ; preds = %18, %2
  %10 = load ptr, ptr %4, align 8
  %11 = load ptr, ptr %5, align 8
  %12 = icmp ne ptr %10, %11
  br i1 %12, label %13, label %19

13:                                               ; preds = %9
  %14 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__16vectorIcNS_9allocatorIcEEE7__allocB8ue170006Ev(ptr noundef %6) #12
  %15 = load ptr, ptr %5, align 8
  %16 = getelementptr inbounds i8, ptr %15, i32 -1
  store ptr %16, ptr %5, align 8
  %17 = call ptr @_ZNSt3__112__to_addressB8ue170006IcEEPT_S2_(ptr noundef %16) #12
  invoke void @_ZNSt3__116allocator_traitsINS_9allocatorIcEEE7destroyB8ue170006IcvEEvRS2_PT_(ptr noundef nonnull align 1 dereferenceable(1) %14, ptr noundef %17)
          to label %18 unwind label %22

18:                                               ; preds = %13
  br label %9, !llvm.loop !21

19:                                               ; preds = %9
  %20 = load ptr, ptr %4, align 8
  %21 = getelementptr inbounds %"class.std::__1::vector.19", ptr %6, i32 0, i32 1
  store ptr %20, ptr %21, align 8
  ret void

22:                                               ; preds = %13
  %23 = landingpad { ptr, i32 }
          catch ptr null
  %24 = extractvalue { ptr, i32 } %23, 0
  call void @__clang_call_terminate(ptr %24) #14
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNKSt3__16vectorIcNS_9allocatorIcEEE17__annotate_shrinkB8ue170006Em(ptr noundef %0, i64 noundef %1) #5 align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  store ptr %0, ptr %3, align 8
  store i64 %1, ptr %4, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = call ptr @_ZNKSt3__16vectorIcNS_9allocatorIcEEE4dataB8ue170006Ev(ptr noundef %5) #12
  %7 = call ptr @_ZNKSt3__16vectorIcNS_9allocatorIcEEE4dataB8ue170006Ev(ptr noundef %5) #12
  %8 = call i64 @_ZNKSt3__16vectorIcNS_9allocatorIcEEE8capacityB8ue170006Ev(ptr noundef %5) #12
  %9 = getelementptr inbounds i8, ptr %7, i64 %8
  %10 = call ptr @_ZNKSt3__16vectorIcNS_9allocatorIcEEE4dataB8ue170006Ev(ptr noundef %5) #12
  %11 = load i64, ptr %4, align 8
  %12 = getelementptr inbounds i8, ptr %10, i64 %11
  %13 = call ptr @_ZNKSt3__16vectorIcNS_9allocatorIcEEE4dataB8ue170006Ev(ptr noundef %5) #12
  %14 = call i64 @_ZNKSt3__16vectorIcNS_9allocatorIcEEE4sizeB8ue170006Ev(ptr noundef %5) #12
  %15 = getelementptr inbounds i8, ptr %13, i64 %14
  call void @_ZNKSt3__16vectorIcNS_9allocatorIcEEE31__annotate_contiguous_containerB8ue170006EPKvS5_S5_S5_(ptr noundef %5, ptr noundef %6, ptr noundef %9, ptr noundef %12, ptr noundef %15) #12
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden ptr @_ZNSt3__16vectorIbNS_9allocatorIbEEEC2B8ue170006Ev(ptr noundef returned %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca %"struct.std::__1::__default_init_tag", align 1
  store ptr %0, ptr %2, align 8
  %5 = load ptr, ptr %2, align 8
  %6 = getelementptr inbounds %"class.std::__1::vector.25", ptr %5, i32 0, i32 0
  store ptr null, ptr %6, align 8
  %7 = getelementptr inbounds %"class.std::__1::vector.25", ptr %5, i32 0, i32 1
  store i64 0, ptr %7, align 8
  %8 = getelementptr inbounds %"class.std::__1::vector.25", ptr %5, i32 0, i32 2
  store i32 0, ptr %3, align 4
  %9 = invoke ptr @_ZNSt3__117__compressed_pairImNS_9allocatorImEEEC1B8ue170006IiNS_18__default_init_tagEEEOT_OT0_(ptr noundef %8, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %10 unwind label %11

10:                                               ; preds = %1
  ret ptr %5

11:                                               ; preds = %1
  %12 = landingpad { ptr, i32 }
          catch ptr null
  %13 = extractvalue { ptr, i32 } %12, 0
  call void @__clang_call_terminate(ptr %13) #14
  unreachable
}

; Function Attrs: noinline optnone ssp uwtable(sync)
define linkonce_odr ptr @_ZNSt3__117__compressed_pairImNS_9allocatorImEEEC1B8ue170006IiNS_18__default_init_tagEEEOT_OT0_(ptr noundef returned %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #3 align 2 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  %7 = load ptr, ptr %4, align 8
  %8 = load ptr, ptr %5, align 8
  %9 = load ptr, ptr %6, align 8
  %10 = call ptr @_ZNSt3__117__compressed_pairImNS_9allocatorImEEEC2B8ue170006IiNS_18__default_init_tagEEEOT_OT0_(ptr noundef %7, ptr noundef nonnull align 4 dereferenceable(4) %8, ptr noundef nonnull align 1 dereferenceable(1) %9)
  ret ptr %7
}

; Function Attrs: noinline optnone ssp uwtable(sync)
define linkonce_odr ptr @_ZNSt3__117__compressed_pairImNS_9allocatorImEEEC2B8ue170006IiNS_18__default_init_tagEEEOT_OT0_(ptr noundef returned %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #3 align 2 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca %"struct.std::__1::__default_init_tag", align 1
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  %8 = load ptr, ptr %4, align 8
  %9 = load ptr, ptr %5, align 8
  %10 = call ptr @_ZNSt3__122__compressed_pair_elemImLi0ELb0EEC2B8ue170006IivEEOT_(ptr noundef %8, ptr noundef nonnull align 4 dereferenceable(4) %9)
  %11 = load ptr, ptr %6, align 8
  %12 = call ptr @_ZNSt3__122__compressed_pair_elemINS_9allocatorImEELi1ELb1EEC2B8ue170006ENS_18__default_init_tagE(ptr noundef %8)
  ret ptr %8
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr ptr @_ZNSt3__122__compressed_pair_elemImLi0ELb0EEC2B8ue170006IivEEOT_(ptr noundef returned %0, ptr noundef nonnull align 4 dereferenceable(4) %1) unnamed_addr #0 align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = getelementptr inbounds %"struct.std::__1::__compressed_pair_elem.27", ptr %5, i32 0, i32 0
  %7 = load ptr, ptr %4, align 8
  %8 = load i32, ptr %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, ptr %6, align 8
  ret ptr %5
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden ptr @_ZNSt3__122__compressed_pair_elemINS_9allocatorImEELi1ELb1EEC2B8ue170006ENS_18__default_init_tagE(ptr noundef returned %0) unnamed_addr #0 align 2 {
  %2 = alloca %"struct.std::__1::__default_init_tag", align 1
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  %4 = load ptr, ptr %3, align 8
  %5 = call ptr @_ZNSt3__19allocatorImEC2B8ue170006Ev(ptr noundef %4) #12
  ret ptr %4
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden ptr @_ZNSt3__19allocatorImEC2B8ue170006Ev(ptr noundef returned %0) unnamed_addr #0 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = call ptr @_ZNSt3__116__non_trivial_ifILb1ENS_9allocatorImEEEC2B8ue170006Ev(ptr noundef %3) #12
  ret ptr %3
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden ptr @_ZNSt3__116__non_trivial_ifILb1ENS_9allocatorImEEEC2B8ue170006Ev(ptr noundef returned %0) unnamed_addr #0 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden i64 @_ZNKSt3__16vectorIbNS_9allocatorIbEEE8capacityB8ue170006Ev(ptr noundef %0) #5 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt3__16vectorIbNS_9allocatorIbEEE5__capB8ue170006Ev(ptr noundef %3) #12
  %5 = load i64, ptr %4, align 8
  %6 = call i64 @_ZNSt3__16vectorIbNS_9allocatorIbEEE26__internal_cap_to_externalB8ue170006Em(i64 noundef %5) #12
  ret i64 %6
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNSt3__16vectorIbNS_9allocatorIbEEE7reserveEm(ptr noundef %0, i64 noundef %1) #1 align 2 personality ptr @__gxx_personality_v0 {
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  %5 = alloca %"class.std::__1::vector.25", align 8
  %6 = alloca %"class.std::__1::allocator.56", align 1
  %7 = alloca %"class.std::__1::allocator.56", align 1
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = alloca %"class.std::__1::__bit_iterator", align 8
  %11 = alloca %"class.std::__1::__bit_iterator", align 8
  store ptr %0, ptr %3, align 8
  store i64 %1, ptr %4, align 8
  %12 = load ptr, ptr %3, align 8
  %13 = load i64, ptr %4, align 8
  %14 = call i64 @_ZNKSt3__16vectorIbNS_9allocatorIbEEE8capacityB8ue170006Ev(ptr noundef %12) #12
  %15 = icmp ugt i64 %13, %14
  br i1 %15, label %16, label %33

16:                                               ; preds = %2
  %17 = load i64, ptr %4, align 8
  %18 = call i64 @_ZNKSt3__16vectorIbNS_9allocatorIbEEE8max_sizeEv(ptr noundef %12) #12
  %19 = icmp ugt i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  call void @_ZNKSt3__16vectorIbNS_9allocatorIbEEE20__throw_length_errorB8ue170006Ev(ptr noundef %12) #13
  unreachable

21:                                               ; preds = %16
  call void @_ZNKSt3__16vectorIbNS_9allocatorIbEEE13get_allocatorB8ue170006Ev(ptr noundef %12) #12
  %22 = call ptr @_ZNSt3__16vectorIbNS_9allocatorIbEEEC1B8ue170006ERKS2_(ptr noundef %5, ptr noundef nonnull align 1 dereferenceable(1) %6) #12
  %23 = load i64, ptr %4, align 8
  invoke void @_ZNSt3__16vectorIbNS_9allocatorIbEEE11__vallocateB8ue170006Em(ptr noundef %5, i64 noundef %23)
          to label %24 unwind label %28

24:                                               ; preds = %21
  call void @_ZNSt3__16vectorIbNS_9allocatorIbEEE5beginB8ue170006Ev(ptr sret(%"class.std::__1::__bit_iterator") align 8 %10, ptr noundef %12) #12
  call void @_ZNSt3__16vectorIbNS_9allocatorIbEEE3endB8ue170006Ev(ptr sret(%"class.std::__1::__bit_iterator") align 8 %11, ptr noundef %12) #12
  %25 = call i64 @_ZNKSt3__16vectorIbNS_9allocatorIbEEE4sizeB8ue170006Ev(ptr noundef %12) #12
  invoke void @_ZNSt3__16vectorIbNS_9allocatorIbEEE18__construct_at_endINS_14__bit_iteratorIS3_Lb0ELm0EEES6_EEvT_T0_m(ptr noundef %5, ptr noundef %10, ptr noundef %11, i64 noundef %25)
          to label %26 unwind label %28

26:                                               ; preds = %24
  call void @_ZNSt3__16vectorIbNS_9allocatorIbEEE4swapERS3_(ptr noundef %12, ptr noundef nonnull align 8 dereferenceable(24) %5) #12
  %27 = call ptr @_ZNSt3__16vectorIbNS_9allocatorIbEEED1B8ue170006Ev(ptr noundef %5) #12
  br label %33

28:                                               ; preds = %24, %21
  %29 = landingpad { ptr, i32 }
          cleanup
  %30 = extractvalue { ptr, i32 } %29, 0
  store ptr %30, ptr %8, align 8
  %31 = extractvalue { ptr, i32 } %29, 1
  store i32 %31, ptr %9, align 4
  %32 = call ptr @_ZNSt3__16vectorIbNS_9allocatorIbEEED1B8ue170006Ev(ptr noundef %5) #12
  br label %34

33:                                               ; preds = %26, %2
  ret void

34:                                               ; preds = %28
  %35 = load ptr, ptr %8, align 8
  %36 = load i32, ptr %9, align 4
  %37 = insertvalue { ptr, i32 } undef, ptr %35, 0
  %38 = insertvalue { ptr, i32 } %37, i32 %36, 1
  resume { ptr, i32 } %38
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden i64 @_ZNKSt3__16vectorIbNS_9allocatorIbEEE11__recommendB8ue170006Em(ptr noundef %0, i64 noundef %1) #1 align 2 {
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
  store i64 %1, ptr %5, align 8
  %10 = load ptr, ptr %4, align 8
  %11 = call i64 @_ZNKSt3__16vectorIbNS_9allocatorIbEEE8max_sizeEv(ptr noundef %10) #12
  store i64 %11, ptr %6, align 8
  %12 = load i64, ptr %5, align 8
  %13 = load i64, ptr %6, align 8
  %14 = icmp ugt i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  call void @_ZNKSt3__16vectorIbNS_9allocatorIbEEE20__throw_length_errorB8ue170006Ev(ptr noundef %10) #13
  unreachable

16:                                               ; preds = %2
  %17 = call i64 @_ZNKSt3__16vectorIbNS_9allocatorIbEEE8capacityB8ue170006Ev(ptr noundef %10) #12
  store i64 %17, ptr %7, align 8
  %18 = load i64, ptr %7, align 8
  %19 = load i64, ptr %6, align 8
  %20 = udiv i64 %19, 2
  %21 = icmp uge i64 %18, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %16
  %23 = load i64, ptr %6, align 8
  store i64 %23, ptr %3, align 8
  br label %31

24:                                               ; preds = %16
  %25 = load i64, ptr %7, align 8
  %26 = mul i64 2, %25
  store i64 %26, ptr %8, align 8
  %27 = load i64, ptr %5, align 8
  %28 = call i64 @_ZNSt3__16vectorIbNS_9allocatorIbEEE10__align_itB8ue170006Em(i64 noundef %27) #12
  store i64 %28, ptr %9, align 8
  %29 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__13maxB8ue170006ImEERKT_S3_S3_(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %9)
  %30 = load i64, ptr %29, align 8
  store i64 %30, ptr %3, align 8
  br label %31

31:                                               ; preds = %24, %22
  %32 = load i64, ptr %3, align 8
  ret i64 %32
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden [2 x i64] @_ZNSt3__16vectorIbNS_9allocatorIbEEE4backB8ue170006Ev(ptr noundef %0) #5 align 2 {
  %2 = alloca %"class.std::__1::__bit_reference", align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %"class.std::__1::vector.25", ptr %4, i32 0, i32 1
  %6 = load i64, ptr %5, align 8
  %7 = sub i64 %6, 1
  %8 = call [2 x i64] @_ZNSt3__16vectorIbNS_9allocatorIbEEE10__make_refB8ue170006Em(ptr noundef %4, i64 noundef %7) #12
  store [2 x i64] %8, ptr %2, align 8
  %9 = load [2 x i64], ptr %2, align 8
  ret [2 x i64] %9
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt3__115__bit_referenceINS_6vectorIbNS_9allocatorIbEEEELb1EEaSB8ue170006Eb(ptr noundef %0, i1 noundef zeroext %1) #5 align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca i8, align 1
  store ptr %0, ptr %3, align 8
  %5 = zext i1 %1 to i8
  store i8 %5, ptr %4, align 1
  %6 = load ptr, ptr %3, align 8
  %7 = load i8, ptr %4, align 1
  %8 = trunc i8 %7 to i1
  br i1 %8, label %9, label %16

9:                                                ; preds = %2
  %10 = getelementptr inbounds %"class.std::__1::__bit_reference", ptr %6, i32 0, i32 1
  %11 = load i64, ptr %10, align 8
  %12 = getelementptr inbounds %"class.std::__1::__bit_reference", ptr %6, i32 0, i32 0
  %13 = load ptr, ptr %12, align 8
  %14 = load i64, ptr %13, align 8
  %15 = or i64 %14, %11
  store i64 %15, ptr %13, align 8
  br label %24

16:                                               ; preds = %2
  %17 = getelementptr inbounds %"class.std::__1::__bit_reference", ptr %6, i32 0, i32 1
  %18 = load i64, ptr %17, align 8
  %19 = xor i64 %18, -1
  %20 = getelementptr inbounds %"class.std::__1::__bit_reference", ptr %6, i32 0, i32 0
  %21 = load ptr, ptr %20, align 8
  %22 = load i64, ptr %21, align 8
  %23 = and i64 %22, %19
  store i64 %23, ptr %21, align 8
  br label %24

24:                                               ; preds = %16, %9
  ret ptr %6
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden i64 @_ZNSt3__16vectorIbNS_9allocatorIbEEE26__internal_cap_to_externalB8ue170006Em(i64 noundef %0) #5 align 2 {
  %2 = alloca i64, align 8
  store i64 %0, ptr %2, align 8
  %3 = load i64, ptr %2, align 8
  %4 = mul i64 %3, 64
  ret i64 %4
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt3__16vectorIbNS_9allocatorIbEEE5__capB8ue170006Ev(ptr noundef %0) #5 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.std::__1::vector.25", ptr %3, i32 0, i32 2
  %5 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt3__117__compressed_pairImNS_9allocatorImEEE5firstB8ue170006Ev(ptr noundef %4) #12
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt3__117__compressed_pairImNS_9allocatorImEEE5firstB8ue170006Ev(ptr noundef %0) #5 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt3__122__compressed_pair_elemImLi0ELb0EE5__getB8ue170006Ev(ptr noundef %3) #12
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt3__122__compressed_pair_elemImLi0ELb0EE5__getB8ue170006Ev(ptr noundef %0) #5 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"struct.std::__1::__compressed_pair_elem.27", ptr %3, i32 0, i32 0
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden i64 @_ZNKSt3__16vectorIbNS_9allocatorIbEEE8max_sizeEv(ptr noundef %0) #5 align 2 {
  %2 = alloca i64, align 8
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store ptr %0, ptr %3, align 8
  %6 = load ptr, ptr %3, align 8
  %7 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt3__16vectorIbNS_9allocatorIbEEE7__allocB8ue170006Ev(ptr noundef %6) #12
  %8 = call i64 @_ZNSt3__116allocator_traitsINS_9allocatorImEEE8max_sizeB8ue170006IS2_vEEmRKS2_(ptr noundef nonnull align 1 dereferenceable(1) %7) #12
  store i64 %8, ptr %4, align 8
  %9 = call i64 @_ZNSt3__114numeric_limitsImE3maxB8ue170006Ev() #12
  %10 = udiv i64 %9, 2
  store i64 %10, ptr %5, align 8
  %11 = load i64, ptr %5, align 8
  %12 = udiv i64 %11, 64
  %13 = load i64, ptr %4, align 8
  %14 = icmp ule i64 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i64, ptr %5, align 8
  store i64 %16, ptr %2, align 8
  br label %20

17:                                               ; preds = %1
  %18 = load i64, ptr %4, align 8
  %19 = call i64 @_ZNSt3__16vectorIbNS_9allocatorIbEEE26__internal_cap_to_externalB8ue170006Em(i64 noundef %18) #12
  store i64 %19, ptr %2, align 8
  br label %20

20:                                               ; preds = %17, %15
  %21 = load i64, ptr %2, align 8
  ret i64 %21
}

; Function Attrs: mustprogress noinline noreturn optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNKSt3__16vectorIbNS_9allocatorIbEEE20__throw_length_errorB8ue170006Ev(ptr noundef %0) #8 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  call void @_ZNSt3__120__throw_length_errorB8ue170006EPKc(ptr noundef @.str.2) #13
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNKSt3__16vectorIbNS_9allocatorIbEEE13get_allocatorB8ue170006Ev(ptr noundef %0) #5 align 2 {
  %2 = alloca %"class.std::__1::allocator.56", align 1
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  %4 = load ptr, ptr %3, align 8
  %5 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt3__16vectorIbNS_9allocatorIbEEE7__allocB8ue170006Ev(ptr noundef %4) #12
  %6 = call ptr @_ZNSt3__19allocatorIbEC1B8ue170006ImEERKNS0_IT_EE(ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %5) #12
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden ptr @_ZNSt3__16vectorIbNS_9allocatorIbEEEC1B8ue170006ERKS2_(ptr noundef returned %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #0 align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = load ptr, ptr %4, align 8
  %7 = call ptr @_ZNSt3__16vectorIbNS_9allocatorIbEEEC2B8ue170006ERKS2_(ptr noundef %5, ptr noundef nonnull align 1 dereferenceable(1) %6) #12
  ret ptr %5
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNSt3__16vectorIbNS_9allocatorIbEEE11__vallocateB8ue170006Em(ptr noundef %0, i64 noundef %1) #1 align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  %5 = alloca %"struct.std::__1::__allocation_result.59", align 8
  store ptr %0, ptr %3, align 8
  store i64 %1, ptr %4, align 8
  %6 = load ptr, ptr %3, align 8
  %7 = load i64, ptr %4, align 8
  %8 = call i64 @_ZNKSt3__16vectorIbNS_9allocatorIbEEE8max_sizeEv(ptr noundef %6) #12
  %9 = icmp ugt i64 %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  call void @_ZNKSt3__16vectorIbNS_9allocatorIbEEE20__throw_length_errorB8ue170006Ev(ptr noundef %6) #13
  unreachable

11:                                               ; preds = %2
  %12 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__16vectorIbNS_9allocatorIbEEE7__allocB8ue170006Ev(ptr noundef %6) #12
  %13 = load i64, ptr %4, align 8
  %14 = call i64 @_ZNSt3__16vectorIbNS_9allocatorIbEEE26__external_cap_to_internalB8ue170006Em(i64 noundef %13) #12
  %15 = call [2 x i64] @_ZNSt3__119__allocate_at_leastB8ue170006INS_9allocatorImEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS5_m(ptr noundef nonnull align 1 dereferenceable(1) %12, i64 noundef %14)
  store [2 x i64] %15, ptr %5, align 8
  %16 = getelementptr inbounds %"struct.std::__1::__allocation_result.59", ptr %5, i32 0, i32 0
  %17 = load ptr, ptr %16, align 8
  %18 = getelementptr inbounds %"class.std::__1::vector.25", ptr %6, i32 0, i32 0
  store ptr %17, ptr %18, align 8
  %19 = getelementptr inbounds %"class.std::__1::vector.25", ptr %6, i32 0, i32 1
  store i64 0, ptr %19, align 8
  %20 = getelementptr inbounds %"struct.std::__1::__allocation_result.59", ptr %5, i32 0, i32 1
  %21 = load i64, ptr %20, align 8
  %22 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__16vectorIbNS_9allocatorIbEEE5__capB8ue170006Ev(ptr noundef %6) #12
  store i64 %21, ptr %22, align 8
  ret void
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr void @_ZNSt3__16vectorIbNS_9allocatorIbEEE18__construct_at_endINS_14__bit_iteratorIS3_Lb0ELm0EEES6_EEvT_T0_m(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) #1 align 2 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %"class.std::__1::__bit_iterator", align 8
  %11 = alloca %"class.std::__1::__bit_iterator", align 8
  %12 = alloca %"class.std::__1::__bit_iterator", align 8
  %13 = alloca %"struct.std::__1::pair.60", align 8
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  store ptr %2, ptr %7, align 8
  store i64 %3, ptr %8, align 8
  %14 = load ptr, ptr %5, align 8
  %15 = getelementptr inbounds %"class.std::__1::vector.25", ptr %14, i32 0, i32 1
  %16 = load i64, ptr %15, align 8
  store i64 %16, ptr %9, align 8
  %17 = load i64, ptr %8, align 8
  %18 = getelementptr inbounds %"class.std::__1::vector.25", ptr %14, i32 0, i32 1
  %19 = load i64, ptr %18, align 8
  %20 = add i64 %19, %17
  store i64 %20, ptr %18, align 8
  %21 = load i64, ptr %9, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %32, label %23

23:                                               ; preds = %4
  %24 = load i64, ptr %9, align 8
  %25 = sub i64 %24, 1
  %26 = udiv i64 %25, 64
  %27 = getelementptr inbounds %"class.std::__1::vector.25", ptr %14, i32 0, i32 1
  %28 = load i64, ptr %27, align 8
  %29 = sub i64 %28, 1
  %30 = udiv i64 %29, 64
  %31 = icmp ne i64 %26, %30
  br i1 %31, label %32, label %49

32:                                               ; preds = %23, %4
  %33 = getelementptr inbounds %"class.std::__1::vector.25", ptr %14, i32 0, i32 1
  %34 = load i64, ptr %33, align 8
  %35 = icmp ule i64 %34, 64
  br i1 %35, label %36, label %40

36:                                               ; preds = %32
  %37 = getelementptr inbounds %"class.std::__1::vector.25", ptr %14, i32 0, i32 0
  %38 = load ptr, ptr %37, align 8
  %39 = getelementptr inbounds i64, ptr %38, i64 0
  store i64 0, ptr %39, align 8
  br label %48

40:                                               ; preds = %32
  %41 = getelementptr inbounds %"class.std::__1::vector.25", ptr %14, i32 0, i32 0
  %42 = load ptr, ptr %41, align 8
  %43 = getelementptr inbounds %"class.std::__1::vector.25", ptr %14, i32 0, i32 1
  %44 = load i64, ptr %43, align 8
  %45 = sub i64 %44, 1
  %46 = udiv i64 %45, 64
  %47 = getelementptr inbounds i64, ptr %42, i64 %46
  store i64 0, ptr %47, align 8
  br label %48

48:                                               ; preds = %40, %36
  br label %49

49:                                               ; preds = %48, %23
  %50 = call ptr @_ZNSt3__114__bit_iteratorINS_6vectorIbNS_9allocatorIbEEEELb0ELm0EEC1B8ue170006ERKS5_(ptr noundef %10, ptr noundef nonnull align 8 dereferenceable(12) %1) #12
  %51 = call ptr @_ZNSt3__114__bit_iteratorINS_6vectorIbNS_9allocatorIbEEEELb0ELm0EEC1B8ue170006ERKS5_(ptr noundef %11, ptr noundef nonnull align 8 dereferenceable(12) %2) #12
  %52 = load i64, ptr %9, align 8
  call void @_ZNSt3__16vectorIbNS_9allocatorIbEEE11__make_iterB8ue170006Em(ptr sret(%"class.std::__1::__bit_iterator") align 8 %12, ptr noundef %14, i64 noundef %52) #12
  call void @_ZNSt3__16__copyB8ue170006INS_17_ClassicAlgPolicyENS_14__bit_iteratorINS_6vectorIbNS_9allocatorIbEEEELb0ELm0EEES7_S7_EENS_4pairIT0_T2_EES9_T1_SA_(ptr sret(%"struct.std::__1::pair.60") align 8 %13, ptr noundef %10, ptr noundef %11, ptr noundef %12)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNSt3__16vectorIbNS_9allocatorIbEEE3endB8ue170006Ev(ptr noalias sret(%"class.std::__1::__bit_iterator") align 8 %0, ptr noundef %1) #5 align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %"class.std::__1::vector.25", ptr %5, i32 0, i32 1
  %7 = load i64, ptr %6, align 8
  call void @_ZNSt3__16vectorIbNS_9allocatorIbEEE11__make_iterB8ue170006Em(ptr sret(%"class.std::__1::__bit_iterator") align 8 %0, ptr noundef %5, i64 noundef %7) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNSt3__16vectorIbNS_9allocatorIbEEE4swapERS3_(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(24) %1) #5 align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca %"struct.std::__1::integral_constant", align 1
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %6 = load ptr, ptr %3, align 8
  %7 = getelementptr inbounds %"class.std::__1::vector.25", ptr %6, i32 0, i32 0
  %8 = load ptr, ptr %4, align 8
  %9 = getelementptr inbounds %"class.std::__1::vector.25", ptr %8, i32 0, i32 0
  call void @_ZNSt3__14swapB8ue170006IPmEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS3_EE5valueEvE4typeERS3_S6_(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %9) #12
  %10 = getelementptr inbounds %"class.std::__1::vector.25", ptr %6, i32 0, i32 1
  %11 = load ptr, ptr %4, align 8
  %12 = getelementptr inbounds %"class.std::__1::vector.25", ptr %11, i32 0, i32 1
  call void @_ZNSt3__14swapB8ue170006ImEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS2_EE5valueEvE4typeERS2_S5_(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(8) %12) #12
  %13 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__16vectorIbNS_9allocatorIbEEE5__capB8ue170006Ev(ptr noundef %6) #12
  %14 = load ptr, ptr %4, align 8
  %15 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__16vectorIbNS_9allocatorIbEEE5__capB8ue170006Ev(ptr noundef %14) #12
  call void @_ZNSt3__14swapB8ue170006ImEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS2_EE5valueEvE4typeERS2_S5_(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull align 8 dereferenceable(8) %15) #12
  %16 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__16vectorIbNS_9allocatorIbEEE7__allocB8ue170006Ev(ptr noundef %6) #12
  %17 = load ptr, ptr %4, align 8
  %18 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__16vectorIbNS_9allocatorIbEEE7__allocB8ue170006Ev(ptr noundef %17) #12
  call void @_ZNSt3__116__swap_allocatorB8ue170006INS_9allocatorImEEEEvRT_S4_NS_17integral_constantIbLb0EEE(ptr noundef nonnull align 1 dereferenceable(1) %16, ptr noundef nonnull align 1 dereferenceable(1) %18) #12
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden ptr @_ZNSt3__16vectorIbNS_9allocatorIbEEED1B8ue170006Ev(ptr noundef returned %0) unnamed_addr #0 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = call ptr @_ZNSt3__16vectorIbNS_9allocatorIbEEED2B8ue170006Ev(ptr noundef %3) #12
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr i64 @_ZNSt3__116allocator_traitsINS_9allocatorImEEE8max_sizeB8ue170006IS2_vEEmRKS2_(ptr noundef nonnull align 1 dereferenceable(1) %0) #5 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = call i64 @_ZNKSt3__19allocatorImE8max_sizeB8ue170006Ev(ptr noundef %3) #12
  ret i64 %4
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt3__16vectorIbNS_9allocatorIbEEE7__allocB8ue170006Ev(ptr noundef %0) #5 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.std::__1::vector.25", ptr %3, i32 0, i32 2
  %5 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt3__117__compressed_pairImNS_9allocatorImEEE6secondB8ue170006Ev(ptr noundef %4) #12
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden i64 @_ZNSt3__114numeric_limitsImE3maxB8ue170006Ev() #5 align 2 {
  %1 = call i64 @_ZNSt3__123__libcpp_numeric_limitsImLb1EE3maxB8ue170006Ev() #12
  ret i64 %1
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden i64 @_ZNKSt3__19allocatorImE8max_sizeB8ue170006Ev(ptr noundef %0) #5 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  ret i64 2305843009213693951
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt3__117__compressed_pairImNS_9allocatorImEEE6secondB8ue170006Ev(ptr noundef %0) #5 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt3__122__compressed_pair_elemINS_9allocatorImEELi1ELb1EE5__getB8ue170006Ev(ptr noundef %3) #12
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt3__122__compressed_pair_elemINS_9allocatorImEELi1ELb1EE5__getB8ue170006Ev(ptr noundef %0) #5 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden i64 @_ZNSt3__123__libcpp_numeric_limitsImLb1EE3maxB8ue170006Ev() #5 align 2 {
  ret i64 -1
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr ptr @_ZNSt3__19allocatorIbEC1B8ue170006ImEERKNS0_IT_EE(ptr noundef returned %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #0 align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = load ptr, ptr %4, align 8
  %7 = call ptr @_ZNSt3__19allocatorIbEC2B8ue170006ImEERKNS0_IT_EE(ptr noundef %5, ptr noundef nonnull align 1 dereferenceable(1) %6) #12
  ret ptr %5
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr ptr @_ZNSt3__19allocatorIbEC2B8ue170006ImEERKNS0_IT_EE(ptr noundef returned %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #0 align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = call ptr @_ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIbEEEC2B8ue170006Ev(ptr noundef %5) #12
  ret ptr %5
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden ptr @_ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIbEEEC2B8ue170006Ev(ptr noundef returned %0) unnamed_addr #0 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  ret ptr %3
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden ptr @_ZNSt3__16vectorIbNS_9allocatorIbEEEC2B8ue170006ERKS2_(ptr noundef returned %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca %"class.std::__1::allocator.29", align 1
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %7 = load ptr, ptr %3, align 8
  %8 = getelementptr inbounds %"class.std::__1::vector.25", ptr %7, i32 0, i32 0
  store ptr null, ptr %8, align 8
  %9 = getelementptr inbounds %"class.std::__1::vector.25", ptr %7, i32 0, i32 1
  store i64 0, ptr %9, align 8
  %10 = getelementptr inbounds %"class.std::__1::vector.25", ptr %7, i32 0, i32 2
  store i32 0, ptr %5, align 4
  %11 = load ptr, ptr %4, align 8
  %12 = call ptr @_ZNSt3__19allocatorImEC1B8ue170006IbEERKNS0_IT_EE(ptr noundef %6, ptr noundef nonnull align 1 dereferenceable(1) %11) #12
  %13 = invoke ptr @_ZNSt3__117__compressed_pairImNS_9allocatorImEEEC1B8ue170006IiS2_EEOT_OT0_(ptr noundef %10, ptr noundef nonnull align 4 dereferenceable(4) %5, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %14 unwind label %15

14:                                               ; preds = %2
  ret ptr %7

15:                                               ; preds = %2
  %16 = landingpad { ptr, i32 }
          catch ptr null
  %17 = extractvalue { ptr, i32 } %16, 0
  call void @__clang_call_terminate(ptr %17) #14
  unreachable
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr ptr @_ZNSt3__19allocatorImEC1B8ue170006IbEERKNS0_IT_EE(ptr noundef returned %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #0 align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = load ptr, ptr %4, align 8
  %7 = call ptr @_ZNSt3__19allocatorImEC2B8ue170006IbEERKNS0_IT_EE(ptr noundef %5, ptr noundef nonnull align 1 dereferenceable(1) %6) #12
  ret ptr %5
}

; Function Attrs: noinline optnone ssp uwtable(sync)
define linkonce_odr ptr @_ZNSt3__117__compressed_pairImNS_9allocatorImEEEC1B8ue170006IiS2_EEOT_OT0_(ptr noundef returned %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #3 align 2 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  %7 = load ptr, ptr %4, align 8
  %8 = load ptr, ptr %5, align 8
  %9 = load ptr, ptr %6, align 8
  %10 = call ptr @_ZNSt3__117__compressed_pairImNS_9allocatorImEEEC2B8ue170006IiS2_EEOT_OT0_(ptr noundef %7, ptr noundef nonnull align 4 dereferenceable(4) %8, ptr noundef nonnull align 1 dereferenceable(1) %9)
  ret ptr %7
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr ptr @_ZNSt3__19allocatorImEC2B8ue170006IbEERKNS0_IT_EE(ptr noundef returned %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #0 align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = call ptr @_ZNSt3__116__non_trivial_ifILb1ENS_9allocatorImEEEC2B8ue170006Ev(ptr noundef %5) #12
  ret ptr %5
}

; Function Attrs: noinline optnone ssp uwtable(sync)
define linkonce_odr ptr @_ZNSt3__117__compressed_pairImNS_9allocatorImEEEC2B8ue170006IiS2_EEOT_OT0_(ptr noundef returned %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #3 align 2 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  %7 = load ptr, ptr %4, align 8
  %8 = load ptr, ptr %5, align 8
  %9 = call ptr @_ZNSt3__122__compressed_pair_elemImLi0ELb0EEC2B8ue170006IivEEOT_(ptr noundef %7, ptr noundef nonnull align 4 dereferenceable(4) %8)
  %10 = load ptr, ptr %6, align 8
  %11 = call ptr @_ZNSt3__122__compressed_pair_elemINS_9allocatorImEELi1ELb1EEC2B8ue170006IS2_vEEOT_(ptr noundef %7, ptr noundef nonnull align 1 dereferenceable(1) %10)
  ret ptr %7
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr ptr @_ZNSt3__122__compressed_pair_elemINS_9allocatorImEELi1ELb1EEC2B8ue170006IS2_vEEOT_(ptr noundef returned %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #0 align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = load ptr, ptr %4, align 8
  ret ptr %5
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden [2 x i64] @_ZNSt3__119__allocate_at_leastB8ue170006INS_9allocatorImEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS5_m(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1) #1 {
  %3 = alloca %"struct.std::__1::__allocation_result.59", align 8
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
  store i64 %1, ptr %5, align 8
  %6 = getelementptr inbounds %"struct.std::__1::__allocation_result.59", ptr %3, i32 0, i32 0
  %7 = load ptr, ptr %4, align 8
  %8 = load i64, ptr %5, align 8
  %9 = call ptr @_ZNSt3__19allocatorImE8allocateB8ue170006Em(ptr noundef %7, i64 noundef %8)
  store ptr %9, ptr %6, align 8
  %10 = getelementptr inbounds %"struct.std::__1::__allocation_result.59", ptr %3, i32 0, i32 1
  %11 = load i64, ptr %5, align 8
  store i64 %11, ptr %10, align 8
  %12 = load [2 x i64], ptr %3, align 8
  ret [2 x i64] %12
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__16vectorIbNS_9allocatorIbEEE7__allocB8ue170006Ev(ptr noundef %0) #5 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.std::__1::vector.25", ptr %3, i32 0, i32 2
  %5 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__117__compressed_pairImNS_9allocatorImEEE6secondB8ue170006Ev(ptr noundef %4) #12
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden i64 @_ZNSt3__16vectorIbNS_9allocatorIbEEE26__external_cap_to_internalB8ue170006Em(i64 noundef %0) #5 align 2 {
  %2 = alloca i64, align 8
  store i64 %0, ptr %2, align 8
  %3 = load i64, ptr %2, align 8
  %4 = sub i64 %3, 1
  %5 = udiv i64 %4, 64
  %6 = add i64 %5, 1
  ret i64 %6
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__16vectorIbNS_9allocatorIbEEE5__capB8ue170006Ev(ptr noundef %0) #5 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.std::__1::vector.25", ptr %3, i32 0, i32 2
  %5 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__117__compressed_pairImNS_9allocatorImEEE5firstB8ue170006Ev(ptr noundef %4) #12
  ret ptr %5
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden ptr @_ZNSt3__19allocatorImE8allocateB8ue170006Em(ptr noundef %0, i64 noundef %1) #1 align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  store ptr %0, ptr %3, align 8
  store i64 %1, ptr %4, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = load i64, ptr %4, align 8
  %7 = call i64 @_ZNSt3__116allocator_traitsINS_9allocatorImEEE8max_sizeB8ue170006IS2_vEEmRKS2_(ptr noundef nonnull align 1 dereferenceable(1) %5) #12
  %8 = icmp ugt i64 %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  call void @_ZSt28__throw_bad_array_new_lengthB8ue170006v() #13
  unreachable

10:                                               ; preds = %2
  %11 = load i64, ptr %4, align 8
  %12 = mul i64 %11, 8
  %13 = call ptr @_ZNSt3__117__libcpp_allocateB8ue170006Emm(i64 noundef %12, i64 noundef 8)
  ret ptr %13
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__117__compressed_pairImNS_9allocatorImEEE6secondB8ue170006Ev(ptr noundef %0) #5 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__122__compressed_pair_elemINS_9allocatorImEELi1ELb1EE5__getB8ue170006Ev(ptr noundef %3) #12
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__122__compressed_pair_elemINS_9allocatorImEELi1ELb1EE5__getB8ue170006Ev(ptr noundef %0) #5 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__117__compressed_pairImNS_9allocatorImEEE5firstB8ue170006Ev(ptr noundef %0) #5 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__122__compressed_pair_elemImLi0ELb0EE5__getB8ue170006Ev(ptr noundef %3) #12
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__122__compressed_pair_elemImLi0ELb0EE5__getB8ue170006Ev(ptr noundef %0) #5 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"struct.std::__1::__compressed_pair_elem.27", ptr %3, i32 0, i32 0
  ret ptr %4
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNSt3__16__copyB8ue170006INS_17_ClassicAlgPolicyENS_14__bit_iteratorINS_6vectorIbNS_9allocatorIbEEEELb0ELm0EEES7_S7_EENS_4pairIT0_T2_EES9_T1_SA_(ptr noalias sret(%"struct.std::__1::pair.60") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #1 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca %"class.std::__1::__bit_iterator", align 8
  %10 = alloca %"class.std::__1::__bit_iterator", align 8
  %11 = alloca %"class.std::__1::__bit_iterator", align 8
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  store ptr %2, ptr %7, align 8
  store ptr %3, ptr %8, align 8
  %12 = call ptr @_ZNSt3__114__bit_iteratorINS_6vectorIbNS_9allocatorIbEEEELb0ELm0EEC1B8ue170006ERKS5_(ptr noundef %9, ptr noundef nonnull align 8 dereferenceable(12) %1) #12
  %13 = call ptr @_ZNSt3__114__bit_iteratorINS_6vectorIbNS_9allocatorIbEEEELb0ELm0EEC1B8ue170006ERKS5_(ptr noundef %10, ptr noundef nonnull align 8 dereferenceable(12) %2) #12
  %14 = call ptr @_ZNSt3__114__bit_iteratorINS_6vectorIbNS_9allocatorIbEEEELb0ELm0EEC1B8ue170006ERKS5_(ptr noundef %11, ptr noundef nonnull align 8 dereferenceable(12) %3) #12
  call void @_ZNSt3__123__dispatch_copy_or_moveB8ue170006INS_17_ClassicAlgPolicyENS_11__copy_loopIS1_EENS_14__copy_trivialENS_14__bit_iteratorINS_6vectorIbNS_9allocatorIbEEEELb0ELm0EEESA_SA_EENS_4pairIT2_T4_EESC_T3_SD_(ptr sret(%"struct.std::__1::pair.60") align 8 %0, ptr noundef %9, ptr noundef %10, ptr noundef %11)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden ptr @_ZNSt3__114__bit_iteratorINS_6vectorIbNS_9allocatorIbEEEELb0ELm0EEC1B8ue170006ERKS5_(ptr noundef returned %0, ptr noundef nonnull align 8 dereferenceable(12) %1) unnamed_addr #0 align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = load ptr, ptr %4, align 8
  %7 = call ptr @_ZNSt3__114__bit_iteratorINS_6vectorIbNS_9allocatorIbEEEELb0ELm0EEC2B8ue170006ERKS5_(ptr noundef %5, ptr noundef nonnull align 8 dereferenceable(12) %6) #12
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNSt3__16vectorIbNS_9allocatorIbEEE11__make_iterB8ue170006Em(ptr noalias sret(%"class.std::__1::__bit_iterator") align 8 %0, ptr noundef %1, i64 noundef %2) #5 align 2 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store i64 %2, ptr %6, align 8
  %7 = load ptr, ptr %5, align 8
  %8 = getelementptr inbounds %"class.std::__1::vector.25", ptr %7, i32 0, i32 0
  %9 = load ptr, ptr %8, align 8
  %10 = load i64, ptr %6, align 8
  %11 = udiv i64 %10, 64
  %12 = getelementptr inbounds i64, ptr %9, i64 %11
  %13 = load i64, ptr %6, align 8
  %14 = urem i64 %13, 64
  %15 = trunc i64 %14 to i32
  %16 = call ptr @_ZNSt3__114__bit_iteratorINS_6vectorIbNS_9allocatorIbEEEELb0ELm0EEC1B8ue170006EPmj(ptr noundef %0, ptr noundef %12, i32 noundef %15) #12
  ret void
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNSt3__123__dispatch_copy_or_moveB8ue170006INS_17_ClassicAlgPolicyENS_11__copy_loopIS1_EENS_14__copy_trivialENS_14__bit_iteratorINS_6vectorIbNS_9allocatorIbEEEELb0ELm0EEESA_SA_EENS_4pairIT2_T4_EESC_T3_SD_(ptr noalias sret(%"struct.std::__1::pair.60") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #1 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca %"class.std::__1::__bit_iterator", align 8
  %10 = alloca %"class.std::__1::__bit_iterator", align 8
  %11 = alloca %"class.std::__1::__bit_iterator", align 8
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  store ptr %2, ptr %7, align 8
  store ptr %3, ptr %8, align 8
  %12 = call ptr @_ZNSt3__114__bit_iteratorINS_6vectorIbNS_9allocatorIbEEEELb0ELm0EEC1B8ue170006ERKS5_(ptr noundef %9, ptr noundef nonnull align 8 dereferenceable(12) %1) #12
  %13 = call ptr @_ZNSt3__114__bit_iteratorINS_6vectorIbNS_9allocatorIbEEEELb0ELm0EEC1B8ue170006ERKS5_(ptr noundef %10, ptr noundef nonnull align 8 dereferenceable(12) %2) #12
  %14 = call ptr @_ZNSt3__114__bit_iteratorINS_6vectorIbNS_9allocatorIbEEEELb0ELm0EEC1B8ue170006ERKS5_(ptr noundef %11, ptr noundef nonnull align 8 dereferenceable(12) %3) #12
  call void @_ZNSt3__121__unwrap_and_dispatchB8ue170006INS_10__overloadINS_11__copy_loopINS_17_ClassicAlgPolicyEEENS_14__copy_trivialEEENS_14__bit_iteratorINS_6vectorIbNS_9allocatorIbEEEELb0ELm0EEESC_SC_Li0EEENS_4pairIT0_T2_EESE_T1_SF_(ptr sret(%"struct.std::__1::pair.60") align 8 %0, ptr noundef %9, ptr noundef %10, ptr noundef %11)
  ret void
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNSt3__121__unwrap_and_dispatchB8ue170006INS_10__overloadINS_11__copy_loopINS_17_ClassicAlgPolicyEEENS_14__copy_trivialEEENS_14__bit_iteratorINS_6vectorIbNS_9allocatorIbEEEELb0ELm0EEESC_SC_Li0EEENS_4pairIT0_T2_EESE_T1_SF_(ptr noalias sret(%"struct.std::__1::pair.60") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #1 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca %"struct.std::__1::pair.60", align 8
  %10 = alloca %"class.std::__1::__bit_iterator", align 8
  %11 = alloca %"class.std::__1::__bit_iterator", align 8
  %12 = alloca %"struct.std::__1::pair.60", align 8
  %13 = alloca %"struct.std::__1::__overload.61", align 1
  %14 = alloca %"class.std::__1::__bit_iterator", align 8
  %15 = alloca %"class.std::__1::__bit_iterator", align 8
  %16 = alloca %"class.std::__1::__bit_iterator", align 8
  %17 = alloca %"class.std::__1::__bit_iterator", align 8
  %18 = alloca %"class.std::__1::__bit_iterator", align 8
  %19 = alloca %"class.std::__1::__bit_iterator", align 8
  %20 = alloca %"class.std::__1::__bit_iterator", align 8
  %21 = alloca %"class.std::__1::__bit_iterator", align 8
  %22 = alloca %"class.std::__1::__bit_iterator", align 8
  %23 = alloca %"class.std::__1::__bit_iterator", align 8
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  store ptr %2, ptr %7, align 8
  store ptr %3, ptr %8, align 8
  %24 = call ptr @_ZNSt3__114__bit_iteratorINS_6vectorIbNS_9allocatorIbEEEELb0ELm0EEC1B8ue170006ERKS5_(ptr noundef %10, ptr noundef nonnull align 8 dereferenceable(12) %1) #12
  %25 = call ptr @_ZNSt3__114__bit_iteratorINS_6vectorIbNS_9allocatorIbEEEELb0ELm0EEC1B8ue170006ERKS5_(ptr noundef %11, ptr noundef nonnull align 8 dereferenceable(12) %2) #12
  call void @_ZNSt3__114__unwrap_rangeB8ue170006INS_14__bit_iteratorINS_6vectorIbNS_9allocatorIbEEEELb0ELm0EEES6_EENS_4pairIT0_S8_EET_SA_(ptr sret(%"struct.std::__1::pair.60") align 8 %9, ptr noundef %10, ptr noundef %11)
  %26 = getelementptr inbounds %"struct.std::__1::pair.60", ptr %9, i32 0, i32 0
  %27 = call ptr @_ZNSt3__114__bit_iteratorINS_6vectorIbNS_9allocatorIbEEEELb0ELm0EEC1B8ue170006ERKS5_(ptr noundef %14, ptr noundef nonnull align 8 dereferenceable(12) %26) #12
  %28 = getelementptr inbounds %"struct.std::__1::pair.60", ptr %9, i32 0, i32 1
  %29 = call ptr @_ZNSt3__114__bit_iteratorINS_6vectorIbNS_9allocatorIbEEEELb0ELm0EEC1B8ue170006ERKS5_(ptr noundef %15, ptr noundef nonnull align 8 dereferenceable(12) %28) #12
  %30 = call ptr @_ZNSt3__114__bit_iteratorINS_6vectorIbNS_9allocatorIbEEEELb0ELm0EEC1B8ue170006ERKS5_(ptr noundef %17, ptr noundef nonnull align 8 dereferenceable(12) %3) #12
  call void @_ZNSt3__113__unwrap_iterB8ue170006INS_14__bit_iteratorINS_6vectorIbNS_9allocatorIbEEEELb0ELm0EEENS_18__unwrap_iter_implIS6_Lb0EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEESA_(ptr sret(%"class.std::__1::__bit_iterator") align 8 %16, ptr noundef %17) #12
  call void @_ZNKSt3__111__copy_loopINS_17_ClassicAlgPolicyEEclB8ue170006INS_14__bit_iteratorINS_6vectorIbNS_9allocatorIbEEEELb0ELm0EEES9_S9_EENS_4pairIT_T1_EESB_T0_SC_(ptr sret(%"struct.std::__1::pair.60") align 8 %12, ptr noundef %13, ptr noundef %14, ptr noundef %15, ptr noundef %16)
  %31 = call ptr @_ZNSt3__114__bit_iteratorINS_6vectorIbNS_9allocatorIbEEEELb0ELm0EEC1B8ue170006ERKS5_(ptr noundef %19, ptr noundef nonnull align 8 dereferenceable(12) %1) #12
  %32 = getelementptr inbounds %"struct.std::__1::pair.60", ptr %12, i32 0, i32 0
  %33 = call ptr @_ZNSt3__114__bit_iteratorINS_6vectorIbNS_9allocatorIbEEEELb0ELm0EEC1B8ue170006ERKS5_(ptr noundef %20, ptr noundef nonnull align 8 dereferenceable(12) %32) #12
  call void @_ZNSt3__114__rewrap_rangeB8ue170006INS_14__bit_iteratorINS_6vectorIbNS_9allocatorIbEEEELb0ELm0EEES6_EET_S7_T0_(ptr sret(%"class.std::__1::__bit_iterator") align 8 %18, ptr noundef %19, ptr noundef %20)
  %34 = call ptr @_ZNSt3__114__bit_iteratorINS_6vectorIbNS_9allocatorIbEEEELb0ELm0EEC1B8ue170006ERKS5_(ptr noundef %22, ptr noundef nonnull align 8 dereferenceable(12) %3) #12
  %35 = getelementptr inbounds %"struct.std::__1::pair.60", ptr %12, i32 0, i32 1
  %36 = call ptr @_ZNSt3__114__bit_iteratorINS_6vectorIbNS_9allocatorIbEEEELb0ELm0EEC1B8ue170006ERKS5_(ptr noundef %23, ptr noundef nonnull align 8 dereferenceable(12) %35) #12
  call void @_ZNSt3__113__rewrap_iterB8ue170006INS_14__bit_iteratorINS_6vectorIbNS_9allocatorIbEEEELb0ELm0EEES6_NS_18__unwrap_iter_implIS6_Lb0EEEEET_S9_T0_(ptr sret(%"class.std::__1::__bit_iterator") align 8 %21, ptr noundef %22, ptr noundef %23) #12
  call void @_ZNSt3__19make_pairB8ue170006INS_14__bit_iteratorINS_6vectorIbNS_9allocatorIbEEEELb0ELm0EEES6_EENS_4pairINS_18__unwrap_ref_decayIT_E4typeENS8_IT0_E4typeEEEOS9_OSC_(ptr sret(%"struct.std::__1::pair.60") align 8 %0, ptr noundef nonnull align 8 dereferenceable(12) %18, ptr noundef nonnull align 8 dereferenceable(12) %21)
  ret void
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNSt3__114__unwrap_rangeB8ue170006INS_14__bit_iteratorINS_6vectorIbNS_9allocatorIbEEEELb0ELm0EEES6_EENS_4pairIT0_S8_EET_SA_(ptr noalias sret(%"struct.std::__1::pair.60") align 8 %0, ptr noundef %1, ptr noundef %2) #1 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca %"class.std::__1::__bit_iterator", align 8
  %8 = alloca %"class.std::__1::__bit_iterator", align 8
  %9 = alloca %"class.std::__1::__bit_iterator", align 8
  %10 = alloca %"class.std::__1::__bit_iterator", align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  %11 = call ptr @_ZNSt3__114__bit_iteratorINS_6vectorIbNS_9allocatorIbEEEELb0ELm0EEC1B8ue170006ERKS5_(ptr noundef %8, ptr noundef nonnull align 8 dereferenceable(12) %1) #12
  call void @_ZNSt3__113__unwrap_iterB8ue170006INS_14__bit_iteratorINS_6vectorIbNS_9allocatorIbEEEELb0ELm0EEENS_18__unwrap_iter_implIS6_Lb0EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEESA_(ptr sret(%"class.std::__1::__bit_iterator") align 8 %7, ptr noundef %8) #12
  %12 = call ptr @_ZNSt3__114__bit_iteratorINS_6vectorIbNS_9allocatorIbEEEELb0ELm0EEC1B8ue170006ERKS5_(ptr noundef %10, ptr noundef nonnull align 8 dereferenceable(12) %2) #12
  call void @_ZNSt3__113__unwrap_iterB8ue170006INS_14__bit_iteratorINS_6vectorIbNS_9allocatorIbEEEELb0ELm0EEENS_18__unwrap_iter_implIS6_Lb0EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEESA_(ptr sret(%"class.std::__1::__bit_iterator") align 8 %9, ptr noundef %10) #12
  call void @_ZNSt3__19make_pairB8ue170006INS_14__bit_iteratorINS_6vectorIbNS_9allocatorIbEEEELb0ELm0EEES6_EENS_4pairINS_18__unwrap_ref_decayIT_E4typeENS8_IT0_E4typeEEEOS9_OSC_(ptr sret(%"struct.std::__1::pair.60") align 8 %0, ptr noundef nonnull align 8 dereferenceable(12) %7, ptr noundef nonnull align 8 dereferenceable(12) %9)
  ret void
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr void @_ZNKSt3__111__copy_loopINS_17_ClassicAlgPolicyEEclB8ue170006INS_14__bit_iteratorINS_6vectorIbNS_9allocatorIbEEEELb0ELm0EEES9_S9_EENS_4pairIT_T1_EESB_T0_SC_(ptr noalias sret(%"struct.std::__1::pair.60") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #1 align 2 {
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca %"class.std::__1::__bit_reference", align 8
  %12 = alloca %"class.std::__1::__bit_reference", align 8
  store ptr %0, ptr %6, align 8
  store ptr %1, ptr %7, align 8
  store ptr %2, ptr %8, align 8
  store ptr %3, ptr %9, align 8
  store ptr %4, ptr %10, align 8
  %13 = load ptr, ptr %7, align 8
  br label %14

14:                                               ; preds = %16, %5
  %15 = call zeroext i1 @_ZNSt3__1neB8ue170006ERKNS_14__bit_iteratorINS_6vectorIbNS_9allocatorIbEEEELb0ELm0EEES7_(ptr noundef nonnull align 8 dereferenceable(12) %2, ptr noundef nonnull align 8 dereferenceable(12) %3)
  br i1 %15, label %16, label %22

16:                                               ; preds = %14
  %17 = call [2 x i64] @_ZNKSt3__114__bit_iteratorINS_6vectorIbNS_9allocatorIbEEEELb0ELm0EEdeB8ue170006Ev(ptr noundef %2) #12
  store [2 x i64] %17, ptr %11, align 8
  %18 = call [2 x i64] @_ZNKSt3__114__bit_iteratorINS_6vectorIbNS_9allocatorIbEEEELb0ELm0EEdeB8ue170006Ev(ptr noundef %4) #12
  store [2 x i64] %18, ptr %12, align 8
  %19 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt3__115__bit_referenceINS_6vectorIbNS_9allocatorIbEEEELb1EEaSB8ue170006ERKS5_(ptr noundef %12, ptr noundef nonnull align 8 dereferenceable(16) %11) #12
  %20 = call noundef nonnull align 8 dereferenceable(12) ptr @_ZNSt3__114__bit_iteratorINS_6vectorIbNS_9allocatorIbEEEELb0ELm0EEppB8ue170006Ev(ptr noundef %2)
  %21 = call noundef nonnull align 8 dereferenceable(12) ptr @_ZNSt3__114__bit_iteratorINS_6vectorIbNS_9allocatorIbEEEELb0ELm0EEppB8ue170006Ev(ptr noundef %4)
  br label %14, !llvm.loop !22

22:                                               ; preds = %14
  call void @_ZNSt3__19make_pairB8ue170006INS_14__bit_iteratorINS_6vectorIbNS_9allocatorIbEEEELb0ELm0EEES6_EENS_4pairINS_18__unwrap_ref_decayIT_E4typeENS8_IT0_E4typeEEEOS9_OSC_(ptr sret(%"struct.std::__1::pair.60") align 8 %0, ptr noundef nonnull align 8 dereferenceable(12) %2, ptr noundef nonnull align 8 dereferenceable(12) %4)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNSt3__113__unwrap_iterB8ue170006INS_14__bit_iteratorINS_6vectorIbNS_9allocatorIbEEEELb0ELm0EEENS_18__unwrap_iter_implIS6_Lb0EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEESA_(ptr noalias sret(%"class.std::__1::__bit_iterator") align 8 %0, ptr noundef %1) #5 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca %"class.std::__1::__bit_iterator", align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %6 = call ptr @_ZNSt3__114__bit_iteratorINS_6vectorIbNS_9allocatorIbEEEELb0ELm0EEC1B8ue170006ERKS5_(ptr noundef %5, ptr noundef nonnull align 8 dereferenceable(12) %1) #12
  call void @_ZNSt3__118__unwrap_iter_implINS_14__bit_iteratorINS_6vectorIbNS_9allocatorIbEEEELb0ELm0EEELb0EE8__unwrapB8ue170006ES6_(ptr sret(%"class.std::__1::__bit_iterator") align 8 %0, ptr noundef %5) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNSt3__19make_pairB8ue170006INS_14__bit_iteratorINS_6vectorIbNS_9allocatorIbEEEELb0ELm0EEES6_EENS_4pairINS_18__unwrap_ref_decayIT_E4typeENS8_IT0_E4typeEEEOS9_OSC_(ptr noalias sret(%"struct.std::__1::pair.60") align 8 %0, ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef nonnull align 8 dereferenceable(12) %2) #5 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  %7 = load ptr, ptr %5, align 8
  %8 = load ptr, ptr %6, align 8
  %9 = call ptr @_ZNSt3__14pairINS_14__bit_iteratorINS_6vectorIbNS_9allocatorIbEEEELb0ELm0EEES6_EC1B8ue170006IS6_S6_LPv0EEEOT_OT0_(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(12) %7, ptr noundef nonnull align 8 dereferenceable(12) %8) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNSt3__114__rewrap_rangeB8ue170006INS_14__bit_iteratorINS_6vectorIbNS_9allocatorIbEEEELb0ELm0EEES6_EET_S7_T0_(ptr noalias sret(%"class.std::__1::__bit_iterator") align 8 %0, ptr noundef %1, ptr noundef %2) #5 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca %"class.std::__1::__bit_iterator", align 8
  %8 = alloca %"class.std::__1::__bit_iterator", align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  %9 = call ptr @_ZNSt3__114__bit_iteratorINS_6vectorIbNS_9allocatorIbEEEELb0ELm0EEC1B8ue170006ERKS5_(ptr noundef %7, ptr noundef nonnull align 8 dereferenceable(12) %1) #12
  %10 = call ptr @_ZNSt3__114__bit_iteratorINS_6vectorIbNS_9allocatorIbEEEELb0ELm0EEC1B8ue170006ERKS5_(ptr noundef %8, ptr noundef nonnull align 8 dereferenceable(12) %2) #12
  call void @_ZNSt3__113__rewrap_iterB8ue170006INS_14__bit_iteratorINS_6vectorIbNS_9allocatorIbEEEELb0ELm0EEES6_NS_18__unwrap_iter_implIS6_Lb0EEEEET_S9_T0_(ptr sret(%"class.std::__1::__bit_iterator") align 8 %0, ptr noundef %7, ptr noundef %8) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNSt3__113__rewrap_iterB8ue170006INS_14__bit_iteratorINS_6vectorIbNS_9allocatorIbEEEELb0ELm0EEES6_NS_18__unwrap_iter_implIS6_Lb0EEEEET_S9_T0_(ptr noalias sret(%"class.std::__1::__bit_iterator") align 8 %0, ptr noundef %1, ptr noundef %2) #5 personality ptr @__gxx_personality_v0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca %"class.std::__1::__bit_iterator", align 8
  %8 = alloca %"class.std::__1::__bit_iterator", align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  %9 = call ptr @_ZNSt3__114__bit_iteratorINS_6vectorIbNS_9allocatorIbEEEELb0ELm0EEC1B8ue170006ERKS5_(ptr noundef %7, ptr noundef nonnull align 8 dereferenceable(12) %1) #12
  %10 = call ptr @_ZNSt3__114__bit_iteratorINS_6vectorIbNS_9allocatorIbEEEELb0ELm0EEC1B8ue170006ERKS5_(ptr noundef %8, ptr noundef nonnull align 8 dereferenceable(12) %2) #12
  invoke void @_ZNSt3__118__unwrap_iter_implINS_14__bit_iteratorINS_6vectorIbNS_9allocatorIbEEEELb0ELm0EEELb0EE8__rewrapB8ue170006ES6_S6_(ptr sret(%"class.std::__1::__bit_iterator") align 8 %0, ptr noundef %7, ptr noundef %8)
          to label %11 unwind label %12

11:                                               ; preds = %3
  ret void

12:                                               ; preds = %3
  %13 = landingpad { ptr, i32 }
          catch ptr null
  %14 = extractvalue { ptr, i32 } %13, 0
  call void @__clang_call_terminate(ptr %14) #14
  unreachable
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden zeroext i1 @_ZNSt3__1neB8ue170006ERKNS_14__bit_iteratorINS_6vectorIbNS_9allocatorIbEEEELb0ELm0EEES7_(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull align 8 dereferenceable(12) %1) #1 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = load ptr, ptr %4, align 8
  %7 = call zeroext i1 @_ZNSt3__1eqB8ue170006ERKNS_14__bit_iteratorINS_6vectorIbNS_9allocatorIbEEEELb0ELm0EEES7_(ptr noundef nonnull align 8 dereferenceable(12) %5, ptr noundef nonnull align 8 dereferenceable(12) %6)
  %8 = xor i1 %7, true
  ret i1 %8
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden [2 x i64] @_ZNKSt3__114__bit_iteratorINS_6vectorIbNS_9allocatorIbEEEELb0ELm0EEdeB8ue170006Ev(ptr noundef %0) #5 align 2 {
  %2 = alloca %"class.std::__1::__bit_reference", align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %"class.std::__1::__bit_iterator", ptr %4, i32 0, i32 0
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %"class.std::__1::__bit_iterator", ptr %4, i32 0, i32 1
  %8 = load i32, ptr %7, align 8
  %9 = zext i32 %8 to i64
  %10 = shl i64 1, %9
  %11 = call ptr @_ZNSt3__115__bit_referenceINS_6vectorIbNS_9allocatorIbEEEELb1EEC1B8ue170006EPmm(ptr noundef %2, ptr noundef %6, i64 noundef %10) #12
  %12 = load [2 x i64], ptr %2, align 8
  ret [2 x i64] %12
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt3__115__bit_referenceINS_6vectorIbNS_9allocatorIbEEEELb1EEaSB8ue170006ERKS5_(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(16) %1) #5 align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = load ptr, ptr %4, align 8
  %7 = call zeroext i1 @_ZNKSt3__115__bit_referenceINS_6vectorIbNS_9allocatorIbEEEELb1EEcvbB8ue170006Ev(ptr noundef %6) #12
  %8 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt3__115__bit_referenceINS_6vectorIbNS_9allocatorIbEEEELb1EEaSB8ue170006Eb(ptr noundef %5, i1 noundef zeroext %7) #12
  ret ptr %8
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(12) ptr @_ZNSt3__114__bit_iteratorINS_6vectorIbNS_9allocatorIbEEEELb0ELm0EEppB8ue170006Ev(ptr noundef %0) #5 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.std::__1::__bit_iterator", ptr %3, i32 0, i32 1
  %5 = load i32, ptr %4, align 8
  %6 = icmp ne i32 %5, 63
  br i1 %6, label %7, label %11

7:                                                ; preds = %1
  %8 = getelementptr inbounds %"class.std::__1::__bit_iterator", ptr %3, i32 0, i32 1
  %9 = load i32, ptr %8, align 8
  %10 = add i32 %9, 1
  store i32 %10, ptr %8, align 8
  br label %16

11:                                               ; preds = %1
  %12 = getelementptr inbounds %"class.std::__1::__bit_iterator", ptr %3, i32 0, i32 1
  store i32 0, ptr %12, align 8
  %13 = getelementptr inbounds %"class.std::__1::__bit_iterator", ptr %3, i32 0, i32 0
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr inbounds i64, ptr %14, i32 1
  store ptr %15, ptr %13, align 8
  br label %16

16:                                               ; preds = %11, %7
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden zeroext i1 @_ZNSt3__1eqB8ue170006ERKNS_14__bit_iteratorINS_6vectorIbNS_9allocatorIbEEEELb0ELm0EEES7_(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull align 8 dereferenceable(12) %1) #5 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = getelementptr inbounds %"class.std::__1::__bit_iterator", ptr %5, i32 0, i32 0
  %7 = load ptr, ptr %6, align 8
  %8 = load ptr, ptr %4, align 8
  %9 = getelementptr inbounds %"class.std::__1::__bit_iterator", ptr %8, i32 0, i32 0
  %10 = load ptr, ptr %9, align 8
  %11 = icmp eq ptr %7, %10
  br i1 %11, label %12, label %20

12:                                               ; preds = %2
  %13 = load ptr, ptr %3, align 8
  %14 = getelementptr inbounds %"class.std::__1::__bit_iterator", ptr %13, i32 0, i32 1
  %15 = load i32, ptr %14, align 8
  %16 = load ptr, ptr %4, align 8
  %17 = getelementptr inbounds %"class.std::__1::__bit_iterator", ptr %16, i32 0, i32 1
  %18 = load i32, ptr %17, align 8
  %19 = icmp eq i32 %15, %18
  br label %20

20:                                               ; preds = %12, %2
  %21 = phi i1 [ false, %2 ], [ %19, %12 ]
  ret i1 %21
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden ptr @_ZNSt3__115__bit_referenceINS_6vectorIbNS_9allocatorIbEEEELb1EEC1B8ue170006EPmm(ptr noundef returned %0, ptr noundef %1, i64 noundef %2) unnamed_addr #0 align 2 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store i64 %2, ptr %6, align 8
  %7 = load ptr, ptr %4, align 8
  %8 = load ptr, ptr %5, align 8
  %9 = load i64, ptr %6, align 8
  %10 = call ptr @_ZNSt3__115__bit_referenceINS_6vectorIbNS_9allocatorIbEEEELb1EEC2B8ue170006EPmm(ptr noundef %7, ptr noundef %8, i64 noundef %9) #12
  ret ptr %7
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden ptr @_ZNSt3__115__bit_referenceINS_6vectorIbNS_9allocatorIbEEEELb1EEC2B8ue170006EPmm(ptr noundef returned %0, ptr noundef %1, i64 noundef %2) unnamed_addr #0 align 2 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store i64 %2, ptr %6, align 8
  %7 = load ptr, ptr %4, align 8
  %8 = getelementptr inbounds %"class.std::__1::__bit_reference", ptr %7, i32 0, i32 0
  %9 = load ptr, ptr %5, align 8
  store ptr %9, ptr %8, align 8
  %10 = getelementptr inbounds %"class.std::__1::__bit_reference", ptr %7, i32 0, i32 1
  %11 = load i64, ptr %6, align 8
  store i64 %11, ptr %10, align 8
  ret ptr %7
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNSt3__118__unwrap_iter_implINS_14__bit_iteratorINS_6vectorIbNS_9allocatorIbEEEELb0ELm0EEELb0EE8__unwrapB8ue170006ES6_(ptr noalias sret(%"class.std::__1::__bit_iterator") align 8 %0, ptr noundef %1) #5 align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = call ptr @_ZNSt3__114__bit_iteratorINS_6vectorIbNS_9allocatorIbEEEELb0ELm0EEC1B8ue170006ERKS5_(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(12) %1) #12
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr ptr @_ZNSt3__14pairINS_14__bit_iteratorINS_6vectorIbNS_9allocatorIbEEEELb0ELm0EEES6_EC1B8ue170006IS6_S6_LPv0EEEOT_OT0_(ptr noundef returned %0, ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef nonnull align 8 dereferenceable(12) %2) unnamed_addr #0 align 2 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  %7 = load ptr, ptr %4, align 8
  %8 = load ptr, ptr %5, align 8
  %9 = load ptr, ptr %6, align 8
  %10 = call ptr @_ZNSt3__14pairINS_14__bit_iteratorINS_6vectorIbNS_9allocatorIbEEEELb0ELm0EEES6_EC2B8ue170006IS6_S6_LPv0EEEOT_OT0_(ptr noundef %7, ptr noundef nonnull align 8 dereferenceable(12) %8, ptr noundef nonnull align 8 dereferenceable(12) %9) #12
  ret ptr %7
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr ptr @_ZNSt3__14pairINS_14__bit_iteratorINS_6vectorIbNS_9allocatorIbEEEELb0ELm0EEES6_EC2B8ue170006IS6_S6_LPv0EEEOT_OT0_(ptr noundef returned %0, ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef nonnull align 8 dereferenceable(12) %2) unnamed_addr #0 align 2 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  %7 = load ptr, ptr %4, align 8
  %8 = getelementptr inbounds %"struct.std::__1::pair.60", ptr %7, i32 0, i32 0
  %9 = load ptr, ptr %5, align 8
  %10 = call ptr @_ZNSt3__114__bit_iteratorINS_6vectorIbNS_9allocatorIbEEEELb0ELm0EEC1B8ue170006ERKS5_(ptr noundef %8, ptr noundef nonnull align 8 dereferenceable(12) %9) #12
  %11 = getelementptr inbounds %"struct.std::__1::pair.60", ptr %7, i32 0, i32 1
  %12 = load ptr, ptr %6, align 8
  %13 = call ptr @_ZNSt3__114__bit_iteratorINS_6vectorIbNS_9allocatorIbEEEELb0ELm0EEC1B8ue170006ERKS5_(ptr noundef %11, ptr noundef nonnull align 8 dereferenceable(12) %12) #12
  ret ptr %7
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNSt3__118__unwrap_iter_implINS_14__bit_iteratorINS_6vectorIbNS_9allocatorIbEEEELb0ELm0EEELb0EE8__rewrapB8ue170006ES6_S6_(ptr noalias sret(%"class.std::__1::__bit_iterator") align 8 %0, ptr noundef %1, ptr noundef %2) #5 align 2 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  %7 = call ptr @_ZNSt3__114__bit_iteratorINS_6vectorIbNS_9allocatorIbEEEELb0ELm0EEC1B8ue170006ERKS5_(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(12) %2) #12
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden ptr @_ZNSt3__114__bit_iteratorINS_6vectorIbNS_9allocatorIbEEEELb0ELm0EEC2B8ue170006ERKS5_(ptr noundef returned %0, ptr noundef nonnull align 8 dereferenceable(12) %1) unnamed_addr #0 align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = getelementptr inbounds %"class.std::__1::__bit_iterator", ptr %5, i32 0, i32 0
  %7 = load ptr, ptr %4, align 8
  %8 = getelementptr inbounds %"class.std::__1::__bit_iterator", ptr %7, i32 0, i32 0
  %9 = load ptr, ptr %8, align 8
  store ptr %9, ptr %6, align 8
  %10 = getelementptr inbounds %"class.std::__1::__bit_iterator", ptr %5, i32 0, i32 1
  %11 = load ptr, ptr %4, align 8
  %12 = getelementptr inbounds %"class.std::__1::__bit_iterator", ptr %11, i32 0, i32 1
  %13 = load i32, ptr %12, align 8
  store i32 %13, ptr %10, align 8
  ret ptr %5
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden ptr @_ZNSt3__114__bit_iteratorINS_6vectorIbNS_9allocatorIbEEEELb0ELm0EEC1B8ue170006EPmj(ptr noundef returned %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 align 2 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store i32 %2, ptr %6, align 4
  %7 = load ptr, ptr %4, align 8
  %8 = load ptr, ptr %5, align 8
  %9 = load i32, ptr %6, align 4
  %10 = call ptr @_ZNSt3__114__bit_iteratorINS_6vectorIbNS_9allocatorIbEEEELb0ELm0EEC2B8ue170006EPmj(ptr noundef %7, ptr noundef %8, i32 noundef %9) #12
  ret ptr %7
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden ptr @_ZNSt3__114__bit_iteratorINS_6vectorIbNS_9allocatorIbEEEELb0ELm0EEC2B8ue170006EPmj(ptr noundef returned %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 align 2 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store i32 %2, ptr %6, align 4
  %7 = load ptr, ptr %4, align 8
  %8 = getelementptr inbounds %"class.std::__1::__bit_iterator", ptr %7, i32 0, i32 0
  %9 = load ptr, ptr %5, align 8
  store ptr %9, ptr %8, align 8
  %10 = getelementptr inbounds %"class.std::__1::__bit_iterator", ptr %7, i32 0, i32 1
  %11 = load i32, ptr %6, align 4
  store i32 %11, ptr %10, align 8
  ret ptr %7
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNSt3__14swapB8ue170006IPmEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS3_EE5valueEvE4typeERS3_S6_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #5 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %6 = load ptr, ptr %3, align 8
  %7 = load ptr, ptr %6, align 8
  store ptr %7, ptr %5, align 8
  %8 = load ptr, ptr %4, align 8
  %9 = load ptr, ptr %8, align 8
  %10 = load ptr, ptr %3, align 8
  store ptr %9, ptr %10, align 8
  %11 = load ptr, ptr %5, align 8
  %12 = load ptr, ptr %4, align 8
  store ptr %11, ptr %12, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNSt3__14swapB8ue170006ImEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS2_EE5valueEvE4typeERS2_S5_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #5 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %6 = load ptr, ptr %3, align 8
  %7 = load i64, ptr %6, align 8
  store i64 %7, ptr %5, align 8
  %8 = load ptr, ptr %4, align 8
  %9 = load i64, ptr %8, align 8
  %10 = load ptr, ptr %3, align 8
  store i64 %9, ptr %10, align 8
  %11 = load i64, ptr %5, align 8
  %12 = load ptr, ptr %4, align 8
  store i64 %11, ptr %12, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNSt3__116__swap_allocatorB8ue170006INS_9allocatorImEEEEvRT_S4_NS_17integral_constantIbLb0EEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #5 {
  %3 = alloca %"struct.std::__1::integral_constant", align 1
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden ptr @_ZNSt3__16vectorIbNS_9allocatorIbEEED2B8ue170006Ev(ptr noundef returned %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
  %2 = alloca ptr, align 8
  %3 = alloca %"class.std::__1::vector<bool>::__destroy_vector", align 8
  store ptr %0, ptr %2, align 8
  %4 = load ptr, ptr %2, align 8
  %5 = invoke ptr @_ZNSt3__16vectorIbNS_9allocatorIbEEE16__destroy_vectorC1B8ue170006ERS3_(ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %6 unwind label %8

6:                                                ; preds = %1
  invoke void @_ZNSt3__16vectorIbNS_9allocatorIbEEE16__destroy_vectorclB8ue170006Ev(ptr noundef %3)
          to label %7 unwind label %8

7:                                                ; preds = %6
  ret ptr %4

8:                                                ; preds = %6, %1
  %9 = landingpad { ptr, i32 }
          catch ptr null
  %10 = extractvalue { ptr, i32 } %9, 0
  call void @__clang_call_terminate(ptr %10) #14
  unreachable
}

; Function Attrs: noinline optnone ssp uwtable(sync)
define linkonce_odr hidden ptr @_ZNSt3__16vectorIbNS_9allocatorIbEEE16__destroy_vectorC1B8ue170006ERS3_(ptr noundef returned %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #3 align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = load ptr, ptr %4, align 8
  %7 = call ptr @_ZNSt3__16vectorIbNS_9allocatorIbEEE16__destroy_vectorC2B8ue170006ERS3_(ptr noundef %5, ptr noundef nonnull align 8 dereferenceable(24) %6)
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNSt3__16vectorIbNS_9allocatorIbEEE16__destroy_vectorclB8ue170006Ev(ptr noundef %0) #5 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.std::__1::vector<bool>::__destroy_vector", ptr %3, i32 0, i32 0
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %"class.std::__1::vector.25", ptr %5, i32 0, i32 0
  %7 = load ptr, ptr %6, align 8
  %8 = icmp ne ptr %7, null
  br i1 %8, label %9, label %21

9:                                                ; preds = %1
  %10 = getelementptr inbounds %"class.std::__1::vector<bool>::__destroy_vector", ptr %3, i32 0, i32 0
  %11 = load ptr, ptr %10, align 8
  %12 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt3__16vectorIbNS_9allocatorIbEEE7__allocB8ue170006Ev(ptr noundef %11) #12
  %13 = getelementptr inbounds %"class.std::__1::vector<bool>::__destroy_vector", ptr %3, i32 0, i32 0
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr inbounds %"class.std::__1::vector.25", ptr %14, i32 0, i32 0
  %16 = load ptr, ptr %15, align 8
  %17 = getelementptr inbounds %"class.std::__1::vector<bool>::__destroy_vector", ptr %3, i32 0, i32 0
  %18 = load ptr, ptr %17, align 8
  %19 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__16vectorIbNS_9allocatorIbEEE5__capB8ue170006Ev(ptr noundef %18) #12
  %20 = load i64, ptr %19, align 8
  call void @_ZNSt3__116allocator_traitsINS_9allocatorImEEE10deallocateB8ue170006ERS2_Pmm(ptr noundef nonnull align 1 dereferenceable(1) %12, ptr noundef %16, i64 noundef %20) #12
  br label %21

21:                                               ; preds = %9, %1
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden ptr @_ZNSt3__16vectorIbNS_9allocatorIbEEE16__destroy_vectorC2B8ue170006ERS3_(ptr noundef returned %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #0 align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = getelementptr inbounds %"class.std::__1::vector<bool>::__destroy_vector", ptr %5, i32 0, i32 0
  %7 = load ptr, ptr %4, align 8
  store ptr %7, ptr %6, align 8
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNSt3__116allocator_traitsINS_9allocatorImEEE10deallocateB8ue170006ERS2_Pmm(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) #5 align 2 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store i64 %2, ptr %6, align 8
  %7 = load ptr, ptr %4, align 8
  %8 = load ptr, ptr %5, align 8
  %9 = load i64, ptr %6, align 8
  call void @_ZNSt3__19allocatorImE10deallocateB8ue170006EPmm(ptr noundef %7, ptr noundef %8, i64 noundef %9) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNSt3__19allocatorImE10deallocateB8ue170006EPmm(ptr noundef %0, ptr noundef %1, i64 noundef %2) #5 align 2 personality ptr @__gxx_personality_v0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store i64 %2, ptr %6, align 8
  %7 = load ptr, ptr %4, align 8
  %8 = load ptr, ptr %5, align 8
  %9 = load i64, ptr %6, align 8
  %10 = mul i64 %9, 8
  invoke void @_ZNSt3__119__libcpp_deallocateB8ue170006EPvmm(ptr noundef %8, i64 noundef %10, i64 noundef 8)
          to label %11 unwind label %12

11:                                               ; preds = %3
  ret void

12:                                               ; preds = %3
  %13 = landingpad { ptr, i32 }
          catch ptr null
  %14 = extractvalue { ptr, i32 } %13, 0
  call void @__clang_call_terminate(ptr %14) #14
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden i64 @_ZNSt3__16vectorIbNS_9allocatorIbEEE10__align_itB8ue170006Em(i64 noundef %0) #5 align 2 {
  %2 = alloca i64, align 8
  store i64 %0, ptr %2, align 8
  %3 = load i64, ptr %2, align 8
  %4 = add i64 %3, 63
  %5 = and i64 %4, -64
  ret i64 %5
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden [2 x i64] @_ZNSt3__16vectorIbNS_9allocatorIbEEE10__make_refB8ue170006Em(ptr noundef %0, i64 noundef %1) #5 align 2 {
  %3 = alloca %"class.std::__1::__bit_reference", align 8
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
  store i64 %1, ptr %5, align 8
  %6 = load ptr, ptr %4, align 8
  %7 = getelementptr inbounds %"class.std::__1::vector.25", ptr %6, i32 0, i32 0
  %8 = load ptr, ptr %7, align 8
  %9 = load i64, ptr %5, align 8
  %10 = udiv i64 %9, 64
  %11 = getelementptr inbounds i64, ptr %8, i64 %10
  %12 = load i64, ptr %5, align 8
  %13 = urem i64 %12, 64
  %14 = shl i64 1, %13
  %15 = call ptr @_ZNSt3__115__bit_referenceINS_6vectorIbNS_9allocatorIbEEEELb1EEC1B8ue170006EPmm(ptr noundef %3, ptr noundef %11, i64 noundef %14) #12
  %16 = load [2 x i64], ptr %3, align 8
  ret [2 x i64] %16
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(12) ptr @_ZNSt3__114__bit_iteratorINS_6vectorIbNS_9allocatorIbEEEELb0ELm0EEpLB8ue170006El(ptr noundef %0, i64 noundef %1) #5 align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  store ptr %0, ptr %3, align 8
  store i64 %1, ptr %4, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = load i64, ptr %4, align 8
  %7 = icmp sge i64 %6, 0
  br i1 %7, label %8, label %18

8:                                                ; preds = %2
  %9 = load i64, ptr %4, align 8
  %10 = getelementptr inbounds %"class.std::__1::__bit_iterator", ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 8
  %12 = zext i32 %11 to i64
  %13 = add nsw i64 %9, %12
  %14 = sdiv i64 %13, 64
  %15 = getelementptr inbounds %"class.std::__1::__bit_iterator", ptr %5, i32 0, i32 0
  %16 = load ptr, ptr %15, align 8
  %17 = getelementptr inbounds i64, ptr %16, i64 %14
  store ptr %17, ptr %15, align 8
  br label %30

18:                                               ; preds = %2
  %19 = load i64, ptr %4, align 8
  %20 = sub nsw i64 %19, 64
  %21 = getelementptr inbounds %"class.std::__1::__bit_iterator", ptr %5, i32 0, i32 1
  %22 = load i32, ptr %21, align 8
  %23 = zext i32 %22 to i64
  %24 = add nsw i64 %20, %23
  %25 = add nsw i64 %24, 1
  %26 = sdiv i64 %25, 64
  %27 = getelementptr inbounds %"class.std::__1::__bit_iterator", ptr %5, i32 0, i32 0
  %28 = load ptr, ptr %27, align 8
  %29 = getelementptr inbounds i64, ptr %28, i64 %26
  store ptr %29, ptr %27, align 8
  br label %30

30:                                               ; preds = %18, %8
  %31 = load i64, ptr %4, align 8
  %32 = and i64 %31, 63
  store i64 %32, ptr %4, align 8
  %33 = load i64, ptr %4, align 8
  %34 = getelementptr inbounds %"class.std::__1::__bit_iterator", ptr %5, i32 0, i32 1
  %35 = load i32, ptr %34, align 8
  %36 = zext i32 %35 to i64
  %37 = add nsw i64 %33, %36
  %38 = srem i64 %37, 64
  %39 = trunc i64 %38 to i32
  %40 = getelementptr inbounds %"class.std::__1::__bit_iterator", ptr %5, i32 0, i32 1
  store i32 %39, ptr %40, align 8
  ret ptr %5
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden ptr @_ZNSt3__114__bit_iteratorINS_6vectorIbNS_9allocatorIbEEEELb0ELm0EEC1B8ue170006Ev(ptr noundef returned %0) unnamed_addr #0 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = call ptr @_ZNSt3__114__bit_iteratorINS_6vectorIbNS_9allocatorIbEEEELb0ELm0EEC2B8ue170006Ev(ptr noundef %3) #12
  ret ptr %3
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNSt3__113copy_backwardB8ue170006INS_6vectorIbNS_9allocatorIbEEEELb1EEENS_14__bit_iteratorIT_Lb0EXLi0EEEENS5_IS6_XT0_EXLi0EEEES8_S7_(ptr noalias sret(%"class.std::__1::__bit_iterator") align 8 %0, [2 x i64] %1, [2 x i64] %2, ptr noundef %3) #1 {
  %5 = alloca ptr, align 8
  %6 = alloca %"class.std::__1::__bit_iterator.32", align 8
  %7 = alloca %"class.std::__1::__bit_iterator.32", align 8
  %8 = alloca ptr, align 8
  %9 = alloca %"class.std::__1::__bit_iterator.32", align 8
  %10 = alloca %"class.std::__1::__bit_iterator.32", align 8
  %11 = alloca %"class.std::__1::__bit_iterator", align 8
  %12 = alloca %"class.std::__1::__bit_iterator.32", align 8
  %13 = alloca %"class.std::__1::__bit_iterator.32", align 8
  %14 = alloca %"class.std::__1::__bit_iterator", align 8
  store ptr %0, ptr %5, align 8
  store [2 x i64] %1, ptr %6, align 8
  store [2 x i64] %2, ptr %7, align 8
  store ptr %3, ptr %8, align 8
  %15 = getelementptr inbounds %"class.std::__1::__bit_iterator.32", ptr %7, i32 0, i32 1
  %16 = load i32, ptr %15, align 8
  %17 = getelementptr inbounds %"class.std::__1::__bit_iterator", ptr %3, i32 0, i32 1
  %18 = load i32, ptr %17, align 8
  %19 = icmp eq i32 %16, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %4
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %9, ptr align 8 %6, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %10, ptr align 8 %7, i64 16, i1 false)
  %21 = call ptr @_ZNSt3__114__bit_iteratorINS_6vectorIbNS_9allocatorIbEEEELb0ELm0EEC1B8ue170006ERKS5_(ptr noundef %11, ptr noundef nonnull align 8 dereferenceable(12) %3) #12
  %22 = load [2 x i64], ptr %9, align 8
  %23 = load [2 x i64], ptr %10, align 8
  call void @_ZNSt3__123__copy_backward_alignedB8ue170006INS_6vectorIbNS_9allocatorIbEEEELb1EEENS_14__bit_iteratorIT_Lb0EXLi0EEEENS5_IS6_XT0_EXLi0EEEES8_S7_(ptr sret(%"class.std::__1::__bit_iterator") align 8 %0, [2 x i64] %22, [2 x i64] %23, ptr noundef %11)
  br label %28

24:                                               ; preds = %4
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %12, ptr align 8 %6, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %13, ptr align 8 %7, i64 16, i1 false)
  %25 = call ptr @_ZNSt3__114__bit_iteratorINS_6vectorIbNS_9allocatorIbEEEELb0ELm0EEC1B8ue170006ERKS5_(ptr noundef %14, ptr noundef nonnull align 8 dereferenceable(12) %3) #12
  %26 = load [2 x i64], ptr %12, align 8
  %27 = load [2 x i64], ptr %13, align 8
  call void @_ZNSt3__125__copy_backward_unalignedB8ue170006INS_6vectorIbNS_9allocatorIbEEEELb1EEENS_14__bit_iteratorIT_Lb0EXLi0EEEENS5_IS6_XT0_EXLi0EEEES8_S7_(ptr sret(%"class.std::__1::__bit_iterator") align 8 %0, [2 x i64] %26, [2 x i64] %27, ptr noundef %14)
  br label %28

28:                                               ; preds = %24, %20
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNSt3__16vectorIbNS_9allocatorIbEEE21__const_iterator_castB8ue170006ENS_14__bit_iteratorIS3_Lb1ELm0EEE(ptr noalias sret(%"class.std::__1::__bit_iterator") align 8 %0, ptr noundef %1, [2 x i64] %2) #5 align 2 personality ptr @__gxx_personality_v0 {
  %4 = alloca ptr, align 8
  %5 = alloca %"class.std::__1::__bit_iterator.32", align 8
  %6 = alloca ptr, align 8
  %7 = alloca %"class.std::__1::__bit_iterator", align 8
  %8 = alloca %"class.std::__1::__bit_iterator.32", align 8
  store ptr %0, ptr %4, align 8
  store [2 x i64] %2, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  %9 = load ptr, ptr %6, align 8
  call void @_ZNSt3__16vectorIbNS_9allocatorIbEEE5beginB8ue170006Ev(ptr sret(%"class.std::__1::__bit_iterator") align 8 %7, ptr noundef %9) #12
  %10 = call [2 x i64] @_ZNKSt3__16vectorIbNS_9allocatorIbEEE6cbeginB8ue170006Ev(ptr noundef %9) #12
  store [2 x i64] %10, ptr %8, align 8
  %11 = call i64 @_ZNSt3__1miB8ue170006ERKNS_14__bit_iteratorINS_6vectorIbNS_9allocatorIbEEEELb1ELm0EEES7_(ptr noundef nonnull align 8 dereferenceable(12) %5, ptr noundef nonnull align 8 dereferenceable(12) %8)
  invoke void @_ZNKSt3__114__bit_iteratorINS_6vectorIbNS_9allocatorIbEEEELb0ELm0EEplB8ue170006El(ptr sret(%"class.std::__1::__bit_iterator") align 8 %0, ptr noundef %7, i64 noundef %11)
          to label %12 unwind label %13

12:                                               ; preds = %3
  ret void

13:                                               ; preds = %3
  %14 = landingpad { ptr, i32 }
          catch ptr null
  %15 = extractvalue { ptr, i32 } %14, 0
  call void @__clang_call_terminate(ptr %15) #14
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(12) ptr @_ZNSt3__114__bit_iteratorINS_6vectorIbNS_9allocatorIbEEEELb0ELm0EEaSB8ue170006ERKS5_(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(12) %1) #5 align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = load ptr, ptr %4, align 8
  %7 = getelementptr inbounds %"class.std::__1::__bit_iterator", ptr %6, i32 0, i32 0
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %"class.std::__1::__bit_iterator", ptr %5, i32 0, i32 0
  store ptr %8, ptr %9, align 8
  %10 = load ptr, ptr %4, align 8
  %11 = getelementptr inbounds %"class.std::__1::__bit_iterator", ptr %10, i32 0, i32 1
  %12 = load i32, ptr %11, align 8
  %13 = getelementptr inbounds %"class.std::__1::__bit_iterator", ptr %5, i32 0, i32 1
  store i32 %12, ptr %13, align 8
  ret ptr %5
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNSt3__14copyB8ue170006INS_6vectorIbNS_9allocatorIbEEEELb1EEENS_14__bit_iteratorIT_Lb0EXLi0EEEENS5_IS6_XT0_EXLi0EEEES8_S7_(ptr noalias sret(%"class.std::__1::__bit_iterator") align 8 %0, [2 x i64] %1, [2 x i64] %2, ptr noundef %3) #1 {
  %5 = alloca ptr, align 8
  %6 = alloca %"class.std::__1::__bit_iterator.32", align 8
  %7 = alloca %"class.std::__1::__bit_iterator.32", align 8
  %8 = alloca ptr, align 8
  %9 = alloca %"class.std::__1::__bit_iterator.32", align 8
  %10 = alloca %"class.std::__1::__bit_iterator.32", align 8
  %11 = alloca %"class.std::__1::__bit_iterator", align 8
  %12 = alloca %"class.std::__1::__bit_iterator.32", align 8
  %13 = alloca %"class.std::__1::__bit_iterator.32", align 8
  %14 = alloca %"class.std::__1::__bit_iterator", align 8
  store ptr %0, ptr %5, align 8
  store [2 x i64] %1, ptr %6, align 8
  store [2 x i64] %2, ptr %7, align 8
  store ptr %3, ptr %8, align 8
  %15 = getelementptr inbounds %"class.std::__1::__bit_iterator.32", ptr %6, i32 0, i32 1
  %16 = load i32, ptr %15, align 8
  %17 = getelementptr inbounds %"class.std::__1::__bit_iterator", ptr %3, i32 0, i32 1
  %18 = load i32, ptr %17, align 8
  %19 = icmp eq i32 %16, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %4
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %9, ptr align 8 %6, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %10, ptr align 8 %7, i64 16, i1 false)
  %21 = call ptr @_ZNSt3__114__bit_iteratorINS_6vectorIbNS_9allocatorIbEEEELb0ELm0EEC1B8ue170006ERKS5_(ptr noundef %11, ptr noundef nonnull align 8 dereferenceable(12) %3) #12
  %22 = load [2 x i64], ptr %9, align 8
  %23 = load [2 x i64], ptr %10, align 8
  call void @_ZNSt3__114__copy_alignedB8ue170006INS_6vectorIbNS_9allocatorIbEEEELb1EEENS_14__bit_iteratorIT_Lb0EXLi0EEEENS5_IS6_XT0_EXLi0EEEES8_S7_(ptr sret(%"class.std::__1::__bit_iterator") align 8 %0, [2 x i64] %22, [2 x i64] %23, ptr noundef %11)
  br label %28

24:                                               ; preds = %4
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %12, ptr align 8 %6, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %13, ptr align 8 %7, i64 16, i1 false)
  %25 = call ptr @_ZNSt3__114__bit_iteratorINS_6vectorIbNS_9allocatorIbEEEELb0ELm0EEC1B8ue170006ERKS5_(ptr noundef %14, ptr noundef nonnull align 8 dereferenceable(12) %3) #12
  %26 = load [2 x i64], ptr %12, align 8
  %27 = load [2 x i64], ptr %13, align 8
  call void @_ZNSt3__116__copy_unalignedB8ue170006INS_6vectorIbNS_9allocatorIbEEEELb1EEENS_14__bit_iteratorIT_Lb0EXLi0EEEENS5_IS6_XT0_EXLi0EEEES8_S7_(ptr sret(%"class.std::__1::__bit_iterator") align 8 %0, [2 x i64] %26, [2 x i64] %27, ptr noundef %14)
  br label %28

28:                                               ; preds = %24, %20
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden [2 x i64] @_ZNKSt3__16vectorIbNS_9allocatorIbEEE6cbeginB8ue170006Ev(ptr noundef %0) #5 align 2 {
  %2 = alloca %"class.std::__1::__bit_iterator.32", align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  %4 = load ptr, ptr %3, align 8
  %5 = call [2 x i64] @_ZNKSt3__16vectorIbNS_9allocatorIbEEE11__make_iterB8ue170006Em(ptr noundef %4, i64 noundef 0) #12
  store [2 x i64] %5, ptr %2, align 8
  %6 = load [2 x i64], ptr %2, align 8
  ret [2 x i64] %6
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden [2 x i64] @_ZNKSt3__16vectorIbNS_9allocatorIbEEE4cendB8ue170006Ev(ptr noundef %0) #5 align 2 {
  %2 = alloca %"class.std::__1::__bit_iterator.32", align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %"class.std::__1::vector.25", ptr %4, i32 0, i32 1
  %6 = load i64, ptr %5, align 8
  %7 = call [2 x i64] @_ZNKSt3__16vectorIbNS_9allocatorIbEEE11__make_iterB8ue170006Em(ptr noundef %4, i64 noundef %6) #12
  store [2 x i64] %7, ptr %2, align 8
  %8 = load [2 x i64], ptr %2, align 8
  ret [2 x i64] %8
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden ptr @_ZNSt3__114__bit_iteratorINS_6vectorIbNS_9allocatorIbEEEELb0ELm0EEC2B8ue170006Ev(ptr noundef returned %0) unnamed_addr #0 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"class.std::__1::__bit_iterator", ptr %3, i32 0, i32 0
  store ptr null, ptr %4, align 8
  %5 = getelementptr inbounds %"class.std::__1::__bit_iterator", ptr %3, i32 0, i32 1
  store i32 0, ptr %5, align 8
  ret ptr %3
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNSt3__123__copy_backward_alignedB8ue170006INS_6vectorIbNS_9allocatorIbEEEELb1EEENS_14__bit_iteratorIT_Lb0EXLi0EEEENS5_IS6_XT0_EXLi0EEEES8_S7_(ptr noalias sret(%"class.std::__1::__bit_iterator") align 8 %0, [2 x i64] %1, [2 x i64] %2, ptr noundef %3) #1 {
  %5 = alloca ptr, align 8
  %6 = alloca %"class.std::__1::__bit_iterator.32", align 8
  %7 = alloca %"class.std::__1::__bit_iterator.32", align 8
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  store ptr %0, ptr %5, align 8
  store [2 x i64] %1, ptr %6, align 8
  store [2 x i64] %2, ptr %7, align 8
  store ptr %3, ptr %8, align 8
  store i32 64, ptr %9, align 4
  %19 = call i64 @_ZNSt3__1miB8ue170006ERKNS_14__bit_iteratorINS_6vectorIbNS_9allocatorIbEEEELb1ELm0EEES7_(ptr noundef nonnull align 8 dereferenceable(12) %7, ptr noundef nonnull align 8 dereferenceable(12) %6)
  store i64 %19, ptr %10, align 8
  %20 = load i64, ptr %10, align 8
  %21 = icmp sgt i64 %20, 0
  br i1 %21, label %22, label %129

22:                                               ; preds = %4
  %23 = getelementptr inbounds %"class.std::__1::__bit_iterator.32", ptr %7, i32 0, i32 1
  %24 = load i32, ptr %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %74

26:                                               ; preds = %22
  %27 = getelementptr inbounds %"class.std::__1::__bit_iterator.32", ptr %7, i32 0, i32 1
  %28 = load i32, ptr %27, align 8
  %29 = zext i32 %28 to i64
  store i64 %29, ptr %12, align 8
  %30 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__13minB8ue170006IlEERKT_S3_S3_(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 8 dereferenceable(8) %10)
  %31 = load i64, ptr %30, align 8
  store i64 %31, ptr %11, align 8
  %32 = load i64, ptr %11, align 8
  %33 = load i64, ptr %10, align 8
  %34 = sub nsw i64 %33, %32
  store i64 %34, ptr %10, align 8
  %35 = getelementptr inbounds %"class.std::__1::__bit_iterator.32", ptr %7, i32 0, i32 1
  %36 = load i32, ptr %35, align 8
  %37 = sub i32 64, %36
  store i32 %37, ptr %13, align 4
  %38 = getelementptr inbounds %"class.std::__1::__bit_iterator.32", ptr %7, i32 0, i32 1
  %39 = load i32, ptr %38, align 8
  %40 = zext i32 %39 to i64
  %41 = load i64, ptr %11, align 8
  %42 = sub nsw i64 %40, %41
  %43 = shl i64 -1, %42
  %44 = load i32, ptr %13, align 4
  %45 = zext i32 %44 to i64
  %46 = lshr i64 -1, %45
  %47 = and i64 %43, %46
  store i64 %47, ptr %14, align 8
  %48 = getelementptr inbounds %"class.std::__1::__bit_iterator.32", ptr %7, i32 0, i32 0
  %49 = load ptr, ptr %48, align 8
  %50 = load i64, ptr %49, align 8
  %51 = load i64, ptr %14, align 8
  %52 = and i64 %50, %51
  store i64 %52, ptr %15, align 8
  %53 = load i64, ptr %14, align 8
  %54 = xor i64 %53, -1
  %55 = getelementptr inbounds %"class.std::__1::__bit_iterator", ptr %3, i32 0, i32 0
  %56 = load ptr, ptr %55, align 8
  %57 = load i64, ptr %56, align 8
  %58 = and i64 %57, %54
  store i64 %58, ptr %56, align 8
  %59 = load i64, ptr %15, align 8
  %60 = getelementptr inbounds %"class.std::__1::__bit_iterator", ptr %3, i32 0, i32 0
  %61 = load ptr, ptr %60, align 8
  %62 = load i64, ptr %61, align 8
  %63 = or i64 %62, %59
  store i64 %63, ptr %61, align 8
  %64 = load i64, ptr %11, align 8
  %65 = sub nsw i64 0, %64
  %66 = and i64 %65, 63
  %67 = getelementptr inbounds %"class.std::__1::__bit_iterator", ptr %3, i32 0, i32 1
  %68 = load i32, ptr %67, align 8
  %69 = zext i32 %68 to i64
  %70 = add nsw i64 %66, %69
  %71 = srem i64 %70, 64
  %72 = trunc i64 %71 to i32
  %73 = getelementptr inbounds %"class.std::__1::__bit_iterator", ptr %3, i32 0, i32 1
  store i32 %72, ptr %73, align 8
  br label %74

74:                                               ; preds = %26, %22
  %75 = load i64, ptr %10, align 8
  %76 = sdiv i64 %75, 64
  store i64 %76, ptr %16, align 8
  %77 = load i64, ptr %16, align 8
  %78 = getelementptr inbounds %"class.std::__1::__bit_iterator", ptr %3, i32 0, i32 0
  %79 = load ptr, ptr %78, align 8
  %80 = sub i64 0, %77
  %81 = getelementptr inbounds i64, ptr %79, i64 %80
  store ptr %81, ptr %78, align 8
  %82 = load i64, ptr %16, align 8
  %83 = getelementptr inbounds %"class.std::__1::__bit_iterator.32", ptr %7, i32 0, i32 0
  %84 = load ptr, ptr %83, align 8
  %85 = sub i64 0, %82
  %86 = getelementptr inbounds i64, ptr %84, i64 %85
  store ptr %86, ptr %83, align 8
  %87 = getelementptr inbounds %"class.std::__1::__bit_iterator.32", ptr %7, i32 0, i32 0
  %88 = load ptr, ptr %87, align 8
  %89 = call ptr @_ZNSt3__112__to_addressB8ue170006IKmEEPT_S3_(ptr noundef %88) #12
  %90 = load i64, ptr %16, align 8
  %91 = getelementptr inbounds %"class.std::__1::__bit_iterator", ptr %3, i32 0, i32 0
  %92 = load ptr, ptr %91, align 8
  %93 = call ptr @_ZNSt3__112__to_addressB8ue170006ImEEPT_S2_(ptr noundef %92) #12
  %94 = call ptr @_ZNSt3__16copy_nB8ue170006IPKmmPmEENS_9enable_ifIXsr37__has_random_access_iterator_categoryIT_EE5valueET1_E4typeES5_T0_S6_(ptr noundef %89, i64 noundef %90, ptr noundef %93)
  %95 = load i64, ptr %16, align 8
  %96 = mul i64 %95, 64
  %97 = load i64, ptr %10, align 8
  %98 = sub i64 %97, %96
  store i64 %98, ptr %10, align 8
  %99 = load i64, ptr %10, align 8
  %100 = icmp sgt i64 %99, 0
  br i1 %100, label %101, label %128

101:                                              ; preds = %74
  %102 = load i64, ptr %10, align 8
  %103 = sub nsw i64 64, %102
  %104 = shl i64 -1, %103
  store i64 %104, ptr %17, align 8
  %105 = getelementptr inbounds %"class.std::__1::__bit_iterator.32", ptr %7, i32 0, i32 0
  %106 = load ptr, ptr %105, align 8
  %107 = getelementptr inbounds i64, ptr %106, i32 -1
  store ptr %107, ptr %105, align 8
  %108 = load i64, ptr %107, align 8
  %109 = load i64, ptr %17, align 8
  %110 = and i64 %108, %109
  store i64 %110, ptr %18, align 8
  %111 = load i64, ptr %17, align 8
  %112 = xor i64 %111, -1
  %113 = getelementptr inbounds %"class.std::__1::__bit_iterator", ptr %3, i32 0, i32 0
  %114 = load ptr, ptr %113, align 8
  %115 = getelementptr inbounds i64, ptr %114, i32 -1
  store ptr %115, ptr %113, align 8
  %116 = load i64, ptr %115, align 8
  %117 = and i64 %116, %112
  store i64 %117, ptr %115, align 8
  %118 = load i64, ptr %18, align 8
  %119 = getelementptr inbounds %"class.std::__1::__bit_iterator", ptr %3, i32 0, i32 0
  %120 = load ptr, ptr %119, align 8
  %121 = load i64, ptr %120, align 8
  %122 = or i64 %121, %118
  store i64 %122, ptr %120, align 8
  %123 = load i64, ptr %10, align 8
  %124 = sub nsw i64 0, %123
  %125 = and i64 %124, 63
  %126 = trunc i64 %125 to i32
  %127 = getelementptr inbounds %"class.std::__1::__bit_iterator", ptr %3, i32 0, i32 1
  store i32 %126, ptr %127, align 8
  br label %128

128:                                              ; preds = %101, %74
  br label %129

129:                                              ; preds = %128, %4
  %130 = call ptr @_ZNSt3__114__bit_iteratorINS_6vectorIbNS_9allocatorIbEEEELb0ELm0EEC1B8ue170006ERKS5_(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(12) %3) #12
  ret void
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNSt3__125__copy_backward_unalignedB8ue170006INS_6vectorIbNS_9allocatorIbEEEELb1EEENS_14__bit_iteratorIT_Lb0EXLi0EEEENS5_IS6_XT0_EXLi0EEEES8_S7_(ptr noalias sret(%"class.std::__1::__bit_iterator") align 8 %0, [2 x i64] %1, [2 x i64] %2, ptr noundef %3) #1 {
  %5 = alloca ptr, align 8
  %6 = alloca %"class.std::__1::__bit_iterator.32", align 8
  %7 = alloca %"class.std::__1::__bit_iterator.32", align 8
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  store ptr %0, ptr %5, align 8
  store [2 x i64] %1, ptr %6, align 8
  store [2 x i64] %2, ptr %7, align 8
  store ptr %3, ptr %8, align 8
  store i32 64, ptr %9, align 4
  %25 = call i64 @_ZNSt3__1miB8ue170006ERKNS_14__bit_iteratorINS_6vectorIbNS_9allocatorIbEEEELb1ELm0EEES7_(ptr noundef nonnull align 8 dereferenceable(12) %7, ptr noundef nonnull align 8 dereferenceable(12) %6)
  store i64 %25, ptr %10, align 8
  %26 = load i64, ptr %10, align 8
  %27 = icmp sgt i64 %26, 0
  br i1 %27, label %28, label %318

28:                                               ; preds = %4
  %29 = getelementptr inbounds %"class.std::__1::__bit_iterator.32", ptr %7, i32 0, i32 1
  %30 = load i32, ptr %29, align 8
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %174

32:                                               ; preds = %28
  %33 = getelementptr inbounds %"class.std::__1::__bit_iterator.32", ptr %7, i32 0, i32 1
  %34 = load i32, ptr %33, align 8
  %35 = zext i32 %34 to i64
  store i64 %35, ptr %12, align 8
  %36 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__13minB8ue170006IlEERKT_S3_S3_(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 8 dereferenceable(8) %10)
  %37 = load i64, ptr %36, align 8
  store i64 %37, ptr %11, align 8
  %38 = load i64, ptr %11, align 8
  %39 = load i64, ptr %10, align 8
  %40 = sub nsw i64 %39, %38
  store i64 %40, ptr %10, align 8
  %41 = getelementptr inbounds %"class.std::__1::__bit_iterator.32", ptr %7, i32 0, i32 1
  %42 = load i32, ptr %41, align 8
  %43 = sub i32 64, %42
  store i32 %43, ptr %13, align 4
  %44 = getelementptr inbounds %"class.std::__1::__bit_iterator.32", ptr %7, i32 0, i32 1
  %45 = load i32, ptr %44, align 8
  %46 = zext i32 %45 to i64
  %47 = load i64, ptr %11, align 8
  %48 = sub nsw i64 %46, %47
  %49 = shl i64 -1, %48
  %50 = load i32, ptr %13, align 4
  %51 = zext i32 %50 to i64
  %52 = lshr i64 -1, %51
  %53 = and i64 %49, %52
  store i64 %53, ptr %14, align 8
  %54 = getelementptr inbounds %"class.std::__1::__bit_iterator.32", ptr %7, i32 0, i32 0
  %55 = load ptr, ptr %54, align 8
  %56 = load i64, ptr %55, align 8
  %57 = load i64, ptr %14, align 8
  %58 = and i64 %56, %57
  store i64 %58, ptr %15, align 8
  %59 = getelementptr inbounds %"class.std::__1::__bit_iterator", ptr %3, i32 0, i32 1
  %60 = load i32, ptr %59, align 8
  %61 = sub i32 64, %60
  store i32 %61, ptr %16, align 4
  %62 = getelementptr inbounds %"class.std::__1::__bit_iterator", ptr %3, i32 0, i32 1
  %63 = load i32, ptr %62, align 8
  %64 = zext i32 %63 to i64
  store i64 %64, ptr %18, align 8
  %65 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__13minB8ue170006IlEERKT_S3_S3_(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(8) %18)
  %66 = load i64, ptr %65, align 8
  store i64 %66, ptr %17, align 8
  %67 = load i64, ptr %17, align 8
  %68 = icmp ugt i64 %67, 0
  br i1 %68, label %69, label %131

69:                                               ; preds = %32
  %70 = getelementptr inbounds %"class.std::__1::__bit_iterator", ptr %3, i32 0, i32 1
  %71 = load i32, ptr %70, align 8
  %72 = zext i32 %71 to i64
  %73 = load i64, ptr %17, align 8
  %74 = sub i64 %72, %73
  %75 = shl i64 -1, %74
  %76 = load i32, ptr %16, align 4
  %77 = zext i32 %76 to i64
  %78 = lshr i64 -1, %77
  %79 = and i64 %75, %78
  store i64 %79, ptr %14, align 8
  %80 = load i64, ptr %14, align 8
  %81 = xor i64 %80, -1
  %82 = getelementptr inbounds %"class.std::__1::__bit_iterator", ptr %3, i32 0, i32 0
  %83 = load ptr, ptr %82, align 8
  %84 = load i64, ptr %83, align 8
  %85 = and i64 %84, %81
  store i64 %85, ptr %83, align 8
  %86 = getelementptr inbounds %"class.std::__1::__bit_iterator", ptr %3, i32 0, i32 1
  %87 = load i32, ptr %86, align 8
  %88 = getelementptr inbounds %"class.std::__1::__bit_iterator.32", ptr %7, i32 0, i32 1
  %89 = load i32, ptr %88, align 8
  %90 = icmp ugt i32 %87, %89
  br i1 %90, label %91, label %104

91:                                               ; preds = %69
  %92 = load i64, ptr %15, align 8
  %93 = getelementptr inbounds %"class.std::__1::__bit_iterator", ptr %3, i32 0, i32 1
  %94 = load i32, ptr %93, align 8
  %95 = getelementptr inbounds %"class.std::__1::__bit_iterator.32", ptr %7, i32 0, i32 1
  %96 = load i32, ptr %95, align 8
  %97 = sub i32 %94, %96
  %98 = zext i32 %97 to i64
  %99 = shl i64 %92, %98
  %100 = getelementptr inbounds %"class.std::__1::__bit_iterator", ptr %3, i32 0, i32 0
  %101 = load ptr, ptr %100, align 8
  %102 = load i64, ptr %101, align 8
  %103 = or i64 %102, %99
  store i64 %103, ptr %101, align 8
  br label %117

104:                                              ; preds = %69
  %105 = load i64, ptr %15, align 8
  %106 = getelementptr inbounds %"class.std::__1::__bit_iterator.32", ptr %7, i32 0, i32 1
  %107 = load i32, ptr %106, align 8
  %108 = getelementptr inbounds %"class.std::__1::__bit_iterator", ptr %3, i32 0, i32 1
  %109 = load i32, ptr %108, align 8
  %110 = sub i32 %107, %109
  %111 = zext i32 %110 to i64
  %112 = lshr i64 %105, %111
  %113 = getelementptr inbounds %"class.std::__1::__bit_iterator", ptr %3, i32 0, i32 0
  %114 = load ptr, ptr %113, align 8
  %115 = load i64, ptr %114, align 8
  %116 = or i64 %115, %112
  store i64 %116, ptr %114, align 8
  br label %117

117:                                              ; preds = %104, %91
  %118 = load i64, ptr %17, align 8
  %119 = sub i64 0, %118
  %120 = and i64 %119, 63
  %121 = getelementptr inbounds %"class.std::__1::__bit_iterator", ptr %3, i32 0, i32 1
  %122 = load i32, ptr %121, align 8
  %123 = zext i32 %122 to i64
  %124 = add i64 %120, %123
  %125 = urem i64 %124, 64
  %126 = trunc i64 %125 to i32
  %127 = getelementptr inbounds %"class.std::__1::__bit_iterator", ptr %3, i32 0, i32 1
  store i32 %126, ptr %127, align 8
  %128 = load i64, ptr %17, align 8
  %129 = load i64, ptr %11, align 8
  %130 = sub i64 %129, %128
  store i64 %130, ptr %11, align 8
  br label %131

131:                                              ; preds = %117, %32
  %132 = load i64, ptr %11, align 8
  %133 = icmp sgt i64 %132, 0
  br i1 %133, label %134, label %173

134:                                              ; preds = %131
  %135 = getelementptr inbounds %"class.std::__1::__bit_iterator", ptr %3, i32 0, i32 0
  %136 = load ptr, ptr %135, align 8
  %137 = getelementptr inbounds i64, ptr %136, i32 -1
  store ptr %137, ptr %135, align 8
  %138 = load i64, ptr %11, align 8
  %139 = sub nsw i64 0, %138
  %140 = and i64 %139, 63
  %141 = trunc i64 %140 to i32
  %142 = getelementptr inbounds %"class.std::__1::__bit_iterator", ptr %3, i32 0, i32 1
  store i32 %141, ptr %142, align 8
  %143 = getelementptr inbounds %"class.std::__1::__bit_iterator", ptr %3, i32 0, i32 1
  %144 = load i32, ptr %143, align 8
  %145 = zext i32 %144 to i64
  %146 = shl i64 -1, %145
  store i64 %146, ptr %14, align 8
  %147 = load i64, ptr %14, align 8
  %148 = xor i64 %147, -1
  %149 = getelementptr inbounds %"class.std::__1::__bit_iterator", ptr %3, i32 0, i32 0
  %150 = load ptr, ptr %149, align 8
  %151 = load i64, ptr %150, align 8
  %152 = and i64 %151, %148
  store i64 %152, ptr %150, align 8
  %153 = load i64, ptr %11, align 8
  %154 = load i64, ptr %17, align 8
  %155 = add i64 %153, %154
  %156 = getelementptr inbounds %"class.std::__1::__bit_iterator.32", ptr %7, i32 0, i32 1
  %157 = load i32, ptr %156, align 8
  %158 = zext i32 %157 to i64
  %159 = sub i64 %158, %155
  %160 = trunc i64 %159 to i32
  store i32 %160, ptr %156, align 8
  %161 = load i64, ptr %15, align 8
  %162 = getelementptr inbounds %"class.std::__1::__bit_iterator", ptr %3, i32 0, i32 1
  %163 = load i32, ptr %162, align 8
  %164 = getelementptr inbounds %"class.std::__1::__bit_iterator.32", ptr %7, i32 0, i32 1
  %165 = load i32, ptr %164, align 8
  %166 = sub i32 %163, %165
  %167 = zext i32 %166 to i64
  %168 = shl i64 %161, %167
  %169 = getelementptr inbounds %"class.std::__1::__bit_iterator", ptr %3, i32 0, i32 0
  %170 = load ptr, ptr %169, align 8
  %171 = load i64, ptr %170, align 8
  %172 = or i64 %171, %168
  store i64 %172, ptr %170, align 8
  br label %173

173:                                              ; preds = %134, %131
  br label %174

174:                                              ; preds = %173, %28
  %175 = getelementptr inbounds %"class.std::__1::__bit_iterator", ptr %3, i32 0, i32 1
  %176 = load i32, ptr %175, align 8
  %177 = sub i32 64, %176
  store i32 %177, ptr %19, align 4
  %178 = load i32, ptr %19, align 4
  %179 = zext i32 %178 to i64
  %180 = lshr i64 -1, %179
  store i64 %180, ptr %20, align 8
  br label %181

181:                                              ; preds = %218, %174
  %182 = load i64, ptr %10, align 8
  %183 = icmp sge i64 %182, 64
  br i1 %183, label %184, label %221

184:                                              ; preds = %181
  %185 = getelementptr inbounds %"class.std::__1::__bit_iterator.32", ptr %7, i32 0, i32 0
  %186 = load ptr, ptr %185, align 8
  %187 = getelementptr inbounds i64, ptr %186, i32 -1
  store ptr %187, ptr %185, align 8
  %188 = load i64, ptr %187, align 8
  store i64 %188, ptr %21, align 8
  %189 = load i64, ptr %20, align 8
  %190 = xor i64 %189, -1
  %191 = getelementptr inbounds %"class.std::__1::__bit_iterator", ptr %3, i32 0, i32 0
  %192 = load ptr, ptr %191, align 8
  %193 = load i64, ptr %192, align 8
  %194 = and i64 %193, %190
  store i64 %194, ptr %192, align 8
  %195 = load i64, ptr %21, align 8
  %196 = load i32, ptr %19, align 4
  %197 = zext i32 %196 to i64
  %198 = lshr i64 %195, %197
  %199 = getelementptr inbounds %"class.std::__1::__bit_iterator", ptr %3, i32 0, i32 0
  %200 = load ptr, ptr %199, align 8
  %201 = load i64, ptr %200, align 8
  %202 = or i64 %201, %198
  store i64 %202, ptr %200, align 8
  %203 = load i64, ptr %20, align 8
  %204 = getelementptr inbounds %"class.std::__1::__bit_iterator", ptr %3, i32 0, i32 0
  %205 = load ptr, ptr %204, align 8
  %206 = getelementptr inbounds i64, ptr %205, i32 -1
  store ptr %206, ptr %204, align 8
  %207 = load i64, ptr %206, align 8
  %208 = and i64 %207, %203
  store i64 %208, ptr %206, align 8
  %209 = load i64, ptr %21, align 8
  %210 = getelementptr inbounds %"class.std::__1::__bit_iterator", ptr %3, i32 0, i32 1
  %211 = load i32, ptr %210, align 8
  %212 = zext i32 %211 to i64
  %213 = shl i64 %209, %212
  %214 = getelementptr inbounds %"class.std::__1::__bit_iterator", ptr %3, i32 0, i32 0
  %215 = load ptr, ptr %214, align 8
  %216 = load i64, ptr %215, align 8
  %217 = or i64 %216, %213
  store i64 %217, ptr %215, align 8
  br label %218

218:                                              ; preds = %184
  %219 = load i64, ptr %10, align 8
  %220 = sub nsw i64 %219, 64
  store i64 %220, ptr %10, align 8
  br label %181, !llvm.loop !23

221:                                              ; preds = %181
  %222 = load i64, ptr %10, align 8
  %223 = icmp sgt i64 %222, 0
  br i1 %223, label %224, label %317

224:                                              ; preds = %221
  %225 = load i64, ptr %10, align 8
  %226 = sub nsw i64 64, %225
  %227 = shl i64 -1, %226
  store i64 %227, ptr %20, align 8
  %228 = getelementptr inbounds %"class.std::__1::__bit_iterator.32", ptr %7, i32 0, i32 0
  %229 = load ptr, ptr %228, align 8
  %230 = getelementptr inbounds i64, ptr %229, i32 -1
  store ptr %230, ptr %228, align 8
  %231 = load i64, ptr %230, align 8
  %232 = load i64, ptr %20, align 8
  %233 = and i64 %231, %232
  store i64 %233, ptr %22, align 8
  %234 = getelementptr inbounds %"class.std::__1::__bit_iterator", ptr %3, i32 0, i32 1
  %235 = load i32, ptr %234, align 8
  %236 = sub i32 64, %235
  store i32 %236, ptr %19, align 4
  %237 = getelementptr inbounds %"class.std::__1::__bit_iterator", ptr %3, i32 0, i32 1
  %238 = load i32, ptr %237, align 8
  %239 = zext i32 %238 to i64
  store i64 %239, ptr %24, align 8
  %240 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__13minB8ue170006IlEERKT_S3_S3_(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(8) %24)
  %241 = load i64, ptr %240, align 8
  store i64 %241, ptr %23, align 8
  %242 = getelementptr inbounds %"class.std::__1::__bit_iterator", ptr %3, i32 0, i32 1
  %243 = load i32, ptr %242, align 8
  %244 = zext i32 %243 to i64
  %245 = load i64, ptr %23, align 8
  %246 = sub i64 %244, %245
  %247 = shl i64 -1, %246
  %248 = load i32, ptr %19, align 4
  %249 = zext i32 %248 to i64
  %250 = lshr i64 -1, %249
  %251 = and i64 %247, %250
  store i64 %251, ptr %20, align 8
  %252 = load i64, ptr %20, align 8
  %253 = xor i64 %252, -1
  %254 = getelementptr inbounds %"class.std::__1::__bit_iterator", ptr %3, i32 0, i32 0
  %255 = load ptr, ptr %254, align 8
  %256 = load i64, ptr %255, align 8
  %257 = and i64 %256, %253
  store i64 %257, ptr %255, align 8
  %258 = load i64, ptr %22, align 8
  %259 = getelementptr inbounds %"class.std::__1::__bit_iterator", ptr %3, i32 0, i32 1
  %260 = load i32, ptr %259, align 8
  %261 = sub i32 64, %260
  %262 = zext i32 %261 to i64
  %263 = lshr i64 %258, %262
  %264 = getelementptr inbounds %"class.std::__1::__bit_iterator", ptr %3, i32 0, i32 0
  %265 = load ptr, ptr %264, align 8
  %266 = load i64, ptr %265, align 8
  %267 = or i64 %266, %263
  store i64 %267, ptr %265, align 8
  %268 = load i64, ptr %23, align 8
  %269 = sub i64 0, %268
  %270 = and i64 %269, 63
  %271 = getelementptr inbounds %"class.std::__1::__bit_iterator", ptr %3, i32 0, i32 1
  %272 = load i32, ptr %271, align 8
  %273 = zext i32 %272 to i64
  %274 = add i64 %270, %273
  %275 = urem i64 %274, 64
  %276 = trunc i64 %275 to i32
  %277 = getelementptr inbounds %"class.std::__1::__bit_iterator", ptr %3, i32 0, i32 1
  store i32 %276, ptr %277, align 8
  %278 = load i64, ptr %23, align 8
  %279 = load i64, ptr %10, align 8
  %280 = sub i64 %279, %278
  store i64 %280, ptr %10, align 8
  %281 = load i64, ptr %10, align 8
  %282 = icmp sgt i64 %281, 0
  br i1 %282, label %283, label %316

283:                                              ; preds = %224
  %284 = getelementptr inbounds %"class.std::__1::__bit_iterator", ptr %3, i32 0, i32 0
  %285 = load ptr, ptr %284, align 8
  %286 = getelementptr inbounds i64, ptr %285, i32 -1
  store ptr %286, ptr %284, align 8
  %287 = load i64, ptr %10, align 8
  %288 = sub nsw i64 0, %287
  %289 = and i64 %288, 63
  %290 = trunc i64 %289 to i32
  %291 = getelementptr inbounds %"class.std::__1::__bit_iterator", ptr %3, i32 0, i32 1
  store i32 %290, ptr %291, align 8
  %292 = getelementptr inbounds %"class.std::__1::__bit_iterator", ptr %3, i32 0, i32 1
  %293 = load i32, ptr %292, align 8
  %294 = zext i32 %293 to i64
  %295 = shl i64 -1, %294
  store i64 %295, ptr %20, align 8
  %296 = load i64, ptr %20, align 8
  %297 = xor i64 %296, -1
  %298 = getelementptr inbounds %"class.std::__1::__bit_iterator", ptr %3, i32 0, i32 0
  %299 = load ptr, ptr %298, align 8
  %300 = load i64, ptr %299, align 8
  %301 = and i64 %300, %297
  store i64 %301, ptr %299, align 8
  %302 = load i64, ptr %22, align 8
  %303 = getelementptr inbounds %"class.std::__1::__bit_iterator", ptr %3, i32 0, i32 1
  %304 = load i32, ptr %303, align 8
  %305 = zext i32 %304 to i64
  %306 = load i64, ptr %10, align 8
  %307 = sub nsw i64 64, %306
  %308 = load i64, ptr %23, align 8
  %309 = sub i64 %307, %308
  %310 = sub i64 %305, %309
  %311 = shl i64 %302, %310
  %312 = getelementptr inbounds %"class.std::__1::__bit_iterator", ptr %3, i32 0, i32 0
  %313 = load ptr, ptr %312, align 8
  %314 = load i64, ptr %313, align 8
  %315 = or i64 %314, %311
  store i64 %315, ptr %313, align 8
  br label %316

316:                                              ; preds = %283, %224
  br label %317

317:                                              ; preds = %316, %221
  br label %318

318:                                              ; preds = %317, %4
  %319 = call ptr @_ZNSt3__114__bit_iteratorINS_6vectorIbNS_9allocatorIbEEEELb0ELm0EEC1B8ue170006ERKS5_(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(12) %3) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden i64 @_ZNSt3__1miB8ue170006ERKNS_14__bit_iteratorINS_6vectorIbNS_9allocatorIbEEEELb1ELm0EEES7_(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull align 8 dereferenceable(12) %1) #5 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = getelementptr inbounds %"class.std::__1::__bit_iterator.32", ptr %5, i32 0, i32 0
  %7 = load ptr, ptr %6, align 8
  %8 = load ptr, ptr %4, align 8
  %9 = getelementptr inbounds %"class.std::__1::__bit_iterator.32", ptr %8, i32 0, i32 0
  %10 = load ptr, ptr %9, align 8
  %11 = ptrtoint ptr %7 to i64
  %12 = ptrtoint ptr %10 to i64
  %13 = sub i64 %11, %12
  %14 = sdiv exact i64 %13, 8
  %15 = mul nsw i64 %14, 64
  %16 = load ptr, ptr %3, align 8
  %17 = getelementptr inbounds %"class.std::__1::__bit_iterator.32", ptr %16, i32 0, i32 1
  %18 = load i32, ptr %17, align 8
  %19 = zext i32 %18 to i64
  %20 = add nsw i64 %15, %19
  %21 = load ptr, ptr %4, align 8
  %22 = getelementptr inbounds %"class.std::__1::__bit_iterator.32", ptr %21, i32 0, i32 1
  %23 = load i32, ptr %22, align 8
  %24 = zext i32 %23 to i64
  %25 = sub nsw i64 %20, %24
  ret i64 %25
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__13minB8ue170006IlEERKT_S3_S3_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #1 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca %"struct.std::__1::__less", align 1
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %6 = load ptr, ptr %3, align 8
  %7 = load ptr, ptr %4, align 8
  %8 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__13minB8ue170006IlNS_6__lessIvvEEEERKT_S5_S5_T0_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %7)
  ret ptr %8
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden ptr @_ZNSt3__16copy_nB8ue170006IPKmmPmEENS_9enable_ifIXsr37__has_random_access_iterator_categoryIT_EE5valueET1_E4typeES5_T0_S6_(ptr noundef %0, i64 noundef %1, ptr noundef %2) #1 {
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
  store i64 %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  %8 = load i64, ptr %5, align 8
  store i64 %8, ptr %7, align 8
  %9 = load ptr, ptr %4, align 8
  %10 = load ptr, ptr %4, align 8
  %11 = load i64, ptr %7, align 8
  %12 = getelementptr inbounds i64, ptr %10, i64 %11
  %13 = load ptr, ptr %6, align 8
  %14 = call ptr @_ZNSt3__14copyB8ue170006IPKmPmEET0_T_S5_S4_(ptr noundef %9, ptr noundef %12, ptr noundef %13)
  ret ptr %14
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden ptr @_ZNSt3__112__to_addressB8ue170006IKmEEPT_S3_(ptr noundef %0) #5 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden ptr @_ZNSt3__112__to_addressB8ue170006ImEEPT_S2_(ptr noundef %0) #5 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  ret ptr %3
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__13minB8ue170006IlNS_6__lessIvvEEEERKT_S5_S5_T0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #1 {
  %3 = alloca %"struct.std::__1::__less", align 1
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  %6 = load ptr, ptr %5, align 8
  %7 = load ptr, ptr %4, align 8
  %8 = call zeroext i1 @_ZNKSt3__16__lessIvvEclB8ue170006IllEEbRKT_RKT0_(ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %7)
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = load ptr, ptr %5, align 8
  br label %13

11:                                               ; preds = %2
  %12 = load ptr, ptr %4, align 8
  br label %13

13:                                               ; preds = %11, %9
  %14 = phi ptr [ %10, %9 ], [ %12, %11 ]
  ret ptr %14
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden zeroext i1 @_ZNKSt3__16__lessIvvEclB8ue170006IllEEbRKT_RKT0_(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #5 align 2 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  %7 = load ptr, ptr %4, align 8
  %8 = load ptr, ptr %5, align 8
  %9 = load i64, ptr %8, align 8
  %10 = load ptr, ptr %6, align 8
  %11 = load i64, ptr %10, align 8
  %12 = icmp slt i64 %9, %11
  ret i1 %12
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden ptr @_ZNSt3__14copyB8ue170006IPKmPmEET0_T_S5_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #1 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca %"struct.std::__1::pair.62", align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  %8 = load ptr, ptr %4, align 8
  %9 = load ptr, ptr %5, align 8
  %10 = load ptr, ptr %6, align 8
  %11 = call [2 x i64] @_ZNSt3__16__copyB8ue170006INS_17_ClassicAlgPolicyEPKmS3_PmEENS_4pairIT0_T2_EES6_T1_S7_(ptr noundef %8, ptr noundef %9, ptr noundef %10)
  store [2 x i64] %11, ptr %7, align 8
  %12 = getelementptr inbounds %"struct.std::__1::pair.62", ptr %7, i32 0, i32 1
  %13 = load ptr, ptr %12, align 8
  ret ptr %13
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden [2 x i64] @_ZNSt3__16__copyB8ue170006INS_17_ClassicAlgPolicyEPKmS3_PmEENS_4pairIT0_T2_EES6_T1_S7_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #1 {
  %4 = alloca %"struct.std::__1::pair.62", align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  store ptr %2, ptr %7, align 8
  %8 = load ptr, ptr %5, align 8
  %9 = load ptr, ptr %6, align 8
  %10 = load ptr, ptr %7, align 8
  %11 = call [2 x i64] @_ZNSt3__123__dispatch_copy_or_moveB8ue170006INS_17_ClassicAlgPolicyENS_11__copy_loopIS1_EENS_14__copy_trivialEPKmS6_PmEENS_4pairIT2_T4_EES9_T3_SA_(ptr noundef %8, ptr noundef %9, ptr noundef %10)
  store [2 x i64] %11, ptr %4, align 8
  %12 = load [2 x i64], ptr %4, align 8
  ret [2 x i64] %12
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden [2 x i64] @_ZNSt3__123__dispatch_copy_or_moveB8ue170006INS_17_ClassicAlgPolicyENS_11__copy_loopIS1_EENS_14__copy_trivialEPKmS6_PmEENS_4pairIT2_T4_EES9_T3_SA_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #1 {
  %4 = alloca %"struct.std::__1::pair.62", align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  store ptr %2, ptr %7, align 8
  %8 = load ptr, ptr %5, align 8
  %9 = load ptr, ptr %6, align 8
  %10 = load ptr, ptr %7, align 8
  %11 = call [2 x i64] @_ZNSt3__121__unwrap_and_dispatchB8ue170006INS_10__overloadINS_11__copy_loopINS_17_ClassicAlgPolicyEEENS_14__copy_trivialEEEPKmS8_PmLi0EEENS_4pairIT0_T2_EESB_T1_SC_(ptr noundef %8, ptr noundef %9, ptr noundef %10)
  store [2 x i64] %11, ptr %4, align 8
  %12 = load [2 x i64], ptr %4, align 8
  ret [2 x i64] %12
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden [2 x i64] @_ZNSt3__121__unwrap_and_dispatchB8ue170006INS_10__overloadINS_11__copy_loopINS_17_ClassicAlgPolicyEEENS_14__copy_trivialEEEPKmS8_PmLi0EEENS_4pairIT0_T2_EESB_T1_SC_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #1 {
  %4 = alloca %"struct.std::__1::pair.62", align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca %"struct.std::__1::pair.63", align 8
  %9 = alloca %"struct.std::__1::pair.62", align 8
  %10 = alloca %"struct.std::__1::__overload.61", align 1
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  store ptr %2, ptr %7, align 8
  %13 = load ptr, ptr %5, align 8
  %14 = load ptr, ptr %6, align 8
  %15 = call [2 x i64] @_ZNSt3__114__unwrap_rangeB8ue170006IPKmS2_EENS_4pairIT0_S4_EET_S6_(ptr noundef %13, ptr noundef %14)
  store [2 x i64] %15, ptr %8, align 8
  %16 = getelementptr inbounds %"struct.std::__1::pair.63", ptr %8, i32 0, i32 0
  %17 = load ptr, ptr %16, align 8
  %18 = getelementptr inbounds %"struct.std::__1::pair.63", ptr %8, i32 0, i32 1
  %19 = load ptr, ptr %18, align 8
  %20 = load ptr, ptr %7, align 8
  %21 = call ptr @_ZNSt3__113__unwrap_iterB8ue170006IPmNS_18__unwrap_iter_implIS1_Lb1EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEES5_(ptr noundef %20) #12
  %22 = call [2 x i64] @_ZNKSt3__114__copy_trivialclB8ue170006IKmmLi0EEENS_4pairIPT_PT0_EES5_S5_S7_(ptr noundef %10, ptr noundef %17, ptr noundef %19, ptr noundef %21)
  store [2 x i64] %22, ptr %9, align 8
  %23 = load ptr, ptr %5, align 8
  %24 = getelementptr inbounds %"struct.std::__1::pair.62", ptr %9, i32 0, i32 0
  %25 = load ptr, ptr %24, align 8
  %26 = call ptr @_ZNSt3__114__rewrap_rangeB8ue170006IPKmS2_EET_S3_T0_(ptr noundef %23, ptr noundef %25)
  store ptr %26, ptr %11, align 8
  %27 = load ptr, ptr %7, align 8
  %28 = getelementptr inbounds %"struct.std::__1::pair.62", ptr %9, i32 0, i32 1
  %29 = load ptr, ptr %28, align 8
  %30 = call ptr @_ZNSt3__113__rewrap_iterB8ue170006IPmS1_NS_18__unwrap_iter_implIS1_Lb1EEEEET_S4_T0_(ptr noundef %27, ptr noundef %29) #12
  store ptr %30, ptr %12, align 8
  %31 = call [2 x i64] @_ZNSt3__19make_pairB8ue170006IPKmPmEENS_4pairINS_18__unwrap_ref_decayIT_E4typeENS5_IT0_E4typeEEEOS6_OS9_(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(8) %12)
  store [2 x i64] %31, ptr %4, align 8
  %32 = load [2 x i64], ptr %4, align 8
  ret [2 x i64] %32
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden [2 x i64] @_ZNSt3__114__unwrap_rangeB8ue170006IPKmS2_EENS_4pairIT0_S4_EET_S6_(ptr noundef %0, ptr noundef %1) #1 {
  %3 = alloca %"struct.std::__1::pair.63", align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  %8 = load ptr, ptr %4, align 8
  %9 = call ptr @_ZNSt3__113__unwrap_iterB8ue170006IPKmNS_18__unwrap_iter_implIS2_Lb1EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEES6_(ptr noundef %8) #12
  store ptr %9, ptr %6, align 8
  %10 = load ptr, ptr %5, align 8
  %11 = call ptr @_ZNSt3__113__unwrap_iterB8ue170006IPKmNS_18__unwrap_iter_implIS2_Lb1EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEES6_(ptr noundef %10) #12
  store ptr %11, ptr %7, align 8
  %12 = call [2 x i64] @_ZNSt3__19make_pairB8ue170006IPKmS2_EENS_4pairINS_18__unwrap_ref_decayIT_E4typeENS4_IT0_E4typeEEEOS5_OS8_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %7)
  store [2 x i64] %12, ptr %3, align 8
  %13 = load [2 x i64], ptr %3, align 8
  ret [2 x i64] %13
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden [2 x i64] @_ZNKSt3__114__copy_trivialclB8ue170006IKmmLi0EEENS_4pairIPT_PT0_EES5_S5_S7_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #1 align 2 {
  %5 = alloca %"struct.std::__1::pair.62", align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  store ptr %0, ptr %6, align 8
  store ptr %1, ptr %7, align 8
  store ptr %2, ptr %8, align 8
  store ptr %3, ptr %9, align 8
  %10 = load ptr, ptr %6, align 8
  %11 = load ptr, ptr %7, align 8
  %12 = load ptr, ptr %8, align 8
  %13 = load ptr, ptr %9, align 8
  %14 = call [2 x i64] @_ZNSt3__119__copy_trivial_implB8ue170006IKmmEENS_4pairIPT_PT0_EES4_S4_S6_(ptr noundef %11, ptr noundef %12, ptr noundef %13)
  store [2 x i64] %14, ptr %5, align 8
  %15 = load [2 x i64], ptr %5, align 8
  ret [2 x i64] %15
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden ptr @_ZNSt3__113__unwrap_iterB8ue170006IPmNS_18__unwrap_iter_implIS1_Lb1EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEES5_(ptr noundef %0) #5 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = call ptr @_ZNSt3__118__unwrap_iter_implIPmLb1EE8__unwrapB8ue170006ES1_(ptr noundef %3) #12
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden [2 x i64] @_ZNSt3__19make_pairB8ue170006IPKmPmEENS_4pairINS_18__unwrap_ref_decayIT_E4typeENS5_IT0_E4typeEEEOS6_OS9_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #5 {
  %3 = alloca %"struct.std::__1::pair.62", align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  %6 = load ptr, ptr %4, align 8
  %7 = load ptr, ptr %5, align 8
  %8 = call ptr @_ZNSt3__14pairIPKmPmEC1B8ue170006IS2_S3_LPv0EEEOT_OT0_(ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %7) #12
  %9 = load [2 x i64], ptr %3, align 8
  ret [2 x i64] %9
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden ptr @_ZNSt3__114__rewrap_rangeB8ue170006IPKmS2_EET_S3_T0_(ptr noundef %0, ptr noundef %1) #5 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = load ptr, ptr %4, align 8
  %7 = call ptr @_ZNSt3__113__rewrap_iterB8ue170006IPKmS2_NS_18__unwrap_iter_implIS2_Lb1EEEEET_S5_T0_(ptr noundef %5, ptr noundef %6) #12
  ret ptr %7
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden ptr @_ZNSt3__113__rewrap_iterB8ue170006IPmS1_NS_18__unwrap_iter_implIS1_Lb1EEEEET_S4_T0_(ptr noundef %0, ptr noundef %1) #5 personality ptr @__gxx_personality_v0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = load ptr, ptr %4, align 8
  %7 = invoke ptr @_ZNSt3__118__unwrap_iter_implIPmLb1EE8__rewrapB8ue170006ES1_S1_(ptr noundef %5, ptr noundef %6)
          to label %8 unwind label %9

8:                                                ; preds = %2
  ret ptr %7

9:                                                ; preds = %2
  %10 = landingpad { ptr, i32 }
          catch ptr null
  %11 = extractvalue { ptr, i32 } %10, 0
  call void @__clang_call_terminate(ptr %11) #14
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden [2 x i64] @_ZNSt3__19make_pairB8ue170006IPKmS2_EENS_4pairINS_18__unwrap_ref_decayIT_E4typeENS4_IT0_E4typeEEEOS5_OS8_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #5 {
  %3 = alloca %"struct.std::__1::pair.63", align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  %6 = load ptr, ptr %4, align 8
  %7 = load ptr, ptr %5, align 8
  %8 = call ptr @_ZNSt3__14pairIPKmS2_EC1B8ue170006IS2_S2_LPv0EEEOT_OT0_(ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %7) #12
  %9 = load [2 x i64], ptr %3, align 8
  ret [2 x i64] %9
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden ptr @_ZNSt3__113__unwrap_iterB8ue170006IPKmNS_18__unwrap_iter_implIS2_Lb1EEELi0EEEDTclsrT0_8__unwrapclsr3stdE7declvalIT_EEEES6_(ptr noundef %0) #5 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = call ptr @_ZNSt3__118__unwrap_iter_implIPKmLb1EE8__unwrapB8ue170006ES2_(ptr noundef %3) #12
  ret ptr %4
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr ptr @_ZNSt3__14pairIPKmS2_EC1B8ue170006IS2_S2_LPv0EEEOT_OT0_(ptr noundef returned %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #0 align 2 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  %7 = load ptr, ptr %4, align 8
  %8 = load ptr, ptr %5, align 8
  %9 = load ptr, ptr %6, align 8
  %10 = call ptr @_ZNSt3__14pairIPKmS2_EC2B8ue170006IS2_S2_LPv0EEEOT_OT0_(ptr noundef %7, ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %9) #12
  ret ptr %7
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr ptr @_ZNSt3__14pairIPKmS2_EC2B8ue170006IS2_S2_LPv0EEEOT_OT0_(ptr noundef returned %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #0 align 2 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  %7 = load ptr, ptr %4, align 8
  %8 = getelementptr inbounds %"struct.std::__1::pair.63", ptr %7, i32 0, i32 0
  %9 = load ptr, ptr %5, align 8
  %10 = load ptr, ptr %9, align 8
  store ptr %10, ptr %8, align 8
  %11 = getelementptr inbounds %"struct.std::__1::pair.63", ptr %7, i32 0, i32 1
  %12 = load ptr, ptr %6, align 8
  %13 = load ptr, ptr %12, align 8
  store ptr %13, ptr %11, align 8
  ret ptr %7
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden ptr @_ZNSt3__118__unwrap_iter_implIPKmLb1EE8__unwrapB8ue170006ES2_(ptr noundef %0) #5 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = call ptr @_ZNSt3__112__to_addressB8ue170006IKmEEPT_S3_(ptr noundef %3) #12
  ret ptr %4
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden [2 x i64] @_ZNSt3__119__copy_trivial_implB8ue170006IKmmEENS_4pairIPT_PT0_EES4_S4_S6_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #1 {
  %4 = alloca %"struct.std::__1::pair.62", align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i64, align 8
  %9 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  store ptr %2, ptr %7, align 8
  %10 = load ptr, ptr %6, align 8
  %11 = load ptr, ptr %5, align 8
  %12 = ptrtoint ptr %10 to i64
  %13 = ptrtoint ptr %11 to i64
  %14 = sub i64 %12, %13
  %15 = sdiv exact i64 %14, 8
  store i64 %15, ptr %8, align 8
  %16 = load ptr, ptr %7, align 8
  %17 = load ptr, ptr %5, align 8
  %18 = load i64, ptr %8, align 8
  %19 = call ptr @_ZNSt3__119__constexpr_memmoveB8ue170006ImKmLi0EEEPT_S3_PT0_NS_15__element_countE(ptr noundef %16, ptr noundef %17, i64 noundef %18)
  %20 = load ptr, ptr %7, align 8
  %21 = load i64, ptr %8, align 8
  %22 = getelementptr inbounds i64, ptr %20, i64 %21
  store ptr %22, ptr %9, align 8
  %23 = call [2 x i64] @_ZNSt3__19make_pairB8ue170006IRPKmPmEENS_4pairINS_18__unwrap_ref_decayIT_E4typeENS6_IT0_E4typeEEEOS7_OSA_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %9)
  store [2 x i64] %23, ptr %4, align 8
  %24 = load [2 x i64], ptr %4, align 8
  ret [2 x i64] %24
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden ptr @_ZNSt3__119__constexpr_memmoveB8ue170006ImKmLi0EEEPT_S3_PT0_NS_15__element_countE(ptr noundef %0, ptr noundef %1, i64 noundef %2) #5 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store i64 %2, ptr %6, align 8
  %8 = load i64, ptr %6, align 8
  store i64 %8, ptr %7, align 8
  %9 = load i64, ptr %7, align 8
  %10 = icmp ugt i64 %9, 0
  br i1 %10, label %11, label %18

11:                                               ; preds = %3
  %12 = load ptr, ptr %4, align 8
  %13 = load ptr, ptr %5, align 8
  %14 = load i64, ptr %7, align 8
  %15 = sub i64 %14, 1
  %16 = mul i64 %15, 8
  %17 = add i64 %16, 8
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %12, ptr align 8 %13, i64 %17, i1 false)
  br label %18

18:                                               ; preds = %11, %3
  %19 = load ptr, ptr %4, align 8
  ret ptr %19
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden [2 x i64] @_ZNSt3__19make_pairB8ue170006IRPKmPmEENS_4pairINS_18__unwrap_ref_decayIT_E4typeENS6_IT0_E4typeEEEOS7_OSA_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #5 {
  %3 = alloca %"struct.std::__1::pair.62", align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  %6 = load ptr, ptr %4, align 8
  %7 = load ptr, ptr %5, align 8
  %8 = call ptr @_ZNSt3__14pairIPKmPmEC1B8ue170006IRS2_S3_LPv0EEEOT_OT0_(ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %7) #12
  %9 = load [2 x i64], ptr %3, align 8
  ret [2 x i64] %9
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr ptr @_ZNSt3__14pairIPKmPmEC1B8ue170006IRS2_S3_LPv0EEEOT_OT0_(ptr noundef returned %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #0 align 2 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  %7 = load ptr, ptr %4, align 8
  %8 = load ptr, ptr %5, align 8
  %9 = load ptr, ptr %6, align 8
  %10 = call ptr @_ZNSt3__14pairIPKmPmEC2B8ue170006IRS2_S3_LPv0EEEOT_OT0_(ptr noundef %7, ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %9) #12
  ret ptr %7
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr ptr @_ZNSt3__14pairIPKmPmEC2B8ue170006IRS2_S3_LPv0EEEOT_OT0_(ptr noundef returned %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #0 align 2 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  %7 = load ptr, ptr %4, align 8
  %8 = getelementptr inbounds %"struct.std::__1::pair.62", ptr %7, i32 0, i32 0
  %9 = load ptr, ptr %5, align 8
  %10 = load ptr, ptr %9, align 8
  store ptr %10, ptr %8, align 8
  %11 = getelementptr inbounds %"struct.std::__1::pair.62", ptr %7, i32 0, i32 1
  %12 = load ptr, ptr %6, align 8
  %13 = load ptr, ptr %12, align 8
  store ptr %13, ptr %11, align 8
  ret ptr %7
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden ptr @_ZNSt3__118__unwrap_iter_implIPmLb1EE8__unwrapB8ue170006ES1_(ptr noundef %0) #5 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = call ptr @_ZNSt3__112__to_addressB8ue170006ImEEPT_S2_(ptr noundef %3) #12
  ret ptr %4
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr ptr @_ZNSt3__14pairIPKmPmEC1B8ue170006IS2_S3_LPv0EEEOT_OT0_(ptr noundef returned %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #0 align 2 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  %7 = load ptr, ptr %4, align 8
  %8 = load ptr, ptr %5, align 8
  %9 = load ptr, ptr %6, align 8
  %10 = call ptr @_ZNSt3__14pairIPKmPmEC2B8ue170006IS2_S3_LPv0EEEOT_OT0_(ptr noundef %7, ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %9) #12
  ret ptr %7
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr ptr @_ZNSt3__14pairIPKmPmEC2B8ue170006IS2_S3_LPv0EEEOT_OT0_(ptr noundef returned %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #0 align 2 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  %7 = load ptr, ptr %4, align 8
  %8 = getelementptr inbounds %"struct.std::__1::pair.62", ptr %7, i32 0, i32 0
  %9 = load ptr, ptr %5, align 8
  %10 = load ptr, ptr %9, align 8
  store ptr %10, ptr %8, align 8
  %11 = getelementptr inbounds %"struct.std::__1::pair.62", ptr %7, i32 0, i32 1
  %12 = load ptr, ptr %6, align 8
  %13 = load ptr, ptr %12, align 8
  store ptr %13, ptr %11, align 8
  ret ptr %7
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden ptr @_ZNSt3__113__rewrap_iterB8ue170006IPKmS2_NS_18__unwrap_iter_implIS2_Lb1EEEEET_S5_T0_(ptr noundef %0, ptr noundef %1) #5 personality ptr @__gxx_personality_v0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = load ptr, ptr %4, align 8
  %7 = invoke ptr @_ZNSt3__118__unwrap_iter_implIPKmLb1EE8__rewrapB8ue170006ES2_S2_(ptr noundef %5, ptr noundef %6)
          to label %8 unwind label %9

8:                                                ; preds = %2
  ret ptr %7

9:                                                ; preds = %2
  %10 = landingpad { ptr, i32 }
          catch ptr null
  %11 = extractvalue { ptr, i32 } %10, 0
  call void @__clang_call_terminate(ptr %11) #14
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden ptr @_ZNSt3__118__unwrap_iter_implIPKmLb1EE8__rewrapB8ue170006ES2_S2_(ptr noundef %0, ptr noundef %1) #5 align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = load ptr, ptr %4, align 8
  %7 = load ptr, ptr %3, align 8
  %8 = call ptr @_ZNSt3__112__to_addressB8ue170006IKmEEPT_S3_(ptr noundef %7) #12
  %9 = ptrtoint ptr %6 to i64
  %10 = ptrtoint ptr %8 to i64
  %11 = sub i64 %9, %10
  %12 = sdiv exact i64 %11, 8
  %13 = getelementptr inbounds i64, ptr %5, i64 %12
  ret ptr %13
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden ptr @_ZNSt3__118__unwrap_iter_implIPmLb1EE8__rewrapB8ue170006ES1_S1_(ptr noundef %0, ptr noundef %1) #5 align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = load ptr, ptr %4, align 8
  %7 = load ptr, ptr %3, align 8
  %8 = call ptr @_ZNSt3__112__to_addressB8ue170006ImEEPT_S2_(ptr noundef %7) #12
  %9 = ptrtoint ptr %6 to i64
  %10 = ptrtoint ptr %8 to i64
  %11 = sub i64 %9, %10
  %12 = sdiv exact i64 %11, 8
  %13 = getelementptr inbounds i64, ptr %5, i64 %12
  ret ptr %13
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNSt3__114__copy_alignedB8ue170006INS_6vectorIbNS_9allocatorIbEEEELb1EEENS_14__bit_iteratorIT_Lb0EXLi0EEEENS5_IS6_XT0_EXLi0EEEES8_S7_(ptr noalias sret(%"class.std::__1::__bit_iterator") align 8 %0, [2 x i64] %1, [2 x i64] %2, ptr noundef %3) #1 {
  %5 = alloca ptr, align 8
  %6 = alloca %"class.std::__1::__bit_iterator.32", align 8
  %7 = alloca %"class.std::__1::__bit_iterator.32", align 8
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  store ptr %0, ptr %5, align 8
  store [2 x i64] %1, ptr %6, align 8
  store [2 x i64] %2, ptr %7, align 8
  store ptr %3, ptr %8, align 8
  store i32 64, ptr %9, align 4
  %19 = call i64 @_ZNSt3__1miB8ue170006ERKNS_14__bit_iteratorINS_6vectorIbNS_9allocatorIbEEEELb1ELm0EEES7_(ptr noundef nonnull align 8 dereferenceable(12) %7, ptr noundef nonnull align 8 dereferenceable(12) %6)
  store i64 %19, ptr %10, align 8
  %20 = load i64, ptr %10, align 8
  %21 = icmp sgt i64 %20, 0
  br i1 %21, label %22, label %132

22:                                               ; preds = %4
  %23 = getelementptr inbounds %"class.std::__1::__bit_iterator.32", ptr %6, i32 0, i32 1
  %24 = load i32, ptr %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %83

26:                                               ; preds = %22
  %27 = getelementptr inbounds %"class.std::__1::__bit_iterator.32", ptr %6, i32 0, i32 1
  %28 = load i32, ptr %27, align 8
  %29 = sub i32 64, %28
  store i32 %29, ptr %11, align 4
  %30 = load i32, ptr %11, align 4
  %31 = zext i32 %30 to i64
  store i64 %31, ptr %13, align 8
  %32 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__13minB8ue170006IlEERKT_S3_S3_(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull align 8 dereferenceable(8) %10)
  %33 = load i64, ptr %32, align 8
  store i64 %33, ptr %12, align 8
  %34 = load i64, ptr %12, align 8
  %35 = load i64, ptr %10, align 8
  %36 = sub nsw i64 %35, %34
  store i64 %36, ptr %10, align 8
  %37 = getelementptr inbounds %"class.std::__1::__bit_iterator.32", ptr %6, i32 0, i32 1
  %38 = load i32, ptr %37, align 8
  %39 = zext i32 %38 to i64
  %40 = shl i64 -1, %39
  %41 = load i32, ptr %11, align 4
  %42 = zext i32 %41 to i64
  %43 = load i64, ptr %12, align 8
  %44 = sub nsw i64 %42, %43
  %45 = lshr i64 -1, %44
  %46 = and i64 %40, %45
  store i64 %46, ptr %14, align 8
  %47 = getelementptr inbounds %"class.std::__1::__bit_iterator.32", ptr %6, i32 0, i32 0
  %48 = load ptr, ptr %47, align 8
  %49 = load i64, ptr %48, align 8
  %50 = load i64, ptr %14, align 8
  %51 = and i64 %49, %50
  store i64 %51, ptr %15, align 8
  %52 = load i64, ptr %14, align 8
  %53 = xor i64 %52, -1
  %54 = getelementptr inbounds %"class.std::__1::__bit_iterator", ptr %3, i32 0, i32 0
  %55 = load ptr, ptr %54, align 8
  %56 = load i64, ptr %55, align 8
  %57 = and i64 %56, %53
  store i64 %57, ptr %55, align 8
  %58 = load i64, ptr %15, align 8
  %59 = getelementptr inbounds %"class.std::__1::__bit_iterator", ptr %3, i32 0, i32 0
  %60 = load ptr, ptr %59, align 8
  %61 = load i64, ptr %60, align 8
  %62 = or i64 %61, %58
  store i64 %62, ptr %60, align 8
  %63 = load i64, ptr %12, align 8
  %64 = getelementptr inbounds %"class.std::__1::__bit_iterator", ptr %3, i32 0, i32 1
  %65 = load i32, ptr %64, align 8
  %66 = zext i32 %65 to i64
  %67 = add nsw i64 %63, %66
  %68 = sdiv i64 %67, 64
  %69 = getelementptr inbounds %"class.std::__1::__bit_iterator", ptr %3, i32 0, i32 0
  %70 = load ptr, ptr %69, align 8
  %71 = getelementptr inbounds i64, ptr %70, i64 %68
  store ptr %71, ptr %69, align 8
  %72 = load i64, ptr %12, align 8
  %73 = getelementptr inbounds %"class.std::__1::__bit_iterator", ptr %3, i32 0, i32 1
  %74 = load i32, ptr %73, align 8
  %75 = zext i32 %74 to i64
  %76 = add nsw i64 %72, %75
  %77 = srem i64 %76, 64
  %78 = trunc i64 %77 to i32
  %79 = getelementptr inbounds %"class.std::__1::__bit_iterator", ptr %3, i32 0, i32 1
  store i32 %78, ptr %79, align 8
  %80 = getelementptr inbounds %"class.std::__1::__bit_iterator.32", ptr %6, i32 0, i32 0
  %81 = load ptr, ptr %80, align 8
  %82 = getelementptr inbounds i64, ptr %81, i32 1
  store ptr %82, ptr %80, align 8
  br label %83

83:                                               ; preds = %26, %22
  %84 = load i64, ptr %10, align 8
  %85 = sdiv i64 %84, 64
  store i64 %85, ptr %16, align 8
  %86 = getelementptr inbounds %"class.std::__1::__bit_iterator.32", ptr %6, i32 0, i32 0
  %87 = load ptr, ptr %86, align 8
  %88 = call ptr @_ZNSt3__112__to_addressB8ue170006IKmEEPT_S3_(ptr noundef %87) #12
  %89 = load i64, ptr %16, align 8
  %90 = getelementptr inbounds %"class.std::__1::__bit_iterator", ptr %3, i32 0, i32 0
  %91 = load ptr, ptr %90, align 8
  %92 = call ptr @_ZNSt3__112__to_addressB8ue170006ImEEPT_S2_(ptr noundef %91) #12
  %93 = call ptr @_ZNSt3__16copy_nB8ue170006IPKmmPmEENS_9enable_ifIXsr37__has_random_access_iterator_categoryIT_EE5valueET1_E4typeES5_T0_S6_(ptr noundef %88, i64 noundef %89, ptr noundef %92)
  %94 = load i64, ptr %16, align 8
  %95 = mul i64 %94, 64
  %96 = load i64, ptr %10, align 8
  %97 = sub i64 %96, %95
  store i64 %97, ptr %10, align 8
  %98 = load i64, ptr %16, align 8
  %99 = getelementptr inbounds %"class.std::__1::__bit_iterator", ptr %3, i32 0, i32 0
  %100 = load ptr, ptr %99, align 8
  %101 = getelementptr inbounds i64, ptr %100, i64 %98
  store ptr %101, ptr %99, align 8
  %102 = load i64, ptr %10, align 8
  %103 = icmp sgt i64 %102, 0
  br i1 %103, label %104, label %131

104:                                              ; preds = %83
  %105 = load i64, ptr %16, align 8
  %106 = getelementptr inbounds %"class.std::__1::__bit_iterator.32", ptr %6, i32 0, i32 0
  %107 = load ptr, ptr %106, align 8
  %108 = getelementptr inbounds i64, ptr %107, i64 %105
  store ptr %108, ptr %106, align 8
  %109 = load i64, ptr %10, align 8
  %110 = sub nsw i64 64, %109
  %111 = lshr i64 -1, %110
  store i64 %111, ptr %17, align 8
  %112 = getelementptr inbounds %"class.std::__1::__bit_iterator.32", ptr %6, i32 0, i32 0
  %113 = load ptr, ptr %112, align 8
  %114 = load i64, ptr %113, align 8
  %115 = load i64, ptr %17, align 8
  %116 = and i64 %114, %115
  store i64 %116, ptr %18, align 8
  %117 = load i64, ptr %17, align 8
  %118 = xor i64 %117, -1
  %119 = getelementptr inbounds %"class.std::__1::__bit_iterator", ptr %3, i32 0, i32 0
  %120 = load ptr, ptr %119, align 8
  %121 = load i64, ptr %120, align 8
  %122 = and i64 %121, %118
  store i64 %122, ptr %120, align 8
  %123 = load i64, ptr %18, align 8
  %124 = getelementptr inbounds %"class.std::__1::__bit_iterator", ptr %3, i32 0, i32 0
  %125 = load ptr, ptr %124, align 8
  %126 = load i64, ptr %125, align 8
  %127 = or i64 %126, %123
  store i64 %127, ptr %125, align 8
  %128 = load i64, ptr %10, align 8
  %129 = trunc i64 %128 to i32
  %130 = getelementptr inbounds %"class.std::__1::__bit_iterator", ptr %3, i32 0, i32 1
  store i32 %129, ptr %130, align 8
  br label %131

131:                                              ; preds = %104, %83
  br label %132

132:                                              ; preds = %131, %4
  %133 = call ptr @_ZNSt3__114__bit_iteratorINS_6vectorIbNS_9allocatorIbEEEELb0ELm0EEC1B8ue170006ERKS5_(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(12) %3) #12
  ret void
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNSt3__116__copy_unalignedB8ue170006INS_6vectorIbNS_9allocatorIbEEEELb1EEENS_14__bit_iteratorIT_Lb0EXLi0EEEENS5_IS6_XT0_EXLi0EEEES8_S7_(ptr noalias sret(%"class.std::__1::__bit_iterator") align 8 %0, [2 x i64] %1, [2 x i64] %2, ptr noundef %3) #1 {
  %5 = alloca ptr, align 8
  %6 = alloca %"class.std::__1::__bit_iterator.32", align 8
  %7 = alloca %"class.std::__1::__bit_iterator.32", align 8
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  store ptr %0, ptr %5, align 8
  store [2 x i64] %1, ptr %6, align 8
  store [2 x i64] %2, ptr %7, align 8
  store ptr %3, ptr %8, align 8
  store i32 64, ptr %9, align 4
  %26 = call i64 @_ZNSt3__1miB8ue170006ERKNS_14__bit_iteratorINS_6vectorIbNS_9allocatorIbEEEELb1ELm0EEES7_(ptr noundef nonnull align 8 dereferenceable(12) %7, ptr noundef nonnull align 8 dereferenceable(12) %6)
  store i64 %26, ptr %10, align 8
  %27 = load i64, ptr %10, align 8
  %28 = icmp sgt i64 %27, 0
  br i1 %28, label %29, label %302

29:                                               ; preds = %4
  %30 = getelementptr inbounds %"class.std::__1::__bit_iterator.32", ptr %6, i32 0, i32 1
  %31 = load i32, ptr %30, align 8
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %165

33:                                               ; preds = %29
  %34 = getelementptr inbounds %"class.std::__1::__bit_iterator.32", ptr %6, i32 0, i32 1
  %35 = load i32, ptr %34, align 8
  %36 = sub i32 64, %35
  store i32 %36, ptr %11, align 4
  %37 = load i32, ptr %11, align 4
  %38 = zext i32 %37 to i64
  store i64 %38, ptr %13, align 8
  %39 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__13minB8ue170006IlEERKT_S3_S3_(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull align 8 dereferenceable(8) %10)
  %40 = load i64, ptr %39, align 8
  store i64 %40, ptr %12, align 8
  %41 = load i64, ptr %12, align 8
  %42 = load i64, ptr %10, align 8
  %43 = sub nsw i64 %42, %41
  store i64 %43, ptr %10, align 8
  %44 = getelementptr inbounds %"class.std::__1::__bit_iterator.32", ptr %6, i32 0, i32 1
  %45 = load i32, ptr %44, align 8
  %46 = zext i32 %45 to i64
  %47 = shl i64 -1, %46
  %48 = load i32, ptr %11, align 4
  %49 = zext i32 %48 to i64
  %50 = load i64, ptr %12, align 8
  %51 = sub nsw i64 %49, %50
  %52 = lshr i64 -1, %51
  %53 = and i64 %47, %52
  store i64 %53, ptr %14, align 8
  %54 = getelementptr inbounds %"class.std::__1::__bit_iterator.32", ptr %6, i32 0, i32 0
  %55 = load ptr, ptr %54, align 8
  %56 = load i64, ptr %55, align 8
  %57 = load i64, ptr %14, align 8
  %58 = and i64 %56, %57
  store i64 %58, ptr %15, align 8
  %59 = getelementptr inbounds %"class.std::__1::__bit_iterator", ptr %3, i32 0, i32 1
  %60 = load i32, ptr %59, align 8
  %61 = sub i32 64, %60
  store i32 %61, ptr %16, align 4
  %62 = load i64, ptr %12, align 8
  store i64 %62, ptr %18, align 8
  %63 = load i32, ptr %16, align 4
  %64 = zext i32 %63 to i64
  store i64 %64, ptr %19, align 8
  %65 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__13minB8ue170006ImEERKT_S3_S3_(ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef nonnull align 8 dereferenceable(8) %19)
  %66 = load i64, ptr %65, align 8
  store i64 %66, ptr %17, align 8
  %67 = getelementptr inbounds %"class.std::__1::__bit_iterator", ptr %3, i32 0, i32 1
  %68 = load i32, ptr %67, align 8
  %69 = zext i32 %68 to i64
  %70 = shl i64 -1, %69
  %71 = load i32, ptr %16, align 4
  %72 = zext i32 %71 to i64
  %73 = load i64, ptr %17, align 8
  %74 = sub i64 %72, %73
  %75 = lshr i64 -1, %74
  %76 = and i64 %70, %75
  store i64 %76, ptr %14, align 8
  %77 = load i64, ptr %14, align 8
  %78 = xor i64 %77, -1
  %79 = getelementptr inbounds %"class.std::__1::__bit_iterator", ptr %3, i32 0, i32 0
  %80 = load ptr, ptr %79, align 8
  %81 = load i64, ptr %80, align 8
  %82 = and i64 %81, %78
  store i64 %82, ptr %80, align 8
  %83 = getelementptr inbounds %"class.std::__1::__bit_iterator", ptr %3, i32 0, i32 1
  %84 = load i32, ptr %83, align 8
  %85 = getelementptr inbounds %"class.std::__1::__bit_iterator.32", ptr %6, i32 0, i32 1
  %86 = load i32, ptr %85, align 8
  %87 = icmp ugt i32 %84, %86
  br i1 %87, label %88, label %101

88:                                               ; preds = %33
  %89 = load i64, ptr %15, align 8
  %90 = getelementptr inbounds %"class.std::__1::__bit_iterator", ptr %3, i32 0, i32 1
  %91 = load i32, ptr %90, align 8
  %92 = getelementptr inbounds %"class.std::__1::__bit_iterator.32", ptr %6, i32 0, i32 1
  %93 = load i32, ptr %92, align 8
  %94 = sub i32 %91, %93
  %95 = zext i32 %94 to i64
  %96 = shl i64 %89, %95
  %97 = getelementptr inbounds %"class.std::__1::__bit_iterator", ptr %3, i32 0, i32 0
  %98 = load ptr, ptr %97, align 8
  %99 = load i64, ptr %98, align 8
  %100 = or i64 %99, %96
  store i64 %100, ptr %98, align 8
  br label %114

101:                                              ; preds = %33
  %102 = load i64, ptr %15, align 8
  %103 = getelementptr inbounds %"class.std::__1::__bit_iterator.32", ptr %6, i32 0, i32 1
  %104 = load i32, ptr %103, align 8
  %105 = getelementptr inbounds %"class.std::__1::__bit_iterator", ptr %3, i32 0, i32 1
  %106 = load i32, ptr %105, align 8
  %107 = sub i32 %104, %106
  %108 = zext i32 %107 to i64
  %109 = lshr i64 %102, %108
  %110 = getelementptr inbounds %"class.std::__1::__bit_iterator", ptr %3, i32 0, i32 0
  %111 = load ptr, ptr %110, align 8
  %112 = load i64, ptr %111, align 8
  %113 = or i64 %112, %109
  store i64 %113, ptr %111, align 8
  br label %114

114:                                              ; preds = %101, %88
  %115 = load i64, ptr %17, align 8
  %116 = getelementptr inbounds %"class.std::__1::__bit_iterator", ptr %3, i32 0, i32 1
  %117 = load i32, ptr %116, align 8
  %118 = zext i32 %117 to i64
  %119 = add i64 %115, %118
  %120 = udiv i64 %119, 64
  %121 = getelementptr inbounds %"class.std::__1::__bit_iterator", ptr %3, i32 0, i32 0
  %122 = load ptr, ptr %121, align 8
  %123 = getelementptr inbounds i64, ptr %122, i64 %120
  store ptr %123, ptr %121, align 8
  %124 = load i64, ptr %17, align 8
  %125 = getelementptr inbounds %"class.std::__1::__bit_iterator", ptr %3, i32 0, i32 1
  %126 = load i32, ptr %125, align 8
  %127 = zext i32 %126 to i64
  %128 = add i64 %124, %127
  %129 = urem i64 %128, 64
  %130 = trunc i64 %129 to i32
  %131 = getelementptr inbounds %"class.std::__1::__bit_iterator", ptr %3, i32 0, i32 1
  store i32 %130, ptr %131, align 8
  %132 = load i64, ptr %17, align 8
  %133 = load i64, ptr %12, align 8
  %134 = sub i64 %133, %132
  store i64 %134, ptr %12, align 8
  %135 = load i64, ptr %12, align 8
  %136 = icmp sgt i64 %135, 0
  br i1 %136, label %137, label %161

137:                                              ; preds = %114
  %138 = load i64, ptr %12, align 8
  %139 = sub nsw i64 64, %138
  %140 = lshr i64 -1, %139
  store i64 %140, ptr %14, align 8
  %141 = load i64, ptr %14, align 8
  %142 = xor i64 %141, -1
  %143 = getelementptr inbounds %"class.std::__1::__bit_iterator", ptr %3, i32 0, i32 0
  %144 = load ptr, ptr %143, align 8
  %145 = load i64, ptr %144, align 8
  %146 = and i64 %145, %142
  store i64 %146, ptr %144, align 8
  %147 = load i64, ptr %15, align 8
  %148 = getelementptr inbounds %"class.std::__1::__bit_iterator.32", ptr %6, i32 0, i32 1
  %149 = load i32, ptr %148, align 8
  %150 = zext i32 %149 to i64
  %151 = load i64, ptr %17, align 8
  %152 = add i64 %150, %151
  %153 = lshr i64 %147, %152
  %154 = getelementptr inbounds %"class.std::__1::__bit_iterator", ptr %3, i32 0, i32 0
  %155 = load ptr, ptr %154, align 8
  %156 = load i64, ptr %155, align 8
  %157 = or i64 %156, %153
  store i64 %157, ptr %155, align 8
  %158 = load i64, ptr %12, align 8
  %159 = trunc i64 %158 to i32
  %160 = getelementptr inbounds %"class.std::__1::__bit_iterator", ptr %3, i32 0, i32 1
  store i32 %159, ptr %160, align 8
  br label %161

161:                                              ; preds = %137, %114
  %162 = getelementptr inbounds %"class.std::__1::__bit_iterator.32", ptr %6, i32 0, i32 0
  %163 = load ptr, ptr %162, align 8
  %164 = getelementptr inbounds i64, ptr %163, i32 1
  store ptr %164, ptr %162, align 8
  br label %165

165:                                              ; preds = %161, %29
  %166 = getelementptr inbounds %"class.std::__1::__bit_iterator", ptr %3, i32 0, i32 1
  %167 = load i32, ptr %166, align 8
  %168 = sub i32 64, %167
  store i32 %168, ptr %20, align 4
  %169 = getelementptr inbounds %"class.std::__1::__bit_iterator", ptr %3, i32 0, i32 1
  %170 = load i32, ptr %169, align 8
  %171 = zext i32 %170 to i64
  %172 = shl i64 -1, %171
  store i64 %172, ptr %21, align 8
  br label %173

173:                                              ; preds = %211, %165
  %174 = load i64, ptr %10, align 8
  %175 = icmp sge i64 %174, 64
  br i1 %175, label %176, label %217

176:                                              ; preds = %173
  %177 = getelementptr inbounds %"class.std::__1::__bit_iterator.32", ptr %6, i32 0, i32 0
  %178 = load ptr, ptr %177, align 8
  %179 = load i64, ptr %178, align 8
  store i64 %179, ptr %22, align 8
  %180 = load i64, ptr %21, align 8
  %181 = xor i64 %180, -1
  %182 = getelementptr inbounds %"class.std::__1::__bit_iterator", ptr %3, i32 0, i32 0
  %183 = load ptr, ptr %182, align 8
  %184 = load i64, ptr %183, align 8
  %185 = and i64 %184, %181
  store i64 %185, ptr %183, align 8
  %186 = load i64, ptr %22, align 8
  %187 = getelementptr inbounds %"class.std::__1::__bit_iterator", ptr %3, i32 0, i32 1
  %188 = load i32, ptr %187, align 8
  %189 = zext i32 %188 to i64
  %190 = shl i64 %186, %189
  %191 = getelementptr inbounds %"class.std::__1::__bit_iterator", ptr %3, i32 0, i32 0
  %192 = load ptr, ptr %191, align 8
  %193 = load i64, ptr %192, align 8
  %194 = or i64 %193, %190
  store i64 %194, ptr %192, align 8
  %195 = getelementptr inbounds %"class.std::__1::__bit_iterator", ptr %3, i32 0, i32 0
  %196 = load ptr, ptr %195, align 8
  %197 = getelementptr inbounds i64, ptr %196, i32 1
  store ptr %197, ptr %195, align 8
  %198 = load i64, ptr %21, align 8
  %199 = getelementptr inbounds %"class.std::__1::__bit_iterator", ptr %3, i32 0, i32 0
  %200 = load ptr, ptr %199, align 8
  %201 = load i64, ptr %200, align 8
  %202 = and i64 %201, %198
  store i64 %202, ptr %200, align 8
  %203 = load i64, ptr %22, align 8
  %204 = load i32, ptr %20, align 4
  %205 = zext i32 %204 to i64
  %206 = lshr i64 %203, %205
  %207 = getelementptr inbounds %"class.std::__1::__bit_iterator", ptr %3, i32 0, i32 0
  %208 = load ptr, ptr %207, align 8
  %209 = load i64, ptr %208, align 8
  %210 = or i64 %209, %206
  store i64 %210, ptr %208, align 8
  br label %211

211:                                              ; preds = %176
  %212 = load i64, ptr %10, align 8
  %213 = sub nsw i64 %212, 64
  store i64 %213, ptr %10, align 8
  %214 = getelementptr inbounds %"class.std::__1::__bit_iterator.32", ptr %6, i32 0, i32 0
  %215 = load ptr, ptr %214, align 8
  %216 = getelementptr inbounds i64, ptr %215, i32 1
  store ptr %216, ptr %214, align 8
  br label %173, !llvm.loop !24

217:                                              ; preds = %173
  %218 = load i64, ptr %10, align 8
  %219 = icmp sgt i64 %218, 0
  br i1 %219, label %220, label %301

220:                                              ; preds = %217
  %221 = load i64, ptr %10, align 8
  %222 = sub nsw i64 64, %221
  %223 = lshr i64 -1, %222
  store i64 %223, ptr %21, align 8
  %224 = getelementptr inbounds %"class.std::__1::__bit_iterator.32", ptr %6, i32 0, i32 0
  %225 = load ptr, ptr %224, align 8
  %226 = load i64, ptr %225, align 8
  %227 = load i64, ptr %21, align 8
  %228 = and i64 %226, %227
  store i64 %228, ptr %23, align 8
  %229 = load i32, ptr %20, align 4
  %230 = zext i32 %229 to i64
  store i64 %230, ptr %25, align 8
  %231 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__13minB8ue170006IlEERKT_S3_S3_(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(8) %25)
  %232 = load i64, ptr %231, align 8
  store i64 %232, ptr %24, align 8
  %233 = getelementptr inbounds %"class.std::__1::__bit_iterator", ptr %3, i32 0, i32 1
  %234 = load i32, ptr %233, align 8
  %235 = zext i32 %234 to i64
  %236 = shl i64 -1, %235
  %237 = load i32, ptr %20, align 4
  %238 = zext i32 %237 to i64
  %239 = load i64, ptr %24, align 8
  %240 = sub i64 %238, %239
  %241 = lshr i64 -1, %240
  %242 = and i64 %236, %241
  store i64 %242, ptr %21, align 8
  %243 = load i64, ptr %21, align 8
  %244 = xor i64 %243, -1
  %245 = getelementptr inbounds %"class.std::__1::__bit_iterator", ptr %3, i32 0, i32 0
  %246 = load ptr, ptr %245, align 8
  %247 = load i64, ptr %246, align 8
  %248 = and i64 %247, %244
  store i64 %248, ptr %246, align 8
  %249 = load i64, ptr %23, align 8
  %250 = getelementptr inbounds %"class.std::__1::__bit_iterator", ptr %3, i32 0, i32 1
  %251 = load i32, ptr %250, align 8
  %252 = zext i32 %251 to i64
  %253 = shl i64 %249, %252
  %254 = getelementptr inbounds %"class.std::__1::__bit_iterator", ptr %3, i32 0, i32 0
  %255 = load ptr, ptr %254, align 8
  %256 = load i64, ptr %255, align 8
  %257 = or i64 %256, %253
  store i64 %257, ptr %255, align 8
  %258 = load i64, ptr %24, align 8
  %259 = getelementptr inbounds %"class.std::__1::__bit_iterator", ptr %3, i32 0, i32 1
  %260 = load i32, ptr %259, align 8
  %261 = zext i32 %260 to i64
  %262 = add i64 %258, %261
  %263 = udiv i64 %262, 64
  %264 = getelementptr inbounds %"class.std::__1::__bit_iterator", ptr %3, i32 0, i32 0
  %265 = load ptr, ptr %264, align 8
  %266 = getelementptr inbounds i64, ptr %265, i64 %263
  store ptr %266, ptr %264, align 8
  %267 = load i64, ptr %24, align 8
  %268 = getelementptr inbounds %"class.std::__1::__bit_iterator", ptr %3, i32 0, i32 1
  %269 = load i32, ptr %268, align 8
  %270 = zext i32 %269 to i64
  %271 = add i64 %267, %270
  %272 = urem i64 %271, 64
  %273 = trunc i64 %272 to i32
  %274 = getelementptr inbounds %"class.std::__1::__bit_iterator", ptr %3, i32 0, i32 1
  store i32 %273, ptr %274, align 8
  %275 = load i64, ptr %24, align 8
  %276 = load i64, ptr %10, align 8
  %277 = sub i64 %276, %275
  store i64 %277, ptr %10, align 8
  %278 = load i64, ptr %10, align 8
  %279 = icmp sgt i64 %278, 0
  br i1 %279, label %280, label %300

280:                                              ; preds = %220
  %281 = load i64, ptr %10, align 8
  %282 = sub nsw i64 64, %281
  %283 = lshr i64 -1, %282
  store i64 %283, ptr %21, align 8
  %284 = load i64, ptr %21, align 8
  %285 = xor i64 %284, -1
  %286 = getelementptr inbounds %"class.std::__1::__bit_iterator", ptr %3, i32 0, i32 0
  %287 = load ptr, ptr %286, align 8
  %288 = load i64, ptr %287, align 8
  %289 = and i64 %288, %285
  store i64 %289, ptr %287, align 8
  %290 = load i64, ptr %23, align 8
  %291 = load i64, ptr %24, align 8
  %292 = lshr i64 %290, %291
  %293 = getelementptr inbounds %"class.std::__1::__bit_iterator", ptr %3, i32 0, i32 0
  %294 = load ptr, ptr %293, align 8
  %295 = load i64, ptr %294, align 8
  %296 = or i64 %295, %292
  store i64 %296, ptr %294, align 8
  %297 = load i64, ptr %10, align 8
  %298 = trunc i64 %297 to i32
  %299 = getelementptr inbounds %"class.std::__1::__bit_iterator", ptr %3, i32 0, i32 1
  store i32 %298, ptr %299, align 8
  br label %300

300:                                              ; preds = %280, %220
  br label %301

301:                                              ; preds = %300, %217
  br label %302

302:                                              ; preds = %301, %4
  %303 = call ptr @_ZNSt3__114__bit_iteratorINS_6vectorIbNS_9allocatorIbEEEELb0ELm0EEC1B8ue170006ERKS5_(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(12) %3) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden [2 x i64] @_ZNKSt3__16vectorIbNS_9allocatorIbEEE11__make_iterB8ue170006Em(ptr noundef %0, i64 noundef %1) #5 align 2 {
  %3 = alloca %"class.std::__1::__bit_iterator.32", align 8
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
  store i64 %1, ptr %5, align 8
  %6 = load ptr, ptr %4, align 8
  %7 = getelementptr inbounds %"class.std::__1::vector.25", ptr %6, i32 0, i32 0
  %8 = load ptr, ptr %7, align 8
  %9 = load i64, ptr %5, align 8
  %10 = udiv i64 %9, 64
  %11 = getelementptr inbounds i64, ptr %8, i64 %10
  %12 = load i64, ptr %5, align 8
  %13 = urem i64 %12, 64
  %14 = trunc i64 %13 to i32
  %15 = call ptr @_ZNSt3__114__bit_iteratorINS_6vectorIbNS_9allocatorIbEEEELb1ELm0EEC1B8ue170006EPKmj(ptr noundef %3, ptr noundef %11, i32 noundef %14) #12
  %16 = load [2 x i64], ptr %3, align 8
  ret [2 x i64] %16
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden ptr @_ZNSt3__114__bit_iteratorINS_6vectorIbNS_9allocatorIbEEEELb1ELm0EEC1B8ue170006EPKmj(ptr noundef returned %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 align 2 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store i32 %2, ptr %6, align 4
  %7 = load ptr, ptr %4, align 8
  %8 = load ptr, ptr %5, align 8
  %9 = load i32, ptr %6, align 4
  %10 = call ptr @_ZNSt3__114__bit_iteratorINS_6vectorIbNS_9allocatorIbEEEELb1ELm0EEC2B8ue170006EPKmj(ptr noundef %7, ptr noundef %8, i32 noundef %9) #12
  ret ptr %7
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden ptr @_ZNSt3__114__bit_iteratorINS_6vectorIbNS_9allocatorIbEEEELb1ELm0EEC2B8ue170006EPKmj(ptr noundef returned %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 align 2 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store i32 %2, ptr %6, align 4
  %7 = load ptr, ptr %4, align 8
  %8 = getelementptr inbounds %"class.std::__1::__bit_iterator.32", ptr %7, i32 0, i32 0
  %9 = load ptr, ptr %5, align 8
  store ptr %9, ptr %8, align 8
  %10 = getelementptr inbounds %"class.std::__1::__bit_iterator.32", ptr %7, i32 0, i32 1
  %11 = load i32, ptr %6, align 4
  store i32 %11, ptr %10, align 8
  ret ptr %7
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden ptr @_ZNSt3__114__bit_iteratorINS_6vectorIbNS_9allocatorIbEEEELb1ELm0EEC2B8ue170006ERKNS0_IS4_Lb0ELm0EEE(ptr noundef returned %0, ptr noundef nonnull align 8 dereferenceable(12) %1) unnamed_addr #0 align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = getelementptr inbounds %"class.std::__1::__bit_iterator.32", ptr %5, i32 0, i32 0
  %7 = load ptr, ptr %4, align 8
  %8 = getelementptr inbounds %"class.std::__1::__bit_iterator", ptr %7, i32 0, i32 0
  %9 = load ptr, ptr %8, align 8
  store ptr %9, ptr %6, align 8
  %10 = getelementptr inbounds %"class.std::__1::__bit_iterator.32", ptr %5, i32 0, i32 1
  %11 = load ptr, ptr %4, align 8
  %12 = getelementptr inbounds %"class.std::__1::__bit_iterator", ptr %11, i32 0, i32 1
  %13 = load i32, ptr %12, align 8
  store i32 %13, ptr %10, align 8
  ret ptr %5
}

; Function Attrs: mustprogress noinline noreturn optnone ssp uwtable(sync)
define linkonce_odr hidden void @_ZNKSt3__16vectorIbNS_9allocatorIbEEE20__throw_out_of_rangeB8ue170006Ev(ptr noundef %0) #8 align 2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  call void @_ZNSt3__120__throw_out_of_rangeB8ue170006EPKc(ptr noundef @.str.2) #13
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden [2 x i64] @_ZNSt3__16vectorIbNS_9allocatorIbEEEixB8ue170006Em(ptr noundef %0, i64 noundef %1) #5 align 2 {
  %3 = alloca %"class.std::__1::__bit_reference", align 8
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
  store i64 %1, ptr %5, align 8
  %6 = load ptr, ptr %4, align 8
  %7 = load i64, ptr %5, align 8
  %8 = call [2 x i64] @_ZNSt3__16vectorIbNS_9allocatorIbEEE10__make_refB8ue170006Em(ptr noundef %6, i64 noundef %7) #12
  store [2 x i64] %8, ptr %3, align 8
  %9 = load [2 x i64], ptr %3, align 8
  ret [2 x i64] %9
}

; Function Attrs: mustprogress noinline optnone ssp uwtable(sync)
define linkonce_odr hidden [2 x i64] @_ZNKSt3__114__bit_iteratorINS_6vectorIbNS_9allocatorIbEEEELb1ELm0EEplB8ue170006El(ptr noundef %0, i64 noundef %1) #1 align 2 {
  %3 = alloca %"class.std::__1::__bit_iterator.32", align 8
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
  store i64 %1, ptr %5, align 8
  %6 = load ptr, ptr %4, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %3, ptr align 8 %6, i64 16, i1 false)
  %7 = load i64, ptr %5, align 8
  %8 = call noundef nonnull align 8 dereferenceable(12) ptr @_ZNSt3__114__bit_iteratorINS_6vectorIbNS_9allocatorIbEEEELb1ELm0EEpLB8ue170006El(ptr noundef %3, i64 noundef %7)
  %9 = load [2 x i64], ptr %3, align 8
  ret [2 x i64] %9
}

; Function Attrs: mustprogress noinline nounwind optnone ssp uwtable(sync)
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(12) ptr @_ZNSt3__114__bit_iteratorINS_6vectorIbNS_9allocatorIbEEEELb1ELm0EEpLB8ue170006El(ptr noundef %0, i64 noundef %1) #5 align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  store ptr %0, ptr %3, align 8
  store i64 %1, ptr %4, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = load i64, ptr %4, align 8
  %7 = icmp sge i64 %6, 0
  br i1 %7, label %8, label %18

8:                                                ; preds = %2
  %9 = load i64, ptr %4, align 8
  %10 = getelementptr inbounds %"class.std::__1::__bit_iterator.32", ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 8
  %12 = zext i32 %11 to i64
  %13 = add nsw i64 %9, %12
  %14 = sdiv i64 %13, 64
  %15 = getelementptr inbounds %"class.std::__1::__bit_iterator.32", ptr %5, i32 0, i32 0
  %16 = load ptr, ptr %15, align 8
  %17 = getelementptr inbounds i64, ptr %16, i64 %14
  store ptr %17, ptr %15, align 8
  br label %30

18:                                               ; preds = %2
  %19 = load i64, ptr %4, align 8
  %20 = sub nsw i64 %19, 64
  %21 = getelementptr inbounds %"class.std::__1::__bit_iterator.32", ptr %5, i32 0, i32 1
  %22 = load i32, ptr %21, align 8
  %23 = zext i32 %22 to i64
  %24 = add nsw i64 %20, %23
  %25 = add nsw i64 %24, 1
  %26 = sdiv i64 %25, 64
  %27 = getelementptr inbounds %"class.std::__1::__bit_iterator.32", ptr %5, i32 0, i32 0
  %28 = load ptr, ptr %27, align 8
  %29 = getelementptr inbounds i64, ptr %28, i64 %26
  store ptr %29, ptr %27, align 8
  br label %30

30:                                               ; preds = %18, %8
  %31 = load i64, ptr %4, align 8
  %32 = and i64 %31, 63
  store i64 %32, ptr %4, align 8
  %33 = load i64, ptr %4, align 8
  %34 = getelementptr inbounds %"class.std::__1::__bit_iterator.32", ptr %5, i32 0, i32 1
  %35 = load i32, ptr %34, align 8
  %36 = zext i32 %35 to i64
  %37 = add nsw i64 %33, %36
  %38 = srem i64 %37, 64
  %39 = trunc i64 %38 to i32
  %40 = getelementptr inbounds %"class.std::__1::__bit_iterator.32", ptr %5, i32 0, i32 1
  store i32 %39, ptr %40, align 8
  ret ptr %5
}

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8.5a,+v8a,+zcm,+zcz" }
attributes #1 = { mustprogress noinline optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8.5a,+v8a,+zcm,+zcz" }
attributes #2 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8.5a,+v8a,+zcm,+zcz" }
attributes #3 = { noinline optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8.5a,+v8a,+zcm,+zcz" }
attributes #4 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8.5a,+v8a,+zcm,+zcz" }
attributes #5 = { mustprogress noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8.5a,+v8a,+zcm,+zcz" }
attributes #6 = { argmemonly nocallback nofree nounwind willreturn }
attributes #7 = { noinline noreturn nounwind }
attributes #8 = { mustprogress noinline noreturn optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8.5a,+v8a,+zcm,+zcz" }
attributes #9 = { nobuiltin allocsize(0) "frame-pointer"="non-leaf" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8.5a,+v8a,+zcm,+zcz" }
attributes #10 = { inaccessiblememonly nocallback nofree nosync nounwind willreturn }
attributes #11 = { nobuiltin nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "probe-stack"="__chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8.5a,+v8a,+zcm,+zcz" }
attributes #12 = { nounwind }
attributes #13 = { noreturn }
attributes #14 = { noreturn nounwind }
attributes #15 = { builtin allocsize(0) }
attributes #16 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 2, !"SDK Version", [2 x i32] [i32 14, i32 5]}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{i32 7, !"frame-pointer", i32 1}
!5 = !{!"Apple clang version 15.0.0 (clang-1500.3.9.4)"}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
!8 = distinct !{!8, !7}
!9 = distinct !{!9, !7}
!10 = distinct !{!10, !7}
!11 = distinct !{!11, !7}
!12 = distinct !{!12, !7}
!13 = distinct !{!13, !7}
!14 = distinct !{!14, !7}
!15 = distinct !{!15, !7}
!16 = distinct !{!16, !7}
!17 = distinct !{!17, !7}
!18 = distinct !{!18, !7}
!19 = distinct !{!19, !7}
!20 = distinct !{!20, !7}
!21 = distinct !{!21, !7}
!22 = distinct !{!22, !7}
!23 = distinct !{!23, !7}
!24 = distinct !{!24, !7}
