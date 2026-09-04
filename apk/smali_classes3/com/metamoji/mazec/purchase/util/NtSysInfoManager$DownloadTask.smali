.class Lcom/metamoji/mazec/purchase/util/NtSysInfoManager$DownloadTask;
.super Landroid/os/AsyncTask;
.source "NtSysInfoManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/mazec/purchase/util/NtSysInfoManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DownloadTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field m_context:Landroid/content/Context;

.field final synthetic this$0:Lcom/metamoji/mazec/purchase/util/NtSysInfoManager;


# direct methods
.method public constructor <init>(Lcom/metamoji/mazec/purchase/util/NtSysInfoManager;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 323
    iput-object p1, p0, Lcom/metamoji/mazec/purchase/util/NtSysInfoManager$DownloadTask;->this$0:Lcom/metamoji/mazec/purchase/util/NtSysInfoManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 324
    iput-object p2, p0, Lcom/metamoji/mazec/purchase/util/NtSysInfoManager$DownloadTask;->m_context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Integer;
    .locals 3

    .line 329
    iget-object v0, p0, Lcom/metamoji/mazec/purchase/util/NtSysInfoManager$DownloadTask;->this$0:Lcom/metamoji/mazec/purchase/util/NtSysInfoManager;

    iget-object v1, p0, Lcom/metamoji/mazec/purchase/util/NtSysInfoManager$DownloadTask;->m_context:Landroid/content/Context;

    const/4 v2, 0x0

    aget-object p1, p1, v2

    invoke-virtual {v0, v1, p1}, Lcom/metamoji/mazec/purchase/util/NtSysInfoManager;->downloadSysInfo(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 320
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/metamoji/mazec/purchase/util/NtSysInfoManager$DownloadTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
