.class Lcom/metamoji/media/MediaUtil$4$1;
.super Ljava/lang/Object;
.source "MediaUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/media/MediaUtil$4;->action(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/media/MediaUtil$4;

.field final synthetic val$mediaList:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/metamoji/media/MediaUtil$4;Ljava/util/List;)V
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

    .line 363
    iput-object p1, p0, Lcom/metamoji/media/MediaUtil$4$1;->this$0:Lcom/metamoji/media/MediaUtil$4;

    iput-object p2, p0, Lcom/metamoji/media/MediaUtil$4$1;->val$mediaList:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 366
    new-instance v0, Lcom/metamoji/media/ui/MediaUploadedListDialog;

    invoke-direct {v0}, Lcom/metamoji/media/ui/MediaUploadedListDialog;-><init>()V

    .line 367
    iget-object v1, p0, Lcom/metamoji/media/MediaUtil$4$1;->val$mediaList:Ljava/util/List;

    iget-object v2, p0, Lcom/metamoji/media/MediaUtil$4$1;->this$0:Lcom/metamoji/media/MediaUtil$4;

    iget-boolean v2, v2, Lcom/metamoji/media/MediaUtil$4;->val$fromDocument:Z

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/media/ui/MediaUploadedListDialog;->init(Ljava/util/List;Z)V

    .line 368
    iget-object v1, p0, Lcom/metamoji/media/MediaUtil$4$1;->this$0:Lcom/metamoji/media/MediaUtil$4;

    iget-object v1, v1, Lcom/metamoji/media/MediaUtil$4;->val$onClosedListener:Lcom/metamoji/ui/dialog/UiDialog$OnClosedListener;

    invoke-virtual {v0, v1}, Lcom/metamoji/media/ui/MediaUploadedListDialog;->setOnClosedListener(Lcom/metamoji/ui/dialog/UiDialog$OnClosedListener;)V

    .line 369
    const-string v1, "MediaUploadedList"

    invoke-virtual {v0, v1}, Lcom/metamoji/media/ui/MediaUploadedListDialog;->safeShow(Ljava/lang/String;)V

    return-void
.end method
