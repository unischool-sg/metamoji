.class public Lcom/metamoji/nt/NtStartup;
.super Ljava/lang/Object;
.source "NtStartup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/nt/NtStartup$CancellableTask;
    }
.end annotation


# static fields
.field private static _activity:Ljava/lang/ref/WeakReference; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/fragment/app/FragmentActivity;",
            ">;"
        }
    .end annotation
.end field

.field private static _instance:Lcom/metamoji/nt/NtStartup; = null

.field private static mResDLMang:Lcom/metamoji/nt/dl/NtResourceDownloadManager; = null

.field private static s_needShareInfoSetup:Z = true


# direct methods
.method static bridge synthetic -$$Nest$sfgetmResDLMang()Lcom/metamoji/nt/dl/NtResourceDownloadManager;
    .locals 1

    sget-object v0, Lcom/metamoji/nt/NtStartup;->mResDLMang:Lcom/metamoji/nt/dl/NtResourceDownloadManager;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgets_needShareInfoSetup()Z
    .locals 1

    sget-boolean v0, Lcom/metamoji/nt/NtStartup;->s_needShareInfoSetup:Z

    return v0
.end method

.method static bridge synthetic -$$Nest$smgetActivity()Landroidx/fragment/app/FragmentActivity;
    .locals 1

    invoke-static {}, Lcom/metamoji/nt/NtStartup;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    .line 121
    invoke-static {v0}, Lcom/metamoji/nt/dl/NtResourceDownloadManager;->createInstance(Z)Lcom/metamoji/nt/dl/NtResourceDownloadManager;

    move-result-object v0

    sput-object v0, Lcom/metamoji/nt/NtStartup;->mResDLMang:Lcom/metamoji/nt/dl/NtResourceDownloadManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkTargetLocale(Lorg/json/JSONArray;Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 215
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    .line 217
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 218
    const-string v4, "*"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    const/4 p0, 0x1

    return p0

    :cond_2
    return v1
.end method

.method private static declared-synchronized createTempDirectory(Ljava/lang/String;)Ljava/io/File;
    .locals 5

    const-string v0, "failed to create temporary directory. : "

    const-class v1, Lcom/metamoji/nt/NtStartup;

    monitor-enter v1

    const/4 v2, 0x0

    .line 267
    :try_start_0
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getTemporaryDataDirectory()Ljava/io/File;

    move-result-object v3

    .line 269
    const-string v4, ""

    invoke-static {p0, v4, v3}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 271
    :try_start_1
    invoke-static {p0}, Lcom/metamoji/cm/CmUtils;->deleteDirOrFile(Ljava/io/File;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 274
    :catch_0
    :try_start_2
    invoke-virtual {p0}, Ljava/io/File;->mkdir()Z

    move-result v3

    if-nez v3, :cond_0

    .line 275
    const-string p0, "cannot create temporary directory."

    invoke-static {p0}, Lcom/metamoji/cm/CmLog;->warn(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 276
    monitor-exit v1

    return-object v2

    .line 278
    :cond_0
    monitor-exit v1

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    .line 280
    :try_start_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/metamoji/cm/CmLog;->warn(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 281
    monitor-exit v1

    return-object v2

    :goto_0
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0
.end method

.method private execCancellableTask()V
    .locals 2

    .line 205
    new-instance v0, Lcom/metamoji/nt/NtStartup$CancellableTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/metamoji/nt/NtStartup$CancellableTask;-><init>(Lcom/metamoji/nt/NtStartup;Lcom/metamoji/nt/NtStartup-IA;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtStartup$CancellableTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private static getActivity()Landroidx/fragment/app/FragmentActivity;
    .locals 1

    .line 62
    sget-object v0, Lcom/metamoji/nt/NtStartup;->_activity:Ljava/lang/ref/WeakReference;

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

    .line 63
    :cond_1
    invoke-static {}, Lcom/metamoji/ui/UiCurrentActivityManager;->getInstance()Lcom/metamoji/ui/UiCurrentActivityManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/ui/UiCurrentActivityManager;->getCurrentActivityOrNull()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Lcom/metamoji/nt/NtStartup;
    .locals 1

    .line 58
    sget-object v0, Lcom/metamoji/nt/NtStartup;->_instance:Lcom/metamoji/nt/NtStartup;

    return-object v0
.end method

.method public static initialize(Landroidx/fragment/app/FragmentActivity;)V
    .locals 5

    .line 68
    sget-object v0, Lcom/metamoji/nt/NtStartup;->_instance:Lcom/metamoji/nt/NtStartup;

    if-eqz v0, :cond_0

    .line 69
    invoke-static {}, Lcom/metamoji/nt/pm/PmCentre;->medicalCheck()V

    return-void

    .line 73
    :cond_0
    new-instance v0, Lcom/metamoji/nt/NtStartup;

    invoke-direct {v0}, Lcom/metamoji/nt/NtStartup;-><init>()V

    sput-object v0, Lcom/metamoji/nt/NtStartup;->_instance:Lcom/metamoji/nt/NtStartup;

    .line 74
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/metamoji/nt/NtStartup;->_activity:Ljava/lang/ref/WeakReference;

    .line 76
    invoke-static {p0}, Lcom/metamoji/df/controller/DfUtility;->initialize(Landroidx/fragment/app/FragmentActivity;)V

    .line 77
    invoke-static {p0}, Lcom/metamoji/nt/NtSystemSettings;->initialize(Landroid/content/Context;)V

    .line 80
    sget-object v0, Lcom/metamoji/nt/NtStartup;->_instance:Lcom/metamoji/nt/NtStartup;

    invoke-direct {v0}, Lcom/metamoji/nt/NtStartup;->onInitialize()V

    .line 83
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object v0

    .line 84
    const-string v1, "LastVersion"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/nt/NtUserDefaults;->getIntValue(Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x6

    if-ne v2, v3, :cond_1

    .line 87
    sget-object p0, Lcom/metamoji/nt/NtStartup;->_instance:Lcom/metamoji/nt/NtStartup;

    invoke-direct {p0}, Lcom/metamoji/nt/NtStartup;->onSetup()Z

    move-result p0

    if-eqz p0, :cond_3

    .line 89
    invoke-virtual {v0, v1, v4}, Lcom/metamoji/nt/NtUserDefaults;->setValue(Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    if-ge v3, v4, :cond_3

    .line 93
    sget-object v2, Lcom/metamoji/nt/NtStartup;->_instance:Lcom/metamoji/nt/NtStartup;

    invoke-direct {v2, v3, v4}, Lcom/metamoji/nt/NtStartup;->onUpdate(II)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 95
    instance-of v2, p0, Lcom/metamoji/noteanytime/StartupActivity;

    if-eqz v2, :cond_2

    .line 96
    move-object v2, p0

    check-cast v2, Lcom/metamoji/noteanytime/StartupActivity;

    sget v3, Lcom/metamoji/noteanytime/R$string;->Msg_First_Time_Initializing:I

    invoke-virtual {p0, v3}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/metamoji/noteanytime/StartupActivity;->showInfoLabelTextOnMainThread(Ljava/lang/String;)V

    .line 99
    :cond_2
    invoke-virtual {v0, v1, v4}, Lcom/metamoji/nt/NtUserDefaults;->setValue(Ljava/lang/String;I)V

    .line 104
    :cond_3
    :goto_0
    sget-object p0, Lcom/metamoji/nt/NtStartup;->_instance:Lcom/metamoji/nt/NtStartup;

    invoke-direct {p0}, Lcom/metamoji/nt/NtStartup;->onStartup()V

    .line 107
    sget-object p0, Lcom/metamoji/nt/NtStartup;->_instance:Lcom/metamoji/nt/NtStartup;

    invoke-direct {p0}, Lcom/metamoji/nt/NtStartup;->execCancellableTask()V

    return-void
.end method

.method public static isNeedDisplayStartupActivity()Z
    .locals 1

    .line 136
    sget-boolean v0, Lcom/metamoji/nt/NtStartup;->s_needShareInfoSetup:Z

    if-nez v0, :cond_1

    invoke-static {}, Lcom/metamoji/nt/NtStartup;->isNeedToStartup()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public static isNeedToStartup()Z
    .locals 4

    .line 124
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object v0

    .line 125
    const-string v1, "LibraryItemVersion"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/nt/NtUserDefaults;->getIntValue(Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x4

    if-ne v1, v3, :cond_1

    const-string v1, "LibraryTemplateVersion"

    .line 126
    invoke-virtual {v0, v1, v2}, Lcom/metamoji/nt/NtUserDefaults;->getIntValue(Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x6

    if-ne v1, v3, :cond_1

    const-string v1, "LibraryBgImageVersion"

    .line 127
    invoke-virtual {v0, v1, v2}, Lcom/metamoji/nt/NtUserDefaults;->getIntValue(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/metamoji/nt/NtStartup;->mResDLMang:Lcom/metamoji/nt/dl/NtResourceDownloadManager;

    .line 128
    invoke-virtual {v0}, Lcom/metamoji/nt/dl/NtResourceDownloadManager;->needToDownload()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private onInitialize()V
    .locals 0

    .line 144
    invoke-static {}, Lcom/metamoji/sd/SdPrivateDriveManagerInitializer;->doInitialize()V

    .line 146
    invoke-static {}, Lcom/metamoji/sd/SdDriveManagerInitializer;->doInitialize()V

    return-void
.end method

.method private onSetup()Z
    .locals 1

    .line 158
    invoke-static {}, Lcom/metamoji/tle/TextLineExtractorManager;->initTextLineExtractorDic()V

    const/4 v0, 0x1

    return v0
.end method

.method private onStartup()V
    .locals 2

    .line 168
    invoke-static {}, Lcom/metamoji/nt/NtFactoryMaps;->registerUnitContainerExtenders()V

    .line 169
    invoke-static {}, Lcom/metamoji/nt/NtFactoryMaps;->registerModelCreators()V

    .line 173
    invoke-static {}, Lcom/metamoji/nt/pm/PmCentre;->medicalCheck()V

    .line 177
    invoke-static {}, Lcom/metamoji/nt/NtSystemSettings;->getInstance()Lcom/metamoji/nt/NtSystemSettings;

    move-result-object v0

    const-string v1, "MMJNtSystemPenSettings"

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtSystemSettings;->getSettings(Ljava/lang/String;)Lcom/metamoji/df/controller/ISettings;

    move-result-object v0

    check-cast v0, Lcom/metamoji/nt/NtSystemPenSettings;

    .line 178
    invoke-virtual {v0}, Lcom/metamoji/nt/NtSystemPenSettings;->updateModel()V

    .line 183
    invoke-static {}, Lcom/metamoji/media/MediaUploadManager;->SharedInstance()Lcom/metamoji/media/MediaUploadManager;

    move-result-object v0

    .line 184
    invoke-virtual {v0}, Lcom/metamoji/media/MediaUploadManager;->prepare()V

    .line 185
    invoke-static {}, Lcom/metamoji/media/MediaUploadManager2;->SharedInstance()Lcom/metamoji/media/MediaUploadManager2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/media/MediaUploadManager2;->prepare()V

    return-void
.end method

.method private onSuspendOrTerminate()V
    .locals 0

    return-void
.end method

.method private onUpdate(II)Z
    .locals 0

    .line 198
    invoke-static {}, Lcom/metamoji/tle/TextLineExtractorManager;->initTextLineExtractorDic()V

    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public resume()V
    .locals 0

    .line 118
    invoke-direct {p0}, Lcom/metamoji/nt/NtStartup;->execCancellableTask()V

    return-void
.end method

.method setupCollaboInfo()V
    .locals 3

    .line 229
    const-string v0, "NtStartup:setupCollaboInfo"

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    .line 231
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 232
    new-instance v1, Lcom/metamoji/nt/NtStartup$1;

    invoke-direct {v1, p0, v0}, Lcom/metamoji/nt/NtStartup$1;-><init>(Lcom/metamoji/nt/NtStartup;Ljava/util/concurrent/CountDownLatch;)V

    .line 237
    invoke-static {}, Lcom/metamoji/nt/NtStartup;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    .line 232
    invoke-static {v1, v2}, Lcom/metamoji/ns/NsCollaboCommand;->checkCollaboInfoWithAfterAction(Lcom/metamoji/ns/INsCollaboAction;Landroidx/fragment/app/FragmentActivity;)V

    .line 241
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 243
    const-string v1, "NtStartup:setupCollaboInfo error."

    invoke-static {v0, v1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_0
    const/4 v0, 0x0

    .line 247
    sput-boolean v0, Lcom/metamoji/nt/NtStartup;->s_needShareInfoSetup:Z

    .line 251
    :try_start_1
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/nt/NtStartup$2;

    invoke-direct {v1, p0}, Lcom/metamoji/nt/NtStartup$2;-><init>(Lcom/metamoji/nt/NtStartup;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->runOnUIThread(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 261
    const-string v1, "NtStartup#StartupActivity startMainActivity Failed."

    invoke-static {v0, v1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public suspend()V
    .locals 0

    .line 112
    invoke-direct {p0}, Lcom/metamoji/nt/NtStartup;->onSuspendOrTerminate()V

    return-void
.end method
