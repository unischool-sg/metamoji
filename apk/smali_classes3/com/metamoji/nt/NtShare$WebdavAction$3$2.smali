.class Lcom/metamoji/nt/NtShare$WebdavAction$3$2;
.super Ljava/lang/Object;
.source "NtShare.java"

# interfaces
.implements Lcom/metamoji/cm/CmTaskManager$IOnCompleted;


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

.field final synthetic val$result:Lcom/metamoji/cm/mutable/MutableBoolean;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/NtShare$WebdavAction$3;Lcom/metamoji/cm/mutable/MutableBoolean;)V
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

    .line 1269
    iput-object p1, p0, Lcom/metamoji/nt/NtShare$WebdavAction$3$2;->this$0:Lcom/metamoji/nt/NtShare$WebdavAction$3;

    iput-object p2, p0, Lcom/metamoji/nt/NtShare$WebdavAction$3$2;->val$result:Lcom/metamoji/cm/mutable/MutableBoolean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Ljava/lang/Throwable;)V
    .locals 1

    .line 1272
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p1

    new-instance v0, Lcom/metamoji/nt/NtShare$WebdavAction$3$2$1;

    invoke-direct {v0, p0}, Lcom/metamoji/nt/NtShare$WebdavAction$3$2$1;-><init>(Lcom/metamoji/nt/NtShare$WebdavAction$3$2;)V

    invoke-virtual {p1, v0}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method
