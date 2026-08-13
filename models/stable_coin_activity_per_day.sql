select
 date,
 token_address,
 sum(value/1e6) as total_value
 from {{source('eth','token_transfers')}}
 where token_address in ('0x40264ecdcc288cb55b679c7c6b2a3bf5','0x7577449c11ed176724872780c8098870')
 group by 
 date, token_address