 {{ config( tags=['token_activity'],alias='token')}}

select
 date,
 token_address,
 {{conversion('t.value',var('token_decimals'))}} as value
 from {{source('eth','token_transfers')}} t
 where lower(t.token_address) in ('{{ var('token_address') | join("', '") }}')
 