.class Lcom/metamoji/nt/notify/NtSysInfoManager$DownloadTask;
.super Landroid/os/AsyncTask;
.source "NtSysInfoManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/nt/notify/NtSysInfoManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DownloadTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field m_ntAnytimeButton:Lcom/metamoji/nt/notify/NtAnytimeNotifyButton;

.field final synthetic this$0:Lcom/metamoji/nt/notify/NtSysInfoManager;


# direct methods
.method public constructor <init>(Lcom/metamoji/nt/notify/NtSysInfoManager;Lcom/metamoji/nt/notify/NtAnytimeNotifyButton;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 739
    iput-object p1, p0, Lcom/metamoji/nt/notify/NtSysInfoManager$DownloadTask;->this$0:Lcom/metamoji/nt/notify/NtSysInfoManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 740
    iput-object p2, p0, Lcom/metamoji/nt/notify/NtSysInfoManager$DownloadTask;->m_ntAnytimeButton:Lcom/metamoji/nt/notify/NtAnytimeNotifyButton;

    return-void
.end method


# virtual methods
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

    .line 734
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/metamoji/nt/notify/NtSysInfoManager$DownloadTask;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 746
    iget-object v0, p0, Lcom/metamoji/nt/notify/NtSysInfoManager$DownloadTask;->this$0:Lcom/metamoji/nt/notify/NtSysInfoManager;

    const/4 v1, 0x0

    aget-object p1, p1, v1

    invoke-virtual {v0, p1}, Lcom/metamoji/nt/notify/NtSysInfoManager;->getContents(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 734
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/metamoji/nt/notify/NtSysInfoManager$DownloadTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 2

    .line 752
    iget-object v0, p0, Lcom/metamoji/nt/notify/NtSysInfoManager$DownloadTask;->this$0:Lcom/metamoji/nt/notify/NtSysInfoManager;

    iget-object v1, p0, Lcom/metamoji/nt/notify/NtSysInfoManager$DownloadTask;->m_ntAnytimeButton:Lcom/metamoji/nt/notify/NtAnytimeNotifyButton;

    invoke-virtual {v0, p1, v1}, Lcom/metamoji/nt/notify/NtSysInfoManager;->getContentsCompleted(Ljava/lang/String;Lcom/metamoji/nt/notify/NtAnytimeNotifyButton;)V

    return-void
.end method
