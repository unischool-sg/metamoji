.class Lcom/metamoji/nt/NtShare$WebdavAction$1;
.super Ljava/lang/Object;
.source "NtShare.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/NtShare$WebdavAction;->sendFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/nt/NtShare$WebdavAction;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/NtShare$WebdavAction;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1192
    iput-object p1, p0, Lcom/metamoji/nt/NtShare$WebdavAction$1;->this$0:Lcom/metamoji/nt/NtShare$WebdavAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1196
    invoke-static {}, Lcom/metamoji/ex/webdav/WebDAVManager;->getWebDAVInfo()Lcom/metamoji/ex/webdav/WebDAVInfo;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1197
    new-instance v0, Lcom/metamoji/ui/dialog/AddWebDav;

    invoke-direct {v0}, Lcom/metamoji/ui/dialog/AddWebDav;-><init>()V

    .line 1198
    new-instance v1, Lcom/metamoji/nt/NtShare$WebdavAction$1$1;

    invoke-direct {v1, p0}, Lcom/metamoji/nt/NtShare$WebdavAction$1$1;-><init>(Lcom/metamoji/nt/NtShare$WebdavAction$1;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/dialog/AddWebDav;->setOnClosedListener(Lcom/metamoji/ui/dialog/UiDialog$OnClosedListener;)V

    .line 1211
    const-string v1, "AddWevDav"

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/dialog/AddWebDav;->safeShow(Ljava/lang/String;)V

    return-void

    .line 1215
    :cond_0
    invoke-static {}, Lcom/metamoji/nt/NtShare$WebdavAction;->selectWebDavServer()V

    return-void
.end method
