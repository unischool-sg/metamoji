.class Lcom/metamoji/ui/library/item/LibraryViewDialog$9$1;
.super Ljava/lang/Object;
.source "LibraryViewDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/library/item/LibraryViewDialog$9;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/ui/library/item/LibraryViewDialog$9;

.field final synthetic val$isSuccess:Z


# direct methods
.method constructor <init>(Lcom/metamoji/ui/library/item/LibraryViewDialog$9;Z)V
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

    .line 1645
    iput-object p1, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog$9$1;->this$1:Lcom/metamoji/ui/library/item/LibraryViewDialog$9;

    iput-boolean p2, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog$9$1;->val$isSuccess:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1650
    :try_start_0
    iget-boolean v0, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog$9$1;->val$isSuccess:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog$9$1;->this$1:Lcom/metamoji/ui/library/item/LibraryViewDialog$9;

    iget-object v0, v0, Lcom/metamoji/ui/library/item/LibraryViewDialog$9;->val$entityId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1651
    iget-object v0, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog$9$1;->this$1:Lcom/metamoji/ui/library/item/LibraryViewDialog$9;

    iget-object v0, v0, Lcom/metamoji/ui/library/item/LibraryViewDialog$9;->this$0:Lcom/metamoji/ui/library/item/LibraryViewDialog;

    iget-object v1, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog$9$1;->this$1:Lcom/metamoji/ui/library/item/LibraryViewDialog$9;

    iget-object v1, v1, Lcom/metamoji/ui/library/item/LibraryViewDialog$9;->val$entityId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/library/item/LibraryViewDialog;->selectStorePart(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1655
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog$9$1;->this$1:Lcom/metamoji/ui/library/item/LibraryViewDialog$9;

    iget-object v0, v0, Lcom/metamoji/ui/library/item/LibraryViewDialog$9;->this$0:Lcom/metamoji/ui/library/item/LibraryViewDialog;

    invoke-virtual {v0}, Lcom/metamoji/ui/library/item/LibraryViewDialog;->hideDownloadView()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/metamoji/ui/library/item/LibraryViewDialog$9$1;->this$1:Lcom/metamoji/ui/library/item/LibraryViewDialog$9;

    iget-object v1, v1, Lcom/metamoji/ui/library/item/LibraryViewDialog$9;->this$0:Lcom/metamoji/ui/library/item/LibraryViewDialog;

    invoke-virtual {v1}, Lcom/metamoji/ui/library/item/LibraryViewDialog;->hideDownloadView()V

    .line 1656
    throw v0
.end method
