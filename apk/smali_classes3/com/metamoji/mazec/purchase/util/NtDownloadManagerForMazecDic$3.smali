.class Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic$3;
.super Ljava/lang/Object;
.source "NtDownloadManagerForMazecDic.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic;->performDownloadTaskInBackground(Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic$OnFinishedListener;Ljava/util/LinkedHashMap;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic;

.field final synthetic val$downloadDic:Ljava/util/LinkedHashMap;

.field final synthetic val$isUpdate:Z

.field final synthetic val$listener:Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic$OnFinishedListener;

.field final synthetic val$showCompletedMsg:Z


# direct methods
.method constructor <init>(Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic;Ljava/util/LinkedHashMap;ZZLcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic$OnFinishedListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
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

    .line 157
    iput-object p1, p0, Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic$3;->this$0:Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic;

    iput-object p2, p0, Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic$3;->val$downloadDic:Ljava/util/LinkedHashMap;

    iput-boolean p3, p0, Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic$3;->val$isUpdate:Z

    iput-boolean p4, p0, Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic$3;->val$showCompletedMsg:Z

    iput-object p5, p0, Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic$3;->val$listener:Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic$OnFinishedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    .line 161
    invoke-static {}, Lcom/metamoji/mazec/purchase/util/CmTaskManager;->getInstance()Lcom/metamoji/mazec/purchase/util/CmTaskManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/mazec/purchase/util/CmTaskManager;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, -0x2

    if-ne p2, p1, :cond_1

    .line 166
    new-instance v0, Lcom/metamoji/mazec/purchase/util/NtDownloadBackgroundTaskForMazecDic;

    iget-object p1, p0, Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic$3;->this$0:Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic;

    .line 167
    invoke-virtual {p1}, Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic$3;->val$downloadDic:Ljava/util/LinkedHashMap;

    iget-boolean v3, p0, Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic$3;->val$isUpdate:Z

    iget-boolean v4, p0, Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic$3;->val$showCompletedMsg:Z

    iget-object v5, p0, Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic$3;->val$listener:Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic$OnFinishedListener;

    invoke-direct/range {v0 .. v5}, Lcom/metamoji/mazec/purchase/util/NtDownloadBackgroundTaskForMazecDic;-><init>(Landroid/content/Context;Ljava/util/LinkedHashMap;ZZLcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic$OnFinishedListener;)V

    .line 169
    :try_start_0
    invoke-static {}, Lcom/metamoji/mazec/purchase/util/CmTaskManager;->getInstance()Lcom/metamoji/mazec/purchase/util/CmTaskManager;

    move-result-object p1

    new-instance p2, Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic$3$1;

    invoke-direct {p2, p0, v0}, Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic$3$1;-><init>(Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic$3;Lcom/metamoji/mazec/purchase/util/NtDownloadBackgroundTaskForMazecDic;)V

    invoke-virtual {p1, p2}, Lcom/metamoji/mazec/purchase/util/CmTaskManager;->runOnUIThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 176
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "[NtDownloadManagerForMazecDic]error occurred in download dictinary: %s"

    invoke-static {p2, p1}, Lcom/metamoji/mazec/purchase/util/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 179
    :cond_0
    invoke-static {}, Lcom/metamoji/mazec/purchase/LbInAppPurchaseUtils;->isKindle()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, -0x1

    if-ne p2, p1, :cond_1

    .line 183
    new-instance v0, Lcom/metamoji/mazec/purchase/util/NtDownloadBackgroundTaskForMazecDicKindle;

    iget-object p1, p0, Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic$3;->this$0:Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic;

    .line 184
    invoke-virtual {p1}, Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic$3;->val$downloadDic:Ljava/util/LinkedHashMap;

    iget-boolean v3, p0, Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic$3;->val$isUpdate:Z

    iget-boolean v4, p0, Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic$3;->val$showCompletedMsg:Z

    iget-object v5, p0, Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic$3;->val$listener:Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic$OnFinishedListener;

    invoke-direct/range {v0 .. v5}, Lcom/metamoji/mazec/purchase/util/NtDownloadBackgroundTaskForMazecDicKindle;-><init>(Landroid/content/Context;Ljava/util/LinkedHashMap;ZZLcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic$OnFinishedListener;)V

    .line 186
    :try_start_1
    invoke-static {}, Lcom/metamoji/mazec/purchase/util/CmTaskManager;->getInstance()Lcom/metamoji/mazec/purchase/util/CmTaskManager;

    move-result-object p1

    new-instance p2, Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic$3$2;

    invoke-direct {p2, p0, v0}, Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic$3$2;-><init>(Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic$3;Lcom/metamoji/mazec/purchase/util/NtDownloadBackgroundTaskForMazecDicKindle;)V

    invoke-virtual {p1, p2}, Lcom/metamoji/mazec/purchase/util/CmTaskManager;->runOnUIThread(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    move-object p1, v0

    .line 193
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "[NtDownloadManagerForMazecDicKindle]error occurred in download dictinary: %s"

    invoke-static {p2, p1}, Lcom/metamoji/mazec/purchase/util/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 198
    :cond_1
    iget-object p1, p0, Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic$3;->val$listener:Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic$OnFinishedListener;

    if-eqz p1, :cond_2

    const/4 p2, 0x1

    .line 199
    invoke-interface {p1, p2}, Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic$OnFinishedListener;->onFinish(Z)V

    :cond_2
    :goto_0
    return-void
.end method
