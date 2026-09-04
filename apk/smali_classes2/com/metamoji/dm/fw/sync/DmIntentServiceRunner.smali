.class public Lcom/metamoji/dm/fw/sync/DmIntentServiceRunner;
.super Landroid/app/IntentService;
.source "DmIntentServiceRunner.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    const-string v0, "DmIntentServiceRunner"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 2

    .line 18
    :try_start_0
    const-string v0, "DmIntentService"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 19
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 20
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    .line 22
    instance-of v1, v0, Lcom/metamoji/dm/fw/sync/DmIntentService;

    if-eqz v1, :cond_0

    .line 23
    check-cast v0, Lcom/metamoji/dm/fw/sync/DmIntentService;

    invoke-virtual {p0}, Lcom/metamoji/dm/fw/sync/DmIntentServiceRunner;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/metamoji/dm/fw/sync/DmIntentService;->onHandleIntent(Landroid/content/Intent;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    .line 26
    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    return-void
.end method
