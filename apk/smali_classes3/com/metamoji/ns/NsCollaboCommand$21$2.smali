.class Lcom/metamoji/ns/NsCollaboCommand$21$2;
.super Ljava/lang/Object;
.source "NsCollaboCommand.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ns/NsCollaboCommand$21;->onFileCompleted(ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "[B>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ns/NsCollaboCommand$21;


# direct methods
.method constructor <init>(Lcom/metamoji/ns/NsCollaboCommand$21;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1660
    iput-object p1, p0, Lcom/metamoji/ns/NsCollaboCommand$21$2;->this$0:Lcom/metamoji/ns/NsCollaboCommand$21;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1660
    invoke-virtual {p0}, Lcom/metamoji/ns/NsCollaboCommand$21$2;->call()[B

    move-result-object v0

    return-object v0
.end method

.method public call()[B
    .locals 3

    .line 1664
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/ns/NsCollaboCommand$21$2;->this$0:Lcom/metamoji/ns/NsCollaboCommand$21;

    iget-object v0, v0, Lcom/metamoji/ns/NsCollaboCommand$21;->val$editorViewController:Lcom/metamoji/nt/NtEditorWindowController;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    const/4 v1, 0x0

    .line 1665
    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtNoteController;->getPage(I)Lcom/metamoji/nt/NtPageController;

    move-result-object v0

    const/high16 v2, 0x40000000    # 2.0f

    .line 1666
    invoke-virtual {v0, v2, v1}, Lcom/metamoji/nt/NtPageController;->takeSnapshot(FZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1667
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-static {v0, v1}, Lcom/metamoji/cm/ImageUtils;->createBlobFromBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;)Lcom/metamoji/cm/Blob;

    move-result-object v1

    .line 1668
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1669
    invoke-virtual {v1}, Lcom/metamoji/cm/Blob;->getData()[B

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method
