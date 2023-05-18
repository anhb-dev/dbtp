with source as (

    select * from {{ source('public', 'invoice') }}

),

renamed as (

    select
        uni_id,
        storecode,
        customer_code,
        cardname,
        style_color_size,
        quantity,
        actualprice,
        discount,
        line_total,
        warehouse,
        transaction_date,
        platform_order_code,
        oms_order_code,
        delivery_type,
        currency,
        shipping_date,
        order_type,
        store_name,
        store_code,
        member_type,
        alipay_account,
        buyer_nick,
        member_email_md5,
        taobao_id,
        jd_id,
        os_member_id,
        member_mobile_md5,
        receiver_mobile_md5,
        receiver_province,
        receiver_city,
        category_sex,
        ua_division,
        end_use,
        silhouette,
        fittype,
        is_curry,
        first_purchase_time,
        unit_price,
        list_price,
        integral,
        baozun_sku_code,
        articleno,
        inv_type,
        baozun_create_time,
        platform_payment_time,
        shipping_time,
        union_id,
        ouid,
        platform_order_date,
        active_flag,
        last_sync,
        dayid

    from source

)

select * from renamed
