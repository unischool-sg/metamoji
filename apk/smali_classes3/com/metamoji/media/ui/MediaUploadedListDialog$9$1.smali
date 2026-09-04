.class Lcom/metamoji/media/ui/MediaUploadedListDialog$9$1;
.super Ljava/lang/Object;
.source "MediaUploadedListDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/media/ui/MediaUploadedListDialog$9;->action(Ljava/io/File;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/media/ui/MediaUploadedListDialog$9;

.field final synthetic val$downloadFile:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/metamoji/media/ui/MediaUploadedListDialog$9;Ljava/io/File;)V
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

    .line 1113
    iput-object p1, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog$9$1;->this$1:Lcom/metamoji/media/ui/MediaUploadedListDialog$9;

    iput-object p2, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog$9$1;->val$downloadFile:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1116
    iget-object v0, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog$9$1;->this$1:Lcom/metamoji/media/ui/MediaUploadedListDialog$9;

    iget-object v0, v0, Lcom/metamoji/media/ui/MediaUploadedListDialog$9;->this$0:Lcom/metamoji/media/ui/MediaUploadedListDialog;

    iget-object v1, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog$9$1;->val$downloadFile:Ljava/io/File;

    invoke-static {v0, v1}, Lcom/metamoji/media/ui/MediaUploadedListDialog;->-$$Nest$msetDataSource(Lcom/metamoji/media/ui/MediaUploadedListDialog;Ljava/io/File;)V

    .line 1117
    iget-object v0, p0, Lcom/metamoji/media/ui/MediaUploadedListDialog$9$1;->this$1:Lcom/metamoji/media/ui/MediaUploadedListDialog$9;

    iget-object v0, v0, Lcom/metamoji/media/ui/MediaUploadedListDialog$9;->this$0:Lcom/metamoji/media/ui/MediaUploadedListDialog;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/metamoji/media/ui/MediaUploadedListDialog;->-$$Nest$msetPlaying(Lcom/metamoji/media/ui/MediaUploadedListDialog;Z)V

    return-void
.end method
