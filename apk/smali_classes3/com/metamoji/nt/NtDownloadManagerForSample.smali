.class public Lcom/metamoji/nt/NtDownloadManagerForSample;
.super Ljava/lang/Object;
.source "NtDownloadManagerForSample.java"

# interfaces
.implements Lcom/metamoji/lb/LbDownloadUtil$ILbDownloadUtilProgress;


# static fields
.field static final DOWNLOAD_TEMP_DIR:Ljava/lang/String; = "sample_dl"

.field static final DOWNLOAD_TEMP_FILE:Ljava/lang/String; = "download_sample"


# instance fields
.field m_activity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/fragment/app/FragmentActivity;",
            ">;"
        }
    .end annotation
.end field

.field m_cancelBtn:Lcom/metamoji/ui/common/UiButtonHeader;

.field m_downloadProgressDlg:Lcom/metamoji/ui/dialog/UiDownloadProgress;

.field m_progressBar:Landroid/widget/ProgressBar;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createTempDirectory()Ljava/io/File;
    .locals 4

    const/4 v0, 0x0

    .line 359
    :try_start_0
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getTemporaryDataDirectory()Ljava/io/File;

    move-result-object v1

    .line 361
    const-string/jumbo v2, "sample_dl"

    const-string v3, ""

    invoke-static {v2, v3, v1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 363
    :try_start_1
    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->deleteDirOrFile(Ljava/io/File;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 366
    :catch_0
    :try_start_2
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    move-result v2

    if-nez v2, :cond_0

    .line 367
    const-string v1, "cannot create temporary directory."

    invoke-static {v1}, Lcom/metamoji/cm/CmLog;->warn(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return-object v0

    :cond_0
    return-object v1

    :catch_1
    move-exception v1

    .line 372
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "failed to create temporary directory. : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/metamoji/cm/CmLog;->warn(Ljava/lang/String;)V

    return-object v0
.end method

.method private performDownload(ZZZ)Z
    .locals 7

    .line 107
    const-string p1, "[NtDownloadmanagerForSample] performDownload Failed."

    invoke-virtual {p0}, Lcom/metamoji/nt/NtDownloadManagerForSample;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 109
    const-string p1, "[NtDownloadmanagerForSample] performDownload Failed. activity is null"

    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;)V

    return v0

    .line 112
    :cond_0
    invoke-virtual {p2}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    .line 113
    invoke-virtual {p2}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 115
    :try_start_0
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v3

    new-instance v4, Lcom/metamoji/nt/NtDownloadManagerForSample$1;

    invoke-direct {v4, p0, p3, p2, v1}, Lcom/metamoji/nt/NtDownloadManagerForSample$1;-><init>(Lcom/metamoji/nt/NtDownloadManagerForSample;ZLandroidx/fragment/app/FragmentActivity;Landroidx/fragment/app/FragmentManager;)V

    invoke-virtual {v3, v4}, Lcom/metamoji/cm/CmTaskManager;->runOnUIThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7

    const/4 v1, 0x0

    .line 146
    :try_start_1
    invoke-static {}, Lcom/metamoji/nt/notify/NtSysInfoManager;->updateStateAsync()V

    .line 147
    :catch_0
    :goto_0
    invoke-static {}, Lcom/metamoji/nt/notify/NtSysInfoManager;->GetState()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v3, :cond_1

    const-wide/16 v3, 0x1f4

    .line 149
    :try_start_2
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    .line 155
    :cond_1
    :try_start_3
    invoke-static {}, Lcom/metamoji/nt/notify/NtSysInfoManager;->GetState()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_2

    .line 156
    sget v3, Lcom/metamoji/noteanytime/R$string;->Sample_Note_Msg_Offline:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/metamoji/nt/NtDownloadManagerForSample;->showMsg(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 219
    :try_start_4
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v1

    new-instance v2, Lcom/metamoji/nt/NtDownloadManagerForSample$3;

    invoke-direct {v2, p0, p3, p2}, Lcom/metamoji/nt/NtDownloadManagerForSample$3;-><init>(Lcom/metamoji/nt/NtDownloadManagerForSample;ZLandroidx/fragment/app/FragmentActivity;)V

    invoke-virtual {v1, v2}, Lcom/metamoji/cm/CmTaskManager;->runOnUIThread(Ljava/lang/Runnable;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    :catch_1
    move-exception p2

    .line 246
    invoke-static {p2, p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_1
    return v0

    .line 160
    :cond_2
    :try_start_5
    const-string/jumbo v3, "sample_note"

    invoke-static {v3}, Lcom/metamoji/nt/notify/NtSysInfoManager;->GetStringData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_a

    .line 161
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_3

    goto/16 :goto_6

    .line 167
    :cond_3
    invoke-virtual {p0, v3}, Lcom/metamoji/nt/NtDownloadManagerForSample;->doDownload(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-nez v3, :cond_4

    .line 219
    :try_start_6
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v1

    new-instance v2, Lcom/metamoji/nt/NtDownloadManagerForSample$3;

    invoke-direct {v2, p0, p3, p2}, Lcom/metamoji/nt/NtDownloadManagerForSample$3;-><init>(Lcom/metamoji/nt/NtDownloadManagerForSample;ZLandroidx/fragment/app/FragmentActivity;)V

    invoke-virtual {v1, v2}, Lcom/metamoji/cm/CmTaskManager;->runOnUIThread(Ljava/lang/Runnable;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_2

    :catch_2
    move-exception p2

    .line 246
    invoke-static {p2, p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_2
    return v0

    .line 171
    :cond_4
    :try_start_7
    const-string/jumbo v4, "tempDir"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/File;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 175
    :try_start_8
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v1

    new-instance v5, Lcom/metamoji/nt/NtDownloadManagerForSample$2;

    invoke-direct {v5, p0}, Lcom/metamoji/nt/NtDownloadManagerForSample$2;-><init>(Lcom/metamoji/nt/NtDownloadManagerForSample;)V

    invoke-virtual {v1, v5}, Lcom/metamoji/cm/CmTaskManager;->runOnUIThread(Ljava/lang/Runnable;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v1, v4

    goto :goto_8

    .line 195
    :catch_3
    :goto_3
    :try_start_9
    const-string v1, "errorMessage"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_5

    goto :goto_4

    .line 208
    :cond_5
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_6

    .line 209
    sget v1, Lcom/metamoji/noteanytime/R$string;->Sample_Note_Msg_Download_Failed:I

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    .line 211
    :cond_6
    sget v3, Lcom/metamoji/noteanytime/R$string;->Sample_Note_Msg_Download_Failed_With_Error:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 213
    const-string v5, "%@"

    const-string v6, "%s"

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 214
    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 219
    :goto_4
    :try_start_a
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v3

    new-instance v5, Lcom/metamoji/nt/NtDownloadManagerForSample$3;

    invoke-direct {v5, p0, p3, p2}, Lcom/metamoji/nt/NtDownloadManagerForSample$3;-><init>(Lcom/metamoji/nt/NtDownloadManagerForSample;ZLandroidx/fragment/app/FragmentActivity;)V

    invoke-virtual {v3, v5}, Lcom/metamoji/cm/CmTaskManager;->runOnUIThread(Ljava/lang/Runnable;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    goto :goto_5

    :catch_4
    move-exception p2

    .line 246
    invoke-static {p2, p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_5
    if-eqz v4, :cond_7

    .line 251
    invoke-static {v4}, Lcom/metamoji/cm/CmUtils;->deleteDirOrFile(Ljava/io/File;)Z

    :cond_7
    if-eqz v1, :cond_8

    .line 259
    invoke-virtual {p0, v1}, Lcom/metamoji/nt/NtDownloadManagerForSample;->showMsg(Ljava/lang/String;)V

    return v0

    :cond_8
    if-nez p3, :cond_9

    .line 266
    sget p1, Lcom/metamoji/noteanytime/R$string;->Download_Msg_Completed:I

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/metamoji/nt/NtDownloadManagerForSample;->showMsg(Ljava/lang/String;)V

    :cond_9
    const/4 p1, 0x1

    return p1

    .line 219
    :cond_a
    :goto_6
    :try_start_b
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v1

    new-instance v2, Lcom/metamoji/nt/NtDownloadManagerForSample$3;

    invoke-direct {v2, p0, p3, p2}, Lcom/metamoji/nt/NtDownloadManagerForSample$3;-><init>(Lcom/metamoji/nt/NtDownloadManagerForSample;ZLandroidx/fragment/app/FragmentActivity;)V

    invoke-virtual {v1, v2}, Lcom/metamoji/cm/CmTaskManager;->runOnUIThread(Ljava/lang/Runnable;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5

    goto :goto_7

    :catch_5
    move-exception p2

    .line 246
    invoke-static {p2, p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_7
    return v0

    :catchall_1
    move-exception v0

    .line 219
    :goto_8
    :try_start_c
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v2

    new-instance v3, Lcom/metamoji/nt/NtDownloadManagerForSample$3;

    invoke-direct {v3, p0, p3, p2}, Lcom/metamoji/nt/NtDownloadManagerForSample$3;-><init>(Lcom/metamoji/nt/NtDownloadManagerForSample;ZLandroidx/fragment/app/FragmentActivity;)V

    invoke-virtual {v2, v3}, Lcom/metamoji/cm/CmTaskManager;->runOnUIThread(Ljava/lang/Runnable;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_6

    goto :goto_9

    :catch_6
    move-exception p2

    .line 246
    invoke-static {p2, p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_9
    if-eqz v1, :cond_b

    .line 251
    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->deleteDirOrFile(Ljava/io/File;)Z

    .line 253
    :cond_b
    throw v0

    :catch_7
    move-exception p2

    .line 137
    invoke-static {p2, p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    return v0
.end method


# virtual methods
.method public doDownload(Ljava/lang/String;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 274
    const-string v0, "Download Error"

    const-string v1, "errorMessage"

    sget-boolean v2, Lcom/metamoji/noteanytime/ModelInfo;->isEvalEdition:Z

    if-eqz v2, :cond_0

    .line 278
    const-string v2, "http://cdn.metamoji.com/"

    const-string v3, "https://cdn.metamoji.com/"

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 279
    invoke-virtual {p1, v3, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 284
    :cond_0
    invoke-static {}, Lcom/metamoji/nt/NtDownloadManagerForSample;->createTempDirectory()Ljava/io/File;

    move-result-object v2

    if-nez v2, :cond_1

    const/4 p1, 0x0

    return-object p1

    .line 289
    :cond_1
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 290
    const-string/jumbo v4, "tempDir"

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    :try_start_0
    new-instance v4, Ljava/io/File;

    const-string v5, "download_sample"

    invoke-direct {v4, v2, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 295
    iget-object v2, p0, Lcom/metamoji/nt/NtDownloadManagerForSample;->m_downloadProgressDlg:Lcom/metamoji/ui/dialog/UiDownloadProgress;

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    move-object v2, p0

    :goto_0
    invoke-static {p1, v4, v2}, Lcom/metamoji/lb/LbDownloadUtil;->downloadWithProgressDialog(Ljava/lang/String;Ljava/io/File;Lcom/metamoji/lb/LbDownloadUtil$ILbDownloadUtilProgress;)Ljava/util/Map;

    move-result-object p1

    if-nez p1, :cond_3

    .line 297
    const-string p1, "Download Cancel"

    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;)V

    return-object v3

    .line 300
    :cond_3
    const-string v2, "error"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 301
    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;)V

    .line 302
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_4

    .line 303
    const-string p1, ""

    :cond_4
    invoke-virtual {v3, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v3

    .line 306
    :cond_5
    const-string p1, "file"

    invoke-virtual {v3, p1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :catch_0
    move-exception p1

    .line 309
    invoke-static {p1, v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 310
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v3
.end method

.method public getActivity()Landroidx/fragment/app/FragmentActivity;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/metamoji/nt/NtDownloadManagerForSample;->m_activity:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/FragmentActivity;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    return-object v0

    .line 76
    :cond_1
    invoke-static {}, Lcom/metamoji/ui/UiCurrentActivityManager;->getInstance()Lcom/metamoji/ui/UiCurrentActivityManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/ui/UiCurrentActivityManager;->getCurrentActivityOrNull()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    return-object v0
.end method

.method public sampleNoteDownloadOnStartup()Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 84
    invoke-direct {p0, v0, v0, v1}, Lcom/metamoji/nt/NtDownloadManagerForSample;->performDownload(ZZZ)Z

    move-result v0

    return v0
.end method

.method public sampleNoteDownloadOnUserOperation()Z
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 93
    invoke-direct {p0, v0, v0, v1}, Lcom/metamoji/nt/NtDownloadManagerForSample;->performDownload(ZZZ)Z

    move-result v0

    return v0
.end method

.method public setCancelableTask(Lcom/metamoji/lb/LbDownloadUtil$LbDownloadTask;)V
    .locals 2

    .line 387
    iget-object v0, p0, Lcom/metamoji/nt/NtDownloadManagerForSample;->m_cancelBtn:Lcom/metamoji/ui/common/UiButtonHeader;

    if-eqz v0, :cond_0

    .line 388
    new-instance v1, Lcom/metamoji/nt/NtDownloadManagerForSample$5;

    invoke-direct {v1, p0, p1}, Lcom/metamoji/nt/NtDownloadManagerForSample$5;-><init>(Lcom/metamoji/nt/NtDownloadManagerForSample;Lcom/metamoji/lb/LbDownloadUtil$LbDownloadTask;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/common/UiButtonHeader;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public setProgress(II)V
    .locals 1

    .line 403
    iget-object v0, p0, Lcom/metamoji/nt/NtDownloadManagerForSample;->m_progressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 404
    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 405
    iget-object p1, p0, Lcom/metamoji/nt/NtDownloadManagerForSample;->m_progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->incrementProgressBy(I)V

    :cond_0
    return-void
.end method

.method public setProgressBarIndeterminate(Z)V
    .locals 1

    .line 415
    iget-object v0, p0, Lcom/metamoji/nt/NtDownloadManagerForSample;->m_progressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 416
    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    :cond_0
    return-void
.end method

.method public setStartupActivity(Landroidx/fragment/app/FragmentActivity;)V
    .locals 1

    .line 67
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/metamoji/nt/NtDownloadManagerForSample;->m_activity:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method showMsg(Ljava/lang/String;)V
    .locals 2

    .line 321
    :try_start_0
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/nt/NtDownloadManagerForSample$4;

    invoke-direct {v1, p0, p1}, Lcom/metamoji/nt/NtDownloadManagerForSample$4;-><init>(Lcom/metamoji/nt/NtDownloadManagerForSample;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->runOnUIThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 344
    const-string v0, "[NtDownloadManagerForSample] showMsg Error."

    invoke-static {p1, v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method
