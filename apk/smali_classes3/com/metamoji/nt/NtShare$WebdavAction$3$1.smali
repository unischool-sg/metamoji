.class Lcom/metamoji/nt/NtShare$WebdavAction$3$1;
.super Ljava/lang/Object;
.source "NtShare.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/NtShare$WebdavAction$3;->onDialogClosed(Ljava/lang/String;Landroid/os/Bundle;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/nt/NtShare$WebdavAction$3;

.field final synthetic val$fileName:Ljava/lang/String;

.field final synthetic val$folder:Ljava/lang/String;

.field final synthetic val$result:Lcom/metamoji/cm/mutable/MutableBoolean;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/NtShare$WebdavAction$3;Lcom/metamoji/cm/mutable/MutableBoolean;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1263
    iput-object p1, p0, Lcom/metamoji/nt/NtShare$WebdavAction$3$1;->this$0:Lcom/metamoji/nt/NtShare$WebdavAction$3;

    iput-object p2, p0, Lcom/metamoji/nt/NtShare$WebdavAction$3$1;->val$result:Lcom/metamoji/cm/mutable/MutableBoolean;

    iput-object p3, p0, Lcom/metamoji/nt/NtShare$WebdavAction$3$1;->val$folder:Ljava/lang/String;

    iput-object p4, p0, Lcom/metamoji/nt/NtShare$WebdavAction$3$1;->val$fileName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1266
    iget-object v0, p0, Lcom/metamoji/nt/NtShare$WebdavAction$3$1;->val$result:Lcom/metamoji/cm/mutable/MutableBoolean;

    iget-object v1, p0, Lcom/metamoji/nt/NtShare$WebdavAction$3$1;->this$0:Lcom/metamoji/nt/NtShare$WebdavAction$3;

    iget-object v1, v1, Lcom/metamoji/nt/NtShare$WebdavAction$3;->val$info:Lcom/metamoji/ex/webdav/WebDAVInfo;

    iget-object v2, p0, Lcom/metamoji/nt/NtShare$WebdavAction$3$1;->val$folder:Ljava/lang/String;

    iget-object v3, p0, Lcom/metamoji/nt/NtShare$WebdavAction$3$1;->val$fileName:Ljava/lang/String;

    sget-object v4, Lcom/metamoji/nt/NtShare$WebdavAction;->mFile:Ljava/io/File;

    invoke-static {v1, v2, v3, v4}, Lcom/metamoji/ex/webdav/WebDAVManager;->upload(Lcom/metamoji/ex/webdav/WebDAVInfo;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/mutable/MutableBoolean;->setValue(Z)V

    .line 1267
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/cm/CmTaskManager;->revokeWaitScreenNow()V

    return-void
.end method
