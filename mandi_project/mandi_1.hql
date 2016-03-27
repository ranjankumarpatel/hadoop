CREATE TABLE mandi_commodity_raw (
  count int,
  fields struct<arrival_date:struct<description:string, length:string, not null:boolean, size:string, type:string>, commodity:struct<description:string, length:string, not null:boolean, size:string, type:string>, district:struct<description:string, length:string, not null:boolean, size:string, type:string>, id:struct<description:string, not null:boolean, size:string, type:string>, market:struct<description:string, length:string, not null:boolean, size:string, type:string>, max_price:struct<description:string, not null:boolean, size:string, type:string>, min_price:struct<description:string, not null:boolean, size:string, type:string>, modal_price:struct<description:string, not null:boolean, size:string, type:string>, state:struct<description:string, length:string, not null:boolean, size:string, type:string>, timestamp:struct<description:string, not null:boolean, size:string, type:string>, variety:struct<description:string, length:string, not null:boolean, size:string, type:string>>,
  help string,
  records array<struct<arrival_date:string, commodity:string, district:string, id:string, market:string, max_price:string, min_price:string, modal_price:string, state:string, timestamp:string, variety:string>>,
  success boolean)
ROW FORMAT SERDE 'org.openx.data.jsonserde.JsonSerDe';
