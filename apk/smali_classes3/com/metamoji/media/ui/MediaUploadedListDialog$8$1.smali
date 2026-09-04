.class Lcom/metamoji/media/ui/MediaUploadedListDialog$8$1;
.super Ljava/lang/Object;
.source "MediaUploadedListDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/media/ui/MediaUploadedListDialog$8;->onCompletion(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/media/ui/MediaUploadedListDialog$8;


# direct methods
.method constructor <init>(Lcom/metamoji/media/ui/MediaUploadedListDialog$8;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 909
    iput-object p1, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog$8$1;->this$1:Lcom/metamoji/media/ui/MediaUploadedListDialog$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 912
    iget-object v0, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog$8$1;->this$1:Lcom/metamoji/media/ui/MediaUploadedListDialog$8;

    iget-object v0, v0, Lcom/metamoji/media/ui/MediaUploadedListDialog$8;->val$holder:Lcom/metamoji/media/ui/MediaUploadedListDialog$MediaViewHolder;

    iget-object v1, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog$8$1;->this$1:Lcom/metamoji/media/ui/MediaUploadedListDialog$8;

    iget-object v1, v1, Lcom/metamoji/media/ui/MediaUploadedListDialog$8;->val$media:Lcom/metamoji/media/ui/MediaUploadedListDialog$Media;

    invoke-virtual {v0, v1}, Lcom/metamoji/media/ui/MediaUploadedListDialog$MediaViewHolder;->update(Lcom/metamoji/media/ui/MediaUploadedListDialog$MediaItem;)V

    return-void
.end method
