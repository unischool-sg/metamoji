.class Lcom/metamoji/media/ui/MediaUploadedListDialog$MediaViewHolder$3$1;
.super Ljava/lang/Object;
.source "MediaUploadedListDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/media/ui/MediaUploadedListDialog$MediaViewHolder$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/metamoji/media/ui/MediaUploadedListDialog$MediaViewHolder$3;

.field final synthetic val$media:Lcom/metamoji/media/ui/MediaUploadedListDialog$Media;


# direct methods
.method constructor <init>(Lcom/metamoji/media/ui/MediaUploadedListDialog$MediaViewHolder$3;Lcom/metamoji/media/ui/MediaUploadedListDialog$Media;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1356
    iput-object p1, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog$MediaViewHolder$3$1;->this$2:Lcom/metamoji/media/ui/MediaUploadedListDialog$MediaViewHolder$3;

    iput-object p2, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog$MediaViewHolder$3$1;->val$media:Lcom/metamoji/media/ui/MediaUploadedListDialog$Media;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    .line 1361
    iget-object p1, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog$MediaViewHolder$3$1;->this$2:Lcom/metamoji/media/ui/MediaUploadedListDialog$MediaViewHolder$3;

    iget-object p1, p1, Lcom/metamoji/media/ui/MediaUploadedListDialog$MediaViewHolder$3;->this$1:Lcom/metamoji/media/ui/MediaUploadedListDialog$MediaViewHolder;

    iget-object p2, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog$MediaViewHolder$3$1;->val$media:Lcom/metamoji/media/ui/MediaUploadedListDialog$Media;

    invoke-virtual {p2}, Lcom/metamoji/media/ui/MediaUploadedListDialog$Media;->getTicket()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/metamoji/media/ui/MediaUploadedListDialog$MediaViewHolder;->disableDownload(Ljava/lang/String;)V

    .line 1362
    iget-object p1, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog$MediaViewHolder$3$1;->this$2:Lcom/metamoji/media/ui/MediaUploadedListDialog$MediaViewHolder$3;

    iget-object p1, p1, Lcom/metamoji/media/ui/MediaUploadedListDialog$MediaViewHolder$3;->this$1:Lcom/metamoji/media/ui/MediaUploadedListDialog$MediaViewHolder;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/metamoji/media/ui/MediaUploadedListDialog$MediaViewHolder;->-$$Nest$mshowDownload(Lcom/metamoji/media/ui/MediaUploadedListDialog$MediaViewHolder;Z)V

    .line 1364
    iget-object p1, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog$MediaViewHolder$3$1;->this$2:Lcom/metamoji/media/ui/MediaUploadedListDialog$MediaViewHolder$3;

    iget-object p1, p1, Lcom/metamoji/media/ui/MediaUploadedListDialog$MediaViewHolder$3;->this$1:Lcom/metamoji/media/ui/MediaUploadedListDialog$MediaViewHolder;

    iget-object p1, p1, Lcom/metamoji/media/ui/MediaUploadedListDialog$MediaViewHolder;->this$0:Lcom/metamoji/media/ui/MediaUploadedListDialog;

    iget-object p2, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog$MediaViewHolder$3$1;->val$media:Lcom/metamoji/media/ui/MediaUploadedListDialog$Media;

    iget-object v0, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog$MediaViewHolder$3$1;->this$2:Lcom/metamoji/media/ui/MediaUploadedListDialog$MediaViewHolder$3;

    iget-object v0, v0, Lcom/metamoji/media/ui/MediaUploadedListDialog$MediaViewHolder$3;->this$1:Lcom/metamoji/media/ui/MediaUploadedListDialog$MediaViewHolder;

    invoke-static {p1, p2, v0}, Lcom/metamoji/media/ui/MediaUploadedListDialog;->-$$Nest$mdownload(Lcom/metamoji/media/ui/MediaUploadedListDialog;Lcom/metamoji/media/ui/MediaUploadedListDialog$Media;Lcom/metamoji/media/ui/MediaUploadedListDialog$MediaViewHolder;)V

    :cond_0
    return-void
.end method
