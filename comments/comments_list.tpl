{foreach $comments_arr as $comment}
	<article class="review" data-comments-post="{$comment.id}">
    	<div class="review__left_collumm">
        	<div class="review_title">Оценка </div>
           	<div class="products__raiting1">
            	{for $i = 1; $i <= 5; $i++}
            		<i class="star-rating__star {if $i <= $comment.rate}star-rating__star--active{/if}" title="{echo $comment.rate} {tlang('out of 5 stars')}">
              			<svg class="svg-icon"><use xlink:href="#svg-icon__star"></use></svg>
                    </i>
          		{/for}
            </div>
			<div class="comments__post-vote">
				<a class="comments__post-vote-item" href="{site_url('comments/setyes/'.$comment.id)}" title="{tlang('Like')}" data-comments-vote-url="{site_url('comments/commentsapi/setyes')}" rel="nofollow">
          			<i class="comments__post-vote-ico"><svg class="svg-icon"><use xlink:href="#svg-icon__like"></use></svg></i>
          			<span class="comments__post-vote-count" data-comments-vote-value>{$comment.like}</span>
        		</a>
        		<a class="comments__post-vote-item" href="{site_url('comments/setno/'. $comment.id)}" title="{tlang('Dislike')}" data-comments-vote-url="{site_url('comments/commentsapi/setno')}" rel="nofollow">
          			<i class="comments__post-vote-ico comments__post-vote-ico--dislike"><svg class="svg-icon"><use xlink:href="#svg-icon__like"></use></svg></i>
          			<span class="comments__post-vote-count" data-comments-vote-value>{$comment.disslike}</span>
        		</a>
      		</div>
        </div>
        <div class="review__right_collumm">
        	<div class="review__header">
            	<div class="review__author">{$comment.user_name}</div>
                <div class="review__date"  datetime="{date('Y-m-d\TH:i', $comment.date)}">{tpl_locale_date("d F Y H:i", $comment.date)}</div>
            </div>
            <div class="review__text">
            	{$comment.text}
            </div>
            {if $can_comment != 1 || $is_logged_in}
        <div class="comments__post-reply">
          <button class="comments__post-reply-link" data-comments-reply-link>{tlang('Reply to this post')}</button>
        </div>
      {/if}
        </div>
        {view('comments/reply_list.tpl', ['comment' => $comment])}
  </article>
{/foreach}