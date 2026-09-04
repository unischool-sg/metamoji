.class public Lcom/metamoji/nt/NtShare$WebdavAction;
.super Ljava/lang/Object;
.source "NtShare.java"

# interfaces
.implements Lcom/metamoji/nt/NtShare$ISendAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/nt/NtShare;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WebdavAction"
.end annotation


# static fields
.field public static instance:Lcom/metamoji/nt/NtShare$ISendAction;

.field static mFile:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1179
    new-instance v0, Lcom/metamoji/nt/NtShare$WebdavAction;

    invoke-direct {v0}, Lcom/metamoji/nt/NtShare$WebdavAction;-><init>()V

    sput-object v0, Lcom/metamoji/nt/NtShare$WebdavAction;->instance:Lcom/metamoji/nt/NtShare$ISendAction;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static doExport(Lcom/metamoji/ex/webdav/WebDAVInfo;)V
    .locals 4

    if-eqz p0, :cond_0

    .line 1254
    new-instance v0, Lcom/metamoji/ui/dialog/WebDavSelectDoc;

    const/4 v1, 0x0

    sget v2, Lcom/metamoji/noteanytime/R$string;->Export_WebDAV:I

    const/4 v3, 0x2

    invoke-direct {v0, p0, v3, v1, v2}, Lcom/metamoji/ui/dialog/WebDavSelectDoc;-><init>(Lcom/metamoji/ex/webdav/WebDAVInfo;I[Ljava/lang/String;I)V

    .line 1255
    new-instance v1, Lcom/metamoji/nt/NtShare$WebdavAction$3;

    invoke-direct {v1, v0, p0}, Lcom/metamoji/nt/NtShare$WebdavAction$3;-><init>(Lcom/metamoji/ui/dialog/WebDavSelectDoc;Lcom/metamoji/ex/webdav/WebDAVInfo;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/dialog/WebDavSelectDoc;->setOnClosedListener(Lcom/metamoji/ui/dialog/UiDialog$OnClosedListener;)V

    .line 1285
    const-string p0, "WebDabFolderSelect"

    invoke-virtual {v0, p0}, Lcom/metamoji/ui/dialog/WebDavSelectDoc;->safeShow(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static selectWebDavServer()V
    .locals 2

    .line 1227
    new-instance v0, Lcom/metamoji/ui/dialog/WebDavSelectServer;

    invoke-direct {v0}, Lcom/metamoji/ui/dialog/WebDavSelectServer;-><init>()V

    .line 1228
    new-instance v1, Lcom/metamoji/nt/NtShare$WebdavAction$2;

    invoke-direct {v1, v0}, Lcom/metamoji/nt/NtShare$WebdavAction$2;-><init>(Lcom/metamoji/ui/dialog/WebDavSelectServer;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/dialog/WebDavSelectServer;->setOnClosedListener(Lcom/metamoji/ui/dialog/UiDialog$OnClosedListener;)V

    .line 1248
    const-string v1, "WevDabServerSelect"

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/dialog/WebDavSelectServer;->safeShow(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public sendFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .line 1191
    sput-object p1, Lcom/metamoji/nt/NtShare$WebdavAction;->mFile:Ljava/io/File;

    .line 1192
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p1

    new-instance p2, Lcom/metamoji/nt/NtShare$WebdavAction$1;

    invoke-direct {p2, p0}, Lcom/metamoji/nt/NtShare$WebdavAction$1;-><init>(Lcom/metamoji/nt/NtShare$WebdavAction;)V

    invoke-virtual {p1, p2}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThreadAsync(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public sendFiles(Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    return-void
.end method
