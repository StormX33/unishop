<div class="comments" data-comments>
  
  <!-- List of user comments -->
  {if $comments_arr}
    <div class="comments__list">
      {view('comments/comments_list.tpl')}
    </div>
  {else:}
    <div class="comments__list">
      {tlang('Be the first to review this item. Share your rating and review so that other customers can decide if this is the right item for them.')}
    </div>
  {/if}
</div>