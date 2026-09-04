.class public Lcom/metamoji/mazec/CheckUpdateActivity;
.super Landroidx/fragment/app/FragmentActivity;
.source "CheckUpdateActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    return-void
.end method

.method public static startActivityForStartUp(Landroid/content/Context;)V
    .locals 3

    .line 54
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/metamoji/mazec/CheckUpdateActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    .line 55
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 56
    const-string v1, "com.metamoji.mazecshowmsg"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 57
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static startActivityForUserOperation(Landroid/content/Context;)V
    .locals 3

    .line 48
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/metamoji/mazec/CheckUpdateActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    .line 49
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 50
    const-string v1, "com.metamoji.mazecshowmsg"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 51
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 20
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 21
    invoke-static {}, Lcom/metamoji/mazec/purchase/util/CmTaskManager;->initialize()V

    .line 22
    invoke-static {}, Lcom/metamoji/mazec/purchase/util/CmTaskManager;->getInstance()Lcom/metamoji/mazec/purchase/util/CmTaskManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/metamoji/mazec/purchase/util/CmTaskManager;->setActivity(Landroidx/fragment/app/FragmentActivity;)V

    const/4 p1, 0x1

    .line 23
    invoke-virtual {p0, p1}, Lcom/metamoji/mazec/CheckUpdateActivity;->requestWindowFeature(I)Z

    .line 24
    invoke-virtual {p0}, Lcom/metamoji/mazec/CheckUpdateActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 25
    const-string v1, "com.metamoji.mazecshowmsg"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    .line 26
    new-instance v0, Lcom/metamoji/mazec/CheckUpdateActivity$1;

    invoke-direct {v0, p0}, Lcom/metamoji/mazec/CheckUpdateActivity$1;-><init>(Lcom/metamoji/mazec/CheckUpdateActivity;)V

    if-eqz p1, :cond_0

    .line 35
    new-instance p1, Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic;

    invoke-direct {p1, p0}, Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic;->dictionaryUpdateCheckOnUserOperation(Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic$OnFinishedListener;)V

    return-void

    .line 37
    :cond_0
    new-instance p1, Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic;

    invoke-direct {p1, p0}, Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic;->dictionaryUpdateCheckOnStartup(Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic$OnFinishedListener;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 43
    invoke-virtual {p0}, Lcom/metamoji/mazec/CheckUpdateActivity;->finish()V

    const/4 p1, 0x0

    return p1
.end method
