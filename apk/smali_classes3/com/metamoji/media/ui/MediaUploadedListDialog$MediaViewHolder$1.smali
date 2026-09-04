.class Lcom/metamoji/media/ui/MediaUploadedListDialog$MediaViewHolder$1;
.super Ljava/lang/Object;
.source "MediaUploadedListDialog.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/media/ui/MediaUploadedListDialog$MediaViewHolder;-><init>(Lcom/metamoji/media/ui/MediaUploadedListDialog;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/media/ui/MediaUploadedListDialog$MediaViewHolder;

.field final synthetic val$this$0:Lcom/metamoji/media/ui/MediaUploadedListDialog;


# direct methods
.method constructor <init>(Lcom/metamoji/media/ui/MediaUploadedListDialog$MediaViewHolder;Lcom/metamoji/media/ui/MediaUploadedListDialog;)V
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

    .line 1336
    iput-object p1, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog$MediaViewHolder$1;->this$1:Lcom/metamoji/media/ui/MediaUploadedListDialog$MediaViewHolder;

    iput-object p2, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog$MediaViewHolder$1;->val$this$0:Lcom/metamoji/media/ui/MediaUploadedListDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 1339
    iget-object p1, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog$MediaViewHolder$1;->this$1:Lcom/metamoji/media/ui/MediaUploadedListDialog$MediaViewHolder;

    iget-object p1, p1, Lcom/metamoji/media/ui/MediaUploadedListDialog$MediaViewHolder;->this$0:Lcom/metamoji/media/ui/MediaUploadedListDialog;

    iget-object v0, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog$MediaViewHolder$1;->this$1:Lcom/metamoji/media/ui/MediaUploadedListDialog$MediaViewHolder;

    iget-object v0, v0, Lcom/metamoji/media/ui/MediaUploadedListDialog$MediaViewHolder;->_media:Lcom/metamoji/media/ui/MediaUploadedListDialog$Media;

    invoke-static {p1, v0, p2}, Lcom/metamoji/media/ui/MediaUploadedListDialog;->-$$Nest$mselectItem(Lcom/metamoji/media/ui/MediaUploadedListDialog;Lcom/metamoji/media/ui/MediaUploadedListDialog$Media;Z)V

    return-void
.end method
