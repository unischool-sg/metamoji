.class Lcom/metamoji/media/ui/MediaUploadedListDialog$DeleteLoop$1;
.super Ljava/lang/Object;
.source "MediaUploadedListDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/media/ui/MediaUploadedListDialog$DeleteLoop;->allDone()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/media/ui/MediaUploadedListDialog$DeleteLoop;


# direct methods
.method constructor <init>(Lcom/metamoji/media/ui/MediaUploadedListDialog$DeleteLoop;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 810
    iput-object p1, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog$DeleteLoop$1;->this$1:Lcom/metamoji/media/ui/MediaUploadedListDialog$DeleteLoop;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 813
    iget-object v0, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog$DeleteLoop$1;->this$1:Lcom/metamoji/media/ui/MediaUploadedListDialog$DeleteLoop;

    invoke-static {v0}, Lcom/metamoji/media/ui/MediaUploadedListDialog$DeleteLoop;->-$$Nest$fget_removedList(Lcom/metamoji/media/ui/MediaUploadedListDialog$DeleteLoop;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/media/ui/MediaUploadedListDialog$Media;

    .line 814
    iget-object v2, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog$DeleteLoop$1;->this$1:Lcom/metamoji/media/ui/MediaUploadedListDialog$DeleteLoop;

    iget-object v2, v2, Lcom/metamoji/media/ui/MediaUploadedListDialog$DeleteLoop;->this$0:Lcom/metamoji/media/ui/MediaUploadedListDialog;

    invoke-static {v2}, Lcom/metamoji/media/ui/MediaUploadedListDialog;->-$$Nest$fget_checked(Lcom/metamoji/media/ui/MediaUploadedListDialog;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 815
    iget-object v2, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog$DeleteLoop$1;->this$1:Lcom/metamoji/media/ui/MediaUploadedListDialog$DeleteLoop;

    iget-object v2, v2, Lcom/metamoji/media/ui/MediaUploadedListDialog$DeleteLoop;->this$0:Lcom/metamoji/media/ui/MediaUploadedListDialog;

    invoke-static {v2}, Lcom/metamoji/media/ui/MediaUploadedListDialog;->-$$Nest$fget_items(Lcom/metamoji/media/ui/MediaUploadedListDialog;)Lcom/metamoji/media/ui/MediaUploadedListDialog$MediaItemAdapter;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/metamoji/media/ui/MediaUploadedListDialog$MediaItemAdapter;->remove(Ljava/lang/Object;)V

    goto :goto_0

    .line 818
    :cond_0
    iget-object v0, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog$DeleteLoop$1;->this$1:Lcom/metamoji/media/ui/MediaUploadedListDialog$DeleteLoop;

    iget-object v0, v0, Lcom/metamoji/media/ui/MediaUploadedListDialog$DeleteLoop;->this$0:Lcom/metamoji/media/ui/MediaUploadedListDialog;

    invoke-static {v0}, Lcom/metamoji/media/ui/MediaUploadedListDialog;->-$$Nest$fget_items(Lcom/metamoji/media/ui/MediaUploadedListDialog;)Lcom/metamoji/media/ui/MediaUploadedListDialog$MediaItemAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/media/ui/MediaUploadedListDialog$MediaItemAdapter;->notifyDataSetChanged()V

    .line 819
    iget-object v0, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog$DeleteLoop$1;->this$1:Lcom/metamoji/media/ui/MediaUploadedListDialog$DeleteLoop;

    iget-object v0, v0, Lcom/metamoji/media/ui/MediaUploadedListDialog$DeleteLoop;->this$0:Lcom/metamoji/media/ui/MediaUploadedListDialog;

    invoke-static {v0}, Lcom/metamoji/media/ui/MediaUploadedListDialog;->-$$Nest$fget_items(Lcom/metamoji/media/ui/MediaUploadedListDialog;)Lcom/metamoji/media/ui/MediaUploadedListDialog$MediaItemAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/media/ui/MediaUploadedListDialog$MediaItemAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_4

    .line 821
    iget-object v0, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog$DeleteLoop$1;->this$1:Lcom/metamoji/media/ui/MediaUploadedListDialog$DeleteLoop;

    iget-object v0, v0, Lcom/metamoji/media/ui/MediaUploadedListDialog$DeleteLoop;->this$0:Lcom/metamoji/media/ui/MediaUploadedListDialog;

    invoke-static {v0}, Lcom/metamoji/media/ui/MediaUploadedListDialog;->-$$Nest$fget_mediaList(Lcom/metamoji/media/ui/MediaUploadedListDialog;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_2

    .line 829
    :cond_1
    iget-object v0, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog$DeleteLoop$1;->this$1:Lcom/metamoji/media/ui/MediaUploadedListDialog$DeleteLoop;

    iget-object v0, v0, Lcom/metamoji/media/ui/MediaUploadedListDialog$DeleteLoop;->this$0:Lcom/metamoji/media/ui/MediaUploadedListDialog;

    invoke-static {v0}, Lcom/metamoji/media/ui/MediaUploadedListDialog;->-$$Nest$fget_audio(Lcom/metamoji/media/ui/MediaUploadedListDialog;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 830
    iget-object v0, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog$DeleteLoop$1;->this$1:Lcom/metamoji/media/ui/MediaUploadedListDialog$DeleteLoop;

    iget-object v0, v0, Lcom/metamoji/media/ui/MediaUploadedListDialog$DeleteLoop;->this$0:Lcom/metamoji/media/ui/MediaUploadedListDialog;

    invoke-static {v0}, Lcom/metamoji/media/ui/MediaUploadedListDialog;->-$$Nest$fget_list(Lcom/metamoji/media/ui/MediaUploadedListDialog;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v0

    .line 831
    iget-object v1, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog$DeleteLoop$1;->this$1:Lcom/metamoji/media/ui/MediaUploadedListDialog$DeleteLoop;

    iget-object v1, v1, Lcom/metamoji/media/ui/MediaUploadedListDialog$DeleteLoop;->this$0:Lcom/metamoji/media/ui/MediaUploadedListDialog;

    invoke-static {v1}, Lcom/metamoji/media/ui/MediaUploadedListDialog;->-$$Nest$fget_items(Lcom/metamoji/media/ui/MediaUploadedListDialog;)Lcom/metamoji/media/ui/MediaUploadedListDialog$MediaItemAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/media/ui/MediaUploadedListDialog$MediaItemAdapter;->getCount()I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, v0, :cond_2

    .line 832
    iget-object v0, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog$DeleteLoop$1;->this$1:Lcom/metamoji/media/ui/MediaUploadedListDialog$DeleteLoop;

    iget-object v0, v0, Lcom/metamoji/media/ui/MediaUploadedListDialog$DeleteLoop;->this$0:Lcom/metamoji/media/ui/MediaUploadedListDialog;

    invoke-static {v0}, Lcom/metamoji/media/ui/MediaUploadedListDialog;->-$$Nest$fget_items(Lcom/metamoji/media/ui/MediaUploadedListDialog;)Lcom/metamoji/media/ui/MediaUploadedListDialog$MediaItemAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/media/ui/MediaUploadedListDialog$MediaItemAdapter;->getCount()I

    move-result v0

    sub-int/2addr v0, v2

    :cond_2
    :goto_1
    if-lez v0, :cond_3

    .line 835
    iget-object v1, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog$DeleteLoop$1;->this$1:Lcom/metamoji/media/ui/MediaUploadedListDialog$DeleteLoop;

    iget-object v1, v1, Lcom/metamoji/media/ui/MediaUploadedListDialog$DeleteLoop;->this$0:Lcom/metamoji/media/ui/MediaUploadedListDialog;

    invoke-static {v1}, Lcom/metamoji/media/ui/MediaUploadedListDialog;->-$$Nest$fget_items(Lcom/metamoji/media/ui/MediaUploadedListDialog;)Lcom/metamoji/media/ui/MediaUploadedListDialog$MediaItemAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/metamoji/media/ui/MediaUploadedListDialog$MediaItemAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/metamoji/media/ui/MediaUploadedListDialog$Header;

    if-eqz v1, :cond_3

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 838
    :cond_3
    iget-object v1, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog$DeleteLoop$1;->this$1:Lcom/metamoji/media/ui/MediaUploadedListDialog$DeleteLoop;

    iget-object v1, v1, Lcom/metamoji/media/ui/MediaUploadedListDialog$DeleteLoop;->this$0:Lcom/metamoji/media/ui/MediaUploadedListDialog;

    invoke-static {v1}, Lcom/metamoji/media/ui/MediaUploadedListDialog;->-$$Nest$fget_list(Lcom/metamoji/media/ui/MediaUploadedListDialog;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 839
    iget-object v1, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog$DeleteLoop$1;->this$1:Lcom/metamoji/media/ui/MediaUploadedListDialog$DeleteLoop;

    iget-object v1, v1, Lcom/metamoji/media/ui/MediaUploadedListDialog$DeleteLoop;->this$0:Lcom/metamoji/media/ui/MediaUploadedListDialog;

    invoke-static {v1}, Lcom/metamoji/media/ui/MediaUploadedListDialog;->-$$Nest$fget_list(Lcom/metamoji/media/ui/MediaUploadedListDialog;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    .line 840
    iget-object v1, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog$DeleteLoop$1;->this$1:Lcom/metamoji/media/ui/MediaUploadedListDialog$DeleteLoop;

    iget-object v1, v1, Lcom/metamoji/media/ui/MediaUploadedListDialog$DeleteLoop;->this$0:Lcom/metamoji/media/ui/MediaUploadedListDialog;

    invoke-static {v1, v0}, Lcom/metamoji/media/ui/MediaUploadedListDialog;->-$$Nest$mprepareToPlay(Lcom/metamoji/media/ui/MediaUploadedListDialog;I)V

    return-void

    .line 822
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog$DeleteLoop$1;->this$1:Lcom/metamoji/media/ui/MediaUploadedListDialog$DeleteLoop;

    iget-object v0, v0, Lcom/metamoji/media/ui/MediaUploadedListDialog$DeleteLoop;->this$0:Lcom/metamoji/media/ui/MediaUploadedListDialog;

    invoke-static {v0}, Lcom/metamoji/media/ui/MediaUploadedListDialog;->-$$Nest$fget_audio(Lcom/metamoji/media/ui/MediaUploadedListDialog;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 823
    iget-object v0, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog$DeleteLoop$1;->this$1:Lcom/metamoji/media/ui/MediaUploadedListDialog$DeleteLoop;

    iget-object v0, v0, Lcom/metamoji/media/ui/MediaUploadedListDialog$DeleteLoop;->this$0:Lcom/metamoji/media/ui/MediaUploadedListDialog;

    invoke-static {v0}, Lcom/metamoji/media/ui/MediaUploadedListDialog;->-$$Nest$fget_items(Lcom/metamoji/media/ui/MediaUploadedListDialog;)Lcom/metamoji/media/ui/MediaUploadedListDialog$MediaItemAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/media/ui/MediaUploadedListDialog$MediaItemAdapter;->clear()V

    .line 824
    iget-object v0, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog$DeleteLoop$1;->this$1:Lcom/metamoji/media/ui/MediaUploadedListDialog$DeleteLoop;

    iget-object v0, v0, Lcom/metamoji/media/ui/MediaUploadedListDialog$DeleteLoop;->this$0:Lcom/metamoji/media/ui/MediaUploadedListDialog;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/metamoji/media/ui/MediaUploadedListDialog;->-$$Nest$msetEditable(Lcom/metamoji/media/ui/MediaUploadedListDialog;Z)V

    .line 825
    iget-object v0, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog$DeleteLoop$1;->this$1:Lcom/metamoji/media/ui/MediaUploadedListDialog$DeleteLoop;

    iget-object v0, v0, Lcom/metamoji/media/ui/MediaUploadedListDialog$DeleteLoop;->this$0:Lcom/metamoji/media/ui/MediaUploadedListDialog;

    sget-object v1, Lcom/metamoji/media/ui/MediaUploadedListDialog$AudioState;->RESET:Lcom/metamoji/media/ui/MediaUploadedListDialog$AudioState;

    invoke-static {v0, v1}, Lcom/metamoji/media/ui/MediaUploadedListDialog;->-$$Nest$fput_audioState(Lcom/metamoji/media/ui/MediaUploadedListDialog;Lcom/metamoji/media/ui/MediaUploadedListDialog$AudioState;)V

    .line 827
    iget-object v0, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog$DeleteLoop$1;->this$1:Lcom/metamoji/media/ui/MediaUploadedListDialog$DeleteLoop;

    iget-object v0, v0, Lcom/metamoji/media/ui/MediaUploadedListDialog$DeleteLoop;->this$0:Lcom/metamoji/media/ui/MediaUploadedListDialog;

    invoke-static {v0}, Lcom/metamoji/media/ui/MediaUploadedListDialog;->-$$Nest$minitButtonStates(Lcom/metamoji/media/ui/MediaUploadedListDialog;)V

    return-void
.end method
