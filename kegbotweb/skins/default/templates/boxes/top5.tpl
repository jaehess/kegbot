<div class="leadercol">
   <div style="background:#003; font:12px Courier, sans-serif; text-align: center;color: #fff; border:1px solid #fff; border-top:0px;">
   current keg
   </div>

   {load_leaders_by_volume assign="leaders" limit="5" keg="current"}
   {foreach name=curr_vol from=$leaders item=resinfo}
      <div style="font:10px Courier, sans-serif;">
      <center>
      <a href="{module_url module="drinker-info" drinker=$resinfo.drinker->username}">
      {include file="boxes/mugshot-box.tpl" u=$resinfo.drinker d=100 border=0}
      </a>
      {$resinfo.amount}{$resinfo.units}
      </center>
      </div>

   {/foreach}

</div>
