<div class="product__reviews_content" data-comments>
  <!-- List of user comments -->
  {if $comments_arr}
      {view('comments/comments_list.tpl')}
  {else:}
    <div class="comments__list">
      {tlang('Be the first to review this item. Share your rating and review so that other customers can decide if this is the right item for them.')}
    </div>
  {/if}
</div>