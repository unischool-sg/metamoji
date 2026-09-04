.class Lcom/metamoji/nt/NtStartup$CancellableTask;
.super Landroid/os/AsyncTask;
.source "NtStartup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/nt/NtStartup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CancellableTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/nt/NtStartup;


# direct methods
.method private constructor <init>(Lcom/metamoji/nt/NtStartup;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 287
    iput-object p1, p0, Lcom/metamoji/nt/NtStartup$CancellableTask;->this$0:Lcom/metamoji/nt/NtStartup;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/metamoji/nt/NtStartup;Lcom/metamoji/nt/NtStartup-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/nt/NtStartup$CancellableTask;-><init>(Lcom/metamoji/nt/NtStartup;)V

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

    .line 287
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/metamoji/nt/NtStartup$CancellableTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 9

    .line 295
    invoke-static {}, Lcom/metamoji/nt/NtStartup;->-$$Nest$sfgets_needShareInfoSetup()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 296
    iget-object p1, p0, Lcom/metamoji/nt/NtStartup$CancellableTask;->this$0:Lcom/metamoji/nt/NtStartup;

    invoke-virtual {p1}, Lcom/metamoji/nt/NtStartup;->setupCollaboInfo()V

    .line 300
    :cond_0
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object p1

    .line 301
    invoke-static {}, Lcom/metamoji/nt/NtStartup;->isNeedToStartup()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    .line 303
    invoke-static {}, Lcom/metamoji/nt/NtStartup;->-$$Nest$smgetActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 304
    instance-of v2, v0, Lcom/metamoji/noteanytime/StartupActivity;

    if-eqz v2, :cond_1

    .line 305
    move-object v2, v0

    check-cast v2, Lcom/metamoji/noteanytime/StartupActivity;

    sget v3, Lcom/metamoji/noteanytime/R$string;->Msg_First_Time_Initializing:I

    invoke-virtual {v0, v3}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/metamoji/noteanytime/StartupActivity;->showInfoLabelTextOnMainThread(Ljava/lang/String;)V

    .line 309
    :cond_1
    const-string v2, "LibraryItemVersion"

    const/4 v3, -0x1

    invoke-virtual {p1, v2, v3}, Lcom/metamoji/nt/NtUserDefaults;->getIntValue(Ljava/lang/String;I)I

    move-result v4

    const/4 v5, 0x4

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eq v4, v5, :cond_3

    .line 312
    invoke-static {}, Lcom/metamoji/lb/LbLibraryItemManager;->getInstance()Lcom/metamoji/lb/LbLibraryItemManager;

    move-result-object v8

    if-eq v4, v3, :cond_2

    move v4, v6

    goto :goto_0

    :cond_2
    move v4, v7

    :goto_0
    invoke-virtual {v8, v4}, Lcom/metamoji/lb/LbLibraryItemManager;->setupSystemItem(Z)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 313
    invoke-virtual {p1, v2, v5}, Lcom/metamoji/nt/NtUserDefaults;->setValue(Ljava/lang/String;I)V

    .line 314
    const-string v2, "LbLibraryItemManager#setupSystemItem Completed."

    invoke-static {v2}, Lcom/metamoji/cm/CmLog;->info(Ljava/lang/String;)V

    .line 317
    :cond_3
    invoke-virtual {p0}, Lcom/metamoji/nt/NtStartup$CancellableTask;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_4

    return-object v1

    .line 322
    :cond_4
    const-string v2, "LibraryTemplateVersion"

    invoke-virtual {p1, v2, v3}, Lcom/metamoji/nt/NtUserDefaults;->getIntValue(Ljava/lang/String;I)I

    move-result v4

    const/4 v5, 0x6

    if-eq v4, v5, :cond_6

    .line 325
    invoke-static {}, Lcom/metamoji/lb/LbLibrarySheetTemplateManager;->getInstance()Lcom/metamoji/lb/LbLibrarySheetTemplateManager;

    move-result-object v8

    if-eq v4, v3, :cond_5

    move v4, v6

    goto :goto_1

    :cond_5
    move v4, v7

    :goto_1
    invoke-virtual {v8, v4}, Lcom/metamoji/lb/LbLibrarySheetTemplateManager;->setupSystemSheetTemplate(Z)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 326
    invoke-virtual {p1, v2, v5}, Lcom/metamoji/nt/NtUserDefaults;->setValue(Ljava/lang/String;I)V

    .line 327
    const-string v2, "LbLibrarySheetTemplateManager#setupSystemSheetTemplate Completed."

    invoke-static {v2}, Lcom/metamoji/cm/CmLog;->info(Ljava/lang/String;)V

    .line 330
    :cond_6
    invoke-virtual {p0}, Lcom/metamoji/nt/NtStartup$CancellableTask;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_7

    return-object v1

    .line 335
    :cond_7
    const-string v2, "LibraryBgImageVersion"

    invoke-virtual {p1, v2, v3}, Lcom/metamoji/nt/NtUserDefaults;->getIntValue(Ljava/lang/String;I)I

    move-result v4

    const/4 v5, 0x7

    if-eq v4, v5, :cond_9

    .line 338
    invoke-static {}, Lcom/metamoji/lb/LbLibraryBgImageManager;->getInstance()Lcom/metamoji/lb/LbLibraryBgImageManager;

    move-result-object v8

    if-eq v4, v3, :cond_8

    goto :goto_2

    :cond_8
    move v6, v7

    :goto_2
    invoke-virtual {v8, v6}, Lcom/metamoji/lb/LbLibraryBgImageManager;->setupSystemItem(Z)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 339
    invoke-virtual {p1, v2, v5}, Lcom/metamoji/nt/NtUserDefaults;->setValue(Ljava/lang/String;I)V

    .line 340
    const-string p1, "LbLibraryBgImageManager#setupSystemItem Completed."

    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->info(Ljava/lang/String;)V

    .line 343
    :cond_9
    invoke-virtual {p0}, Lcom/metamoji/nt/NtStartup$CancellableTask;->isCancelled()Z

    move-result p1

    if-eqz p1, :cond_a

    return-object v1

    .line 348
    :cond_a
    invoke-static {}, Lcom/metamoji/nt/NtStartup;->-$$Nest$sfgetmResDLMang()Lcom/metamoji/nt/dl/NtResourceDownloadManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/nt/dl/NtResourceDownloadManager;->needToDownload()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 349
    invoke-static {}, Lcom/metamoji/nt/NtStartup;->-$$Nest$sfgetmResDLMang()Lcom/metamoji/nt/dl/NtResourceDownloadManager;

    move-result-object p1

    new-instance v2, Lcom/metamoji/nt/NtStartup$CancellableTask$1;

    invoke-direct {v2, p0}, Lcom/metamoji/nt/NtStartup$CancellableTask$1;-><init>(Lcom/metamoji/nt/NtStartup$CancellableTask;)V

    invoke-virtual {p1, v2}, Lcom/metamoji/nt/dl/NtResourceDownloadManager;->setCanceller(Lcom/metamoji/nt/dl/INtDownloadCanceller;)Lcom/metamoji/nt/dl/NtResourceDownloadManager;

    move-result-object p1

    .line 354
    invoke-static {v0}, Lcom/metamoji/nt/dl/NtDownloadProgressListener;->createInstance(Ljava/lang/Object;)Lcom/metamoji/nt/dl/NtDownloadProgressListener;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/metamoji/nt/dl/NtResourceDownloadManager;->setListener(Lcom/metamoji/nt/dl/INtDownloadProgressListener;)Lcom/metamoji/nt/dl/NtResourceDownloadManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/nt/dl/NtResourceDownloadManager;->download()Z

    .line 360
    instance-of p1, v0, Lcom/metamoji/noteanytime/StartupActivity;

    if-eqz p1, :cond_b

    .line 361
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p1

    new-instance v2, Lcom/metamoji/nt/NtStartup$CancellableTask$2;

    invoke-direct {v2, p0, v0}, Lcom/metamoji/nt/NtStartup$CancellableTask$2;-><init>(Lcom/metamoji/nt/NtStartup$CancellableTask;Landroidx/fragment/app/FragmentActivity;)V

    invoke-virtual {p1, v2}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    :cond_b
    return-object v1
.end method
