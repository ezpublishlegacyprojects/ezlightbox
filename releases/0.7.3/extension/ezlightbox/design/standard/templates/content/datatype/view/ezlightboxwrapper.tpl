{* DO NOT EDIT THIS FILE! Use an override template instead. *}
{def $lightbox=$attribute.content}

<h3>{$lightbox.name|wash()} ({$lightbox.item_count})</h3>


   {if $lightbox.object_id_list|count()|gt( 0 )}

        {def $content_object = false()}

          <ul class="list">

        {foreach $lightbox.object_id_list as $object_id sequence array( 'bglight', 'bgdark' ) as $bg}

            {set $content_object = fetch( 'content', 'object', hash( 'object_id', $object_id ) )}

            {if is_object( $content_object )}

                <li>{content_view_gui content_object = $content_object view = line}</li>

            {/if}

        {/foreach}

          </ul>

    {else}

          <p>{'This lightbox is empty.'|i18n( 'datatype/lightboxwrapper' )}</p>

    {/if}
