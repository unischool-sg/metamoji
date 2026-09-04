.class public Lcom/metamoji/mazec/purchase/util/NtDownloadBackgroundTaskForMazecDic;
.super Landroid/os/AsyncTask;
.source "NtDownloadBackgroundTaskForMazecDic.java"

# interfaces
.implements Lcom/metamoji/mazec/purchase/LbDownloadUtil$ILbDownloadUtilProgress;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;",
        "Lcom/metamoji/mazec/purchase/LbDownloadUtil$ILbDownloadUtilProgress;"
    }
.end annotation


# static fields
.field static final DOWNLOAD_TEMP_DIR:Ljava/lang/String; = "mazec_dic_dl"

.field static final DOWNLOAD_TEMP_FILE:Ljava/lang/String; = "download_dic"


# instance fields
.field m_cancelBtn:Landroid/widget/ImageButton;

.field m_canceled:Z

.field m_contentLength:I

.field m_context:Landroid/content/Context;

.field m_downloadDic:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field m_downloadProgressDlg:Lcom/metamoji/mazec/purchase/util/UiDownloadProgress;

.field m_error:Z

.field m_errorMessage:Ljava/lang/String;

.field m_isCompleteMsg:Z

.field m_isUpdate:Z

.field m_listener:Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic$OnFinishedListener;

.field m_progressBar:Landroid/widget/ProgressBar;


# direct methods
.method static bridge synthetic -$$Nest$mgetDownloadLabel(Lcom/metamoji/mazec/purchase/util/NtDownloadBackgroundTaskForMazecDic;Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/metamoji/mazec/purchase/util/NtDownloadBackgroundTaskForMazecDic;->getDownloadLabel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/LinkedHashMap;ZZLcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic$OnFinishedListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;ZZ",
            "Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic$OnFinishedListener;",
            ")V"
        }
    .end annotation

    .line 51
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, 0x0

    .line 39
    iput-boolean v0, p0, Lcom/metamoji/mazec/purchase/util/NtDownloadBackgroundTaskForMazecDic;->m_error:Z

    const/4 v1, 0x0

    .line 40
    iput-object v1, p0, Lcom/metamoji/mazec/purchase/util/NtDownloadBackgroundTaskForMazecDic;->m_errorMessage:Ljava/lang/String;

    .line 41
    iput v0, p0, Lcom/metamoji/mazec/purchase/util/NtDownloadBackgroundTaskForMazecDic;->m_contentLength:I

    .line 42
    iput-boolean v0, p0, Lcom/metamoji/mazec/purchase/util/NtDownloadBackgroundTaskForMazecDic;->m_canceled:Z

    .line 52
    iput-object p1, p0, Lcom/metamoji/mazec/purchase/util/NtDownloadBackgroundTaskForMazecDic;->m_context:Landroid/content/Context;

    .line 53
    iput-boolean p3, p0, Lcom/metamoji/mazec/purchase/util/NtDownloadBackgroundTaskForMazecDic;->m_isUpdate:Z

    .line 54
    iput-boolean p4, p0, Lcom/metamoji/mazec/purchase/util/NtDownloadBackgroundTaskForMazecDic;->m_isCompleteMsg:Z

    .line 55
    iput-object p2, p0, Lcom/metamoji/mazec/purchase/util/NtDownloadBackgroundTaskForMazecDic;->m_downloadDic:Ljava/util/LinkedHashMap;

    .line 56
    iput-object p5, p0, Lcom/metamoji/mazec/purchase/util/NtDownloadBackgroundTaskForMazecDic;->m_listener:Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic$OnFinishedListener;

    return-void
.end method

.method private static createTempDirectory(Landroid/content/Context;)Ljava/io/File;
    .locals 3

    const/4 v0, 0x0

    .line 223
    :try_start_0
    invoke-static {p0}, Lcom/metamoji/mazec/purchase/LbDownloadUtil;->getTemporaryDataDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    .line 225
    const-string v1, "mazec_dic_dl"

    const-string v2, ""

    invoke-static {v1, v2, p0}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 227
    :try_start_1
    invoke-static {p0}, Lcom/metamoji/mazec/purchase/LbDownloadUtil;->deleteDirOrFile(Ljava/io/File;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 230
    :catch_0
    :try_start_2
    invoke-virtual {p0}, Ljava/io/File;->mkdir()Z

    move-result v1

    if-nez v1, :cond_0

    .line 231
    const-string p0, "cannot create temporary directory."

    invoke-static {p0}, Lcom/metamoji/mazec/purchase/util/CmLog;->warn(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return-object v0

    :cond_0
    return-object p0

    :catch_1
    move-exception p0

    .line 236
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "failed to create temporary directory. : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/metamoji/mazec/purchase/util/CmLog;->warn(Ljava/lang/String;)V

    return-object v0
.end method

.method private getDownloadLabel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 261
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const-string/jumbo v0, "string.dic_downloading_msg"

    invoke-static {v0}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 262
    invoke-static {p2}, Lcom/metamoji/mazec/purchase/LbInAppPurchaseUtils;->getLangLabelFromMazecLocale(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "%s  %s"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public dismissProgressDlg()V
    .locals 2

    .line 339
    iget-object v0, p0, Lcom/metamoji/mazec/purchase/util/NtDownloadBackgroundTaskForMazecDic;->m_downloadProgressDlg:Lcom/metamoji/mazec/purchase/util/UiDownloadProgress;

    if-eqz v0, :cond_0

    .line 341
    :try_start_0
    invoke-static {}, Lcom/metamoji/mazec/purchase/util/CmTaskManager;->getInstance()Lcom/metamoji/mazec/purchase/util/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/mazec/purchase/util/NtDownloadBackgroundTaskForMazecDic$5;

    invoke-direct {v1, p0}, Lcom/metamoji/mazec/purchase/util/NtDownloadBackgroundTaskForMazecDic$5;-><init>(Lcom/metamoji/mazec/purchase/util/NtDownloadBackgroundTaskForMazecDic;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/mazec/purchase/util/CmTaskManager;->runOnUIThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 350
    invoke-static {v0}, Lcom/metamoji/mazec/purchase/util/CmLog;->error(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public varargs doDownload([Ljava/lang/Void;)V
    .locals 10

    .line 109
    iget-object p1, p0, Lcom/metamoji/mazec/purchase/util/NtDownloadBackgroundTaskForMazecDic;->m_downloadDic:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 110
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 111
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 112
    const-string v2, "[NtDownloadBackgroundTaskForMazecDic]doDownload : %s"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/metamoji/mazec/purchase/util/CmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 118
    invoke-static {}, Lcom/metamoji/mazec/purchase/util/CmTaskManager;->getInstance()Lcom/metamoji/mazec/purchase/util/CmTaskManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/mazec/purchase/util/CmTaskManager;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/metamoji/mazec/purchase/util/CmTaskManager;->getInstance()Lcom/metamoji/mazec/purchase/util/CmTaskManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/mazec/purchase/util/CmTaskManager;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lcom/metamoji/mazec/purchase/util/NtDownloadBackgroundTaskForMazecDic;->m_context:Landroid/content/Context;

    .line 120
    :goto_1
    invoke-virtual {p0, v2, v1}, Lcom/metamoji/mazec/purchase/util/NtDownloadBackgroundTaskForMazecDic;->onDownloadStart(Landroid/content/Context;Ljava/lang/String;)V

    .line 122
    invoke-virtual {p0, v2, v0}, Lcom/metamoji/mazec/purchase/util/NtDownloadBackgroundTaskForMazecDic;->downloadExec(Landroid/content/Context;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 123
    const-string v3, "errorMessage"

    const/4 v4, 0x1

    if-eqz v0, :cond_a

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto/16 :goto_9

    .line 136
    :cond_1
    const-string/jumbo v3, "tempDir"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    .line 137
    const-string v5, "filePath"

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v5, 0x0

    if-eqz v0, :cond_5

    .line 142
    :try_start_0
    invoke-static {v2}, Lcom/metamoji/mazec/purchase/LbInAppPurchaseUtils;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 143
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    .line 144
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "UpdateDic:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v8, 0x0

    .line 145
    invoke-interface {v6, v1, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 146
    invoke-interface {v7, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 148
    :cond_2
    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 151
    invoke-static {v2}, Lcom/metamoji/mazec/LangResouceManager;->getInstance(Landroid/content/Context;)Lcom/metamoji/mazec/LangResouceManager;

    move-result-object v1

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Lcom/metamoji/mazec/LangResouceManager;->installLanguagePackage(Ljava/io/File;)I

    move-result v0

    if-gtz v0, :cond_3

    .line 153
    iput-boolean v4, p0, Lcom/metamoji/mazec/purchase/util/NtDownloadBackgroundTaskForMazecDic;->m_error:Z

    .line 154
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string/jumbo v1, "string.dic_register_failed_msg"

    invoke-static {v1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/mazec/purchase/util/NtDownloadBackgroundTaskForMazecDic;->m_errorMessage:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    if-eqz v3, :cond_7

    .line 167
    :try_start_1
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 168
    :goto_2
    array-length v1, v0

    if-ge v5, v1, :cond_4

    .line 169
    aget-object v1, v0, v5

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 171
    :cond_4
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_5

    .line 157
    :cond_5
    :try_start_2
    const-string v0, "[NtDownloadBackgroundTaskForMazecDic]doDownload : canceled"

    invoke-static {v0}, Lcom/metamoji/mazec/purchase/util/CmLog;->debug(Ljava/lang/String;)V

    .line 158
    iput-boolean v4, p0, Lcom/metamoji/mazec/purchase/util/NtDownloadBackgroundTaskForMazecDic;->m_canceled:Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v3, :cond_c

    .line 167
    :try_start_3
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    .line 168
    :goto_3
    array-length v0, p1

    if-ge v5, v0, :cond_6

    .line 169
    aget-object v0, p1, v5

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 171
    :cond_6
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_a

    :catch_0
    move-exception p1

    .line 174
    invoke-static {p1}, Lcom/metamoji/mazec/purchase/util/CmLog;->error(Ljava/lang/Throwable;)V

    goto/16 :goto_a

    :catchall_0
    move-exception p1

    goto :goto_6

    :catch_1
    move-exception v0

    .line 162
    :try_start_4
    invoke-static {v0}, Lcom/metamoji/mazec/purchase/util/CmLog;->error(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v3, :cond_7

    .line 167
    :try_start_5
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 168
    :goto_4
    array-length v1, v0

    if-ge v5, v1, :cond_4

    .line 169
    aget-object v1, v0, v5

    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :catch_2
    move-exception v0

    .line 174
    invoke-static {v0}, Lcom/metamoji/mazec/purchase/util/CmLog;->error(Ljava/lang/Throwable;)V

    .line 177
    :cond_7
    :goto_5
    invoke-virtual {p0}, Lcom/metamoji/mazec/purchase/util/NtDownloadBackgroundTaskForMazecDic;->onDownloadFinish()V

    goto/16 :goto_0

    :goto_6
    if-eqz v3, :cond_9

    .line 167
    :try_start_6
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 168
    :goto_7
    array-length v1, v0

    if-ge v5, v1, :cond_8

    .line 169
    aget-object v1, v0, v5

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    .line 171
    :cond_8
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_8

    :catch_3
    move-exception v0

    .line 174
    invoke-static {v0}, Lcom/metamoji/mazec/purchase/util/CmLog;->error(Ljava/lang/Throwable;)V

    .line 176
    :cond_9
    :goto_8
    throw p1

    .line 124
    :cond_a
    :goto_9
    const-string p1, "[NtDownloadBackgroundTaskForMazecDic]doDownload : error"

    invoke-static {p1}, Lcom/metamoji/mazec/purchase/util/CmLog;->debug(Ljava/lang/String;)V

    .line 125
    iput-boolean v4, p0, Lcom/metamoji/mazec/purchase/util/NtDownloadBackgroundTaskForMazecDic;->m_error:Z

    .line 126
    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_b

    .line 127
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_b

    .line 128
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string/jumbo v1, "string.dic_download_failed_msg_with_error"

    invoke-static {v1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 129
    const-string v1, "%@"

    const-string v2, "%s"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 130
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/mazec/purchase/util/NtDownloadBackgroundTaskForMazecDic;->m_errorMessage:Ljava/lang/String;

    goto :goto_a

    .line 132
    :cond_b
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const-string/jumbo v0, "string.dic_download_failed_msg"

    invoke-static {v0}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/mazec/purchase/util/NtDownloadBackgroundTaskForMazecDic;->m_errorMessage:Ljava/lang/String;

    .line 179
    :cond_c
    :goto_a
    invoke-virtual {p0}, Lcom/metamoji/mazec/purchase/util/NtDownloadBackgroundTaskForMazecDic;->dismissProgressDlg()V

    return-void
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

    .line 31
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/metamoji/mazec/purchase/util/NtDownloadBackgroundTaskForMazecDic;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 0

    .line 69
    invoke-virtual {p0, p1}, Lcom/metamoji/mazec/purchase/util/NtDownloadBackgroundTaskForMazecDic;->doDownload([Ljava/lang/Void;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public downloadExec(Landroid/content/Context;Ljava/lang/String;)Ljava/util/HashMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 186
    const-string v0, "Download Error. url=%s"

    const-string v1, "errorMessage"

    invoke-static {p1}, Lcom/metamoji/mazec/purchase/util/NtDownloadBackgroundTaskForMazecDic;->createTempDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 191
    :cond_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 192
    const-string/jumbo v3, "tempDir"

    invoke-virtual {v2, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    :try_start_0
    new-instance v3, Ljava/io/File;

    const-string v4, "download_dic"

    invoke-direct {v3, p1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 197
    iget-object p1, p0, Lcom/metamoji/mazec/purchase/util/NtDownloadBackgroundTaskForMazecDic;->m_downloadProgressDlg:Lcom/metamoji/mazec/purchase/util/UiDownloadProgress;

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    move-object p1, p0

    :goto_0
    invoke-static {p2, v3, p1}, Lcom/metamoji/mazec/purchase/LbDownloadUtil;->downloadWithProgressDialog(Ljava/lang/String;Ljava/io/File;Lcom/metamoji/mazec/purchase/LbDownloadUtil$ILbDownloadUtilProgress;)Ljava/util/Map;

    move-result-object p1

    if-nez p1, :cond_2

    .line 199
    const-string p1, "Download Cancel"

    invoke-static {p1}, Lcom/metamoji/mazec/purchase/util/CmLog;->error(Ljava/lang/String;)V

    return-object v2

    .line 202
    :cond_2
    const-string v4, "error"

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 203
    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/metamoji/mazec/purchase/util/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 204
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_3

    .line 205
    const-string p1, ""

    :cond_3
    invoke-virtual {v2, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v2

    .line 208
    :cond_4
    const-string p1, "filePath"

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception p1

    .line 211
    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/metamoji/mazec/purchase/util/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 212
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v2
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/metamoji/mazec/purchase/util/NtDownloadBackgroundTaskForMazecDic;->m_errorMessage:Ljava/lang/String;

    return-object v0
.end method

.method public initWithDownloadDic(Ljava/util/LinkedHashMap;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 74
    iput-boolean p2, p0, Lcom/metamoji/mazec/purchase/util/NtDownloadBackgroundTaskForMazecDic;->m_isUpdate:Z

    .line 75
    iput-object p1, p0, Lcom/metamoji/mazec/purchase/util/NtDownloadBackgroundTaskForMazecDic;->m_downloadDic:Ljava/util/LinkedHashMap;

    .line 77
    const-string p1, "[NtDownloadBackgroundTaskForMazecDic]initWithDownloadDic"

    invoke-static {p1}, Lcom/metamoji/mazec/purchase/util/CmLog;->debug(Ljava/lang/String;)V

    .line 79
    :try_start_0
    invoke-static {}, Lcom/metamoji/mazec/purchase/util/CmTaskManager;->getInstance()Lcom/metamoji/mazec/purchase/util/CmTaskManager;

    move-result-object p1

    new-instance p2, Lcom/metamoji/mazec/purchase/util/NtDownloadBackgroundTaskForMazecDic$1;

    invoke-direct {p2, p0}, Lcom/metamoji/mazec/purchase/util/NtDownloadBackgroundTaskForMazecDic$1;-><init>(Lcom/metamoji/mazec/purchase/util/NtDownloadBackgroundTaskForMazecDic;)V

    invoke-virtual {p1, p2}, Lcom/metamoji/mazec/purchase/util/CmTaskManager;->runOnUIThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 94
    const-string p2, "[NtDownloadBackgroundTaskForMazecDic] initWithDownloadDic Failed."

    invoke-static {p1, p2}, Lcom/metamoji/mazec/purchase/util/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method public isCanceled()Z
    .locals 1

    .line 356
    iget-boolean v0, p0, Lcom/metamoji/mazec/purchase/util/NtDownloadBackgroundTaskForMazecDic;->m_canceled:Z

    return v0
.end method

.method public isSuccess()Z
    .locals 1

    .line 102
    iget-boolean v0, p0, Lcom/metamoji/mazec/purchase/util/NtDownloadBackgroundTaskForMazecDic;->m_error:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public onDownloadFinish()V
    .locals 2

    .line 322
    iget-object v0, p0, Lcom/metamoji/mazec/purchase/util/NtDownloadBackgroundTaskForMazecDic;->m_downloadProgressDlg:Lcom/metamoji/mazec/purchase/util/UiDownloadProgress;

    if-eqz v0, :cond_0

    .line 324
    :try_start_0
    invoke-static {}, Lcom/metamoji/mazec/purchase/util/CmTaskManager;->getInstance()Lcom/metamoji/mazec/purchase/util/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/mazec/purchase/util/NtDownloadBackgroundTaskForMazecDic$4;

    invoke-direct {v1, p0}, Lcom/metamoji/mazec/purchase/util/NtDownloadBackgroundTaskForMazecDic$4;-><init>(Lcom/metamoji/mazec/purchase/util/NtDownloadBackgroundTaskForMazecDic;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/mazec/purchase/util/CmTaskManager;->runOnUIThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 333
    invoke-static {v0}, Lcom/metamoji/mazec/purchase/util/CmLog;->error(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public onDownloadStart(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 304
    iget-object v0, p0, Lcom/metamoji/mazec/purchase/util/NtDownloadBackgroundTaskForMazecDic;->m_downloadProgressDlg:Lcom/metamoji/mazec/purchase/util/UiDownloadProgress;

    if-eqz v0, :cond_0

    .line 306
    :try_start_0
    invoke-static {}, Lcom/metamoji/mazec/purchase/util/CmTaskManager;->getInstance()Lcom/metamoji/mazec/purchase/util/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/mazec/purchase/util/NtDownloadBackgroundTaskForMazecDic$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/metamoji/mazec/purchase/util/NtDownloadBackgroundTaskForMazecDic$3;-><init>(Lcom/metamoji/mazec/purchase/util/NtDownloadBackgroundTaskForMazecDic;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/mazec/purchase/util/CmTaskManager;->runOnUIThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 314
    invoke-static {p1}, Lcom/metamoji/mazec/purchase/util/CmLog;->error(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 31
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/metamoji/mazec/purchase/util/NtDownloadBackgroundTaskForMazecDic;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method public onPostExecute(Ljava/lang/Void;)V
    .locals 3

    .line 243
    const-string p1, "[NtDownloadBackgroundTaskForMazecDic]onPostExecute"

    invoke-static {p1}, Lcom/metamoji/mazec/purchase/util/CmLog;->debug(Ljava/lang/String;)V

    .line 245
    iget-boolean p1, p0, Lcom/metamoji/mazec/purchase/util/NtDownloadBackgroundTaskForMazecDic;->m_isCompleteMsg:Z

    if-eqz p1, :cond_2

    .line 246
    invoke-virtual {p0}, Lcom/metamoji/mazec/purchase/util/NtDownloadBackgroundTaskForMazecDic;->isCanceled()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 247
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/mazec/purchase/util/NtDownloadBackgroundTaskForMazecDic;->isSuccess()Z

    move-result p1

    .line 253
    iget-object v0, p0, Lcom/metamoji/mazec/purchase/util/NtDownloadBackgroundTaskForMazecDic;->m_context:Landroid/content/Context;

    if-eqz p1, :cond_1

    .line 249
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const-string/jumbo v0, "string.dic_download_completed_msg"

    invoke-static {v0}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 250
    iget-object v0, p0, Lcom/metamoji/mazec/purchase/util/NtDownloadBackgroundTaskForMazecDic;->m_context:Landroid/content/Context;

    iget-boolean v1, p0, Lcom/metamoji/mazec/purchase/util/NtDownloadBackgroundTaskForMazecDic;->m_isUpdate:Z

    iget-object v2, p0, Lcom/metamoji/mazec/purchase/util/NtDownloadBackgroundTaskForMazecDic;->m_listener:Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic$OnFinishedListener;

    invoke-static {v0, p1, v1, v2}, Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic;->showConfirmMsg(Landroid/content/Context;Ljava/lang/String;ZLcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic$OnFinishedListener;)V

    return-void

    .line 253
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/mazec/purchase/util/NtDownloadBackgroundTaskForMazecDic;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    iget-boolean v1, p0, Lcom/metamoji/mazec/purchase/util/NtDownloadBackgroundTaskForMazecDic;->m_isUpdate:Z

    iget-object v2, p0, Lcom/metamoji/mazec/purchase/util/NtDownloadBackgroundTaskForMazecDic;->m_listener:Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic$OnFinishedListener;

    invoke-static {v0, p1, v1, v2}, Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic;->showConfirmMsg(Landroid/content/Context;Ljava/lang/String;ZLcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic$OnFinishedListener;)V

    return-void

    .line 256
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/metamoji/mazec/purchase/util/NtDownloadBackgroundTaskForMazecDic;->m_listener:Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic$OnFinishedListener;

    if-eqz p1, :cond_3

    .line 257
    invoke-virtual {p0}, Lcom/metamoji/mazec/purchase/util/NtDownloadBackgroundTaskForMazecDic;->isSuccess()Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic$OnFinishedListener;->onFinish(Z)V

    :cond_3
    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .line 65
    iget-object v0, p0, Lcom/metamoji/mazec/purchase/util/NtDownloadBackgroundTaskForMazecDic;->m_downloadDic:Ljava/util/LinkedHashMap;

    iget-boolean v1, p0, Lcom/metamoji/mazec/purchase/util/NtDownloadBackgroundTaskForMazecDic;->m_isUpdate:Z

    invoke-virtual {p0, v0, v1}, Lcom/metamoji/mazec/purchase/util/NtDownloadBackgroundTaskForMazecDic;->initWithDownloadDic(Ljava/util/LinkedHashMap;Z)V

    return-void
.end method

.method public setCancelableTask(Lcom/metamoji/mazec/purchase/LbDownloadUtil$LbDownloadTask;)V
    .locals 2

    .line 270
    iget-object v0, p0, Lcom/metamoji/mazec/purchase/util/NtDownloadBackgroundTaskForMazecDic;->m_cancelBtn:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 271
    new-instance v1, Lcom/metamoji/mazec/purchase/util/NtDownloadBackgroundTaskForMazecDic$2;

    invoke-direct {v1, p0, p1}, Lcom/metamoji/mazec/purchase/util/NtDownloadBackgroundTaskForMazecDic$2;-><init>(Lcom/metamoji/mazec/purchase/util/NtDownloadBackgroundTaskForMazecDic;Lcom/metamoji/mazec/purchase/LbDownloadUtil$LbDownloadTask;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public setProgress(II)V
    .locals 1

    .line 285
    iget-object v0, p0, Lcom/metamoji/mazec/purchase/util/NtDownloadBackgroundTaskForMazecDic;->m_progressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 286
    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 287
    iget-object p1, p0, Lcom/metamoji/mazec/purchase/util/NtDownloadBackgroundTaskForMazecDic;->m_progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->incrementProgressBy(I)V

    :cond_0
    return-void
.end method

.method public setProgressBarIndeterminate(Z)V
    .locals 1

    .line 297
    iget-object v0, p0, Lcom/metamoji/mazec/purchase/util/NtDownloadBackgroundTaskForMazecDic;->m_progressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 298
    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    :cond_0
    return-void
.end method
