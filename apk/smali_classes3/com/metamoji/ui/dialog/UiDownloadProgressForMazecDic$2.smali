.class Lcom/metamoji/ui/dialog/UiDownloadProgressForMazecDic$2;
.super Ljava/lang/Object;
.source "UiDownloadProgressForMazecDic.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/dialog/UiDownloadProgressForMazecDic;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/dialog/UiDownloadProgressForMazecDic;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/dialog/UiDownloadProgressForMazecDic;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 79
    iput-object p1, p0, Lcom/metamoji/ui/dialog/UiDownloadProgressForMazecDic$2;->this$0:Lcom/metamoji/ui/dialog/UiDownloadProgressForMazecDic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 82
    iget-object p1, p0, Lcom/metamoji/ui/dialog/UiDownloadProgressForMazecDic$2;->this$0:Lcom/metamoji/ui/dialog/UiDownloadProgressForMazecDic;

    iget-object p1, p1, Lcom/metamoji/ui/dialog/UiDownloadProgressForMazecDic;->m_task:Lcom/metamoji/lb/LbDownloadUtil$LbDownloadTask;

    if-eqz p1, :cond_0

    .line 83
    iget-object p1, p0, Lcom/metamoji/ui/dialog/UiDownloadProgressForMazecDic$2;->this$0:Lcom/metamoji/ui/dialog/UiDownloadProgressForMazecDic;

    iget-object p1, p1, Lcom/metamoji/ui/dialog/UiDownloadProgressForMazecDic;->m_task:Lcom/metamoji/lb/LbDownloadUtil$LbDownloadTask;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/metamoji/lb/LbDownloadUtil$LbDownloadTask;->cancel(Z)Z

    :cond_0
    return-void
.end method
