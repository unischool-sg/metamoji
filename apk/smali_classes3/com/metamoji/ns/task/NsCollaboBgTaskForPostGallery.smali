.class public Lcom/metamoji/ns/task/NsCollaboBgTaskForPostGallery;
.super Lcom/metamoji/ns/task/NsCollaboBgTaskBase;
.source "NsCollaboBgTaskForPostGallery.java"


# instance fields
.field m_completeAction:Lcom/metamoji/ns/task/INsCollaboBgTaskForPostGalleryCompleteAction;

.field public roomId:Ljava/lang/String;

.field public shareFile:Ljava/lang/String;

.field public text:Ljava/lang/String;

.field public thumbnailData:[B

.field public title:Ljava/lang/String;

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/metamoji/ns/INsCollaboAction;Lcom/metamoji/ns/task/INsCollaboBgTaskForPostGalleryCompleteAction;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/metamoji/ns/task/NsCollaboBgTaskBase;-><init>(Lcom/metamoji/ns/INsCollaboAction;)V

    .line 38
    iput-object p2, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForPostGallery;->m_completeAction:Lcom/metamoji/ns/task/INsCollaboBgTaskForPostGalleryCompleteAction;

    return-void
.end method


# virtual methods
.method protected onCompleted(ZLjava/lang/Throwable;)V
    .locals 0

    .line 111
    invoke-super {p0, p1, p2}, Lcom/metamoji/ns/task/NsCollaboBgTaskBase;->onCompleted(ZLjava/lang/Throwable;)V

    if-eqz p1, :cond_0

    .line 114
    iget-object p1, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForPostGallery;->m_completeAction:Lcom/metamoji/ns/task/INsCollaboBgTaskForPostGalleryCompleteAction;

    iget-object p2, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForPostGallery;->url:Ljava/lang/String;

    invoke-interface {p1, p2}, Lcom/metamoji/ns/task/INsCollaboBgTaskForPostGalleryCompleteAction;->action(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected taskExec()V
    .locals 4

    .line 47
    iget-object v0, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForPostGallery;->roomId:Ljava/lang/String;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForPostGallery;->shareFile:Ljava/lang/String;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForPostGallery;->thumbnailData:[B

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 52
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/ns/task/NsCollaboBgTaskForPostGallery;->getWaitView()Lcom/metamoji/ns/ui/NsCollaboWaitView;

    move-result-object v0

    .line 53
    sget v1, Lcom/metamoji/noteanytime/R$string;->PostGallery_Requesting:I

    invoke-virtual {v0, v1}, Lcom/metamoji/ns/ui/NsCollaboWaitView;->setMessage(I)V

    const/4 v1, 0x0

    .line 54
    invoke-virtual {v0, v1}, Lcom/metamoji/ns/ui/NsCollaboWaitView;->cancelable(Z)V

    .line 57
    new-instance v0, Lcom/metamoji/ns/service/NsCollaboURLConnectionForPostGallery;

    invoke-direct {v0, p0}, Lcom/metamoji/ns/service/NsCollaboURLConnectionForPostGallery;-><init>(Lcom/metamoji/ns/task/NsCollaboBgTaskBase;)V

    .line 58
    iget-object v2, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForPostGallery;->roomId:Ljava/lang/String;

    iput-object v2, v0, Lcom/metamoji/ns/service/NsCollaboURLConnectionForPostGallery;->roomId:Ljava/lang/String;

    .line 59
    iget-object v2, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForPostGallery;->shareFile:Ljava/lang/String;

    iput-object v2, v0, Lcom/metamoji/ns/service/NsCollaboURLConnectionForPostGallery;->shareFile:Ljava/lang/String;

    .line 60
    iget-object v2, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForPostGallery;->thumbnailData:[B

    iput-object v2, v0, Lcom/metamoji/ns/service/NsCollaboURLConnectionForPostGallery;->thumbnailData:[B

    .line 61
    iget-object v2, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForPostGallery;->title:Ljava/lang/String;

    iput-object v2, v0, Lcom/metamoji/ns/service/NsCollaboURLConnectionForPostGallery;->title:Ljava/lang/String;

    .line 62
    iget-object v2, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForPostGallery;->text:Ljava/lang/String;

    iput-object v2, v0, Lcom/metamoji/ns/service/NsCollaboURLConnectionForPostGallery;->text:Ljava/lang/String;

    .line 65
    :try_start_0
    invoke-virtual {v0}, Lcom/metamoji/ns/service/NsCollaboURLConnectionForPostGallery;->responseStringFromRequest()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_1

    .line 74
    invoke-virtual {p0}, Lcom/metamoji/ns/task/NsCollaboBgTaskForPostGallery;->cancel()Z

    return-void

    .line 83
    :cond_1
    const-string v2, "[MMJNsCollaboBgTaskForPostGallery] response\n%s"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 85
    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 86
    invoke-virtual {p0}, Lcom/metamoji/ns/task/NsCollaboBgTaskForPostGallery;->cancel()Z

    .line 87
    const-string v1, "-1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 89
    sget v0, Lcom/metamoji/noteanytime/R$string;->PostGallery_Error_1:I

    invoke-static {v0}, Lcom/metamoji/ns/NsCollaboUtils;->showAlertMessage(I)V

    return-void

    .line 91
    :cond_2
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 92
    sget v2, Lcom/metamoji/noteanytime/R$string;->PostGallery_Msg_Failed:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%s\n%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/ns/NsCollaboUtils;->showAlertMessage(Ljava/lang/String;)V

    return-void

    .line 98
    :cond_3
    const-string v2, "\r\n|\r|\n"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 99
    array-length v1, v0

    const/4 v2, 0x2

    if-lt v1, v2, :cond_4

    const/4 v1, 0x1

    .line 100
    aget-object v0, v0, v1

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    .line 102
    :goto_0
    iput-object v0, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForPostGallery;->url:Ljava/lang/String;

    return-void

    :catch_0
    move-exception v0

    .line 67
    invoke-virtual {p0}, Lcom/metamoji/ns/task/NsCollaboBgTaskForPostGallery;->cancel()Z

    .line 68
    const-string v1, "NsCollaboBgTaskForPostGallery.taskExec"

    invoke-static {v0, v1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 69
    sget v1, Lcom/metamoji/noteanytime/R$string;->PostGallery_Msg_Failed:I

    invoke-static {v0, v1}, Lcom/metamoji/ns/service/NsCollaboServiceUtil;->messageWithException(Ljava/lang/Exception;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/ns/NsCollaboUtils;->showAlertMessage(Ljava/lang/String;)V

    :cond_5
    :goto_1
    return-void
.end method
