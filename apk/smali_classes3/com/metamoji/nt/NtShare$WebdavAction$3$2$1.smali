.class Lcom/metamoji/nt/NtShare$WebdavAction$3$2$1;
.super Ljava/lang/Object;
.source "NtShare.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/NtShare$WebdavAction$3$2;->onCompleted(Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/nt/NtShare$WebdavAction$3$2;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/NtShare$WebdavAction$3$2;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1272
    iput-object p1, p0, Lcom/metamoji/nt/NtShare$WebdavAction$3$2$1;->this$1:Lcom/metamoji/nt/NtShare$WebdavAction$3$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1275
    iget-object v0, p0, Lcom/metamoji/nt/NtShare$WebdavAction$3$2$1;->this$1:Lcom/metamoji/nt/NtShare$WebdavAction$3$2;

    iget-object v0, v0, Lcom/metamoji/nt/NtShare$WebdavAction$3$2;->val$result:Lcom/metamoji/cm/mutable/MutableBoolean;

    invoke-virtual {v0}, Lcom/metamoji/cm/mutable/MutableBoolean;->getValue()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/metamoji/noteanytime/R$string;->WebDAV_Msg_Export_To_WebDAV:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/metamoji/noteanytime/R$string;->WebDAV_Msg_Export_To_WebDAV_Failed:I

    :goto_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1276
    invoke-static {v0, v1, v2}, Lcom/metamoji/cm/CmUtils;->confirmDialog(IILandroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method
