.class public Lcom/metamoji/noteanytime/NoteAnytimeApplication;
.super Landroid/app/Application;
.source "NoteAnytimeApplication.java"

# interfaces
.implements Lcom/metamoji/cm/ICmAppLowMemory;
.implements Lcom/metamoji/cm/ICmApplication;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/noteanytime/NoteAnytimeApplication$LowMemoryEvent;,
        Lcom/metamoji/noteanytime/NoteAnytimeApplication$FatalErrorEvent;,
        Lcom/metamoji/noteanytime/NoteAnytimeApplication$IFatalErrorListener;
    }
.end annotation


# static fields
.field public static logger:Lcom/metamoji/lib/utils/UtLog;

.field private static onLowMemoryEvent:Lcom/metamoji/noteanytime/NoteAnytimeApplication$LowMemoryEvent;

.field private static sInstance:Lcom/metamoji/noteanytime/NoteAnytimeApplication;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 182
    invoke-static {}, Lcom/metamoji/noteanytime/NoteAnytimeApplication$LowMemoryEvent;->getInstance()Lcom/metamoji/noteanytime/NoteAnytimeApplication$LowMemoryEvent;

    move-result-object v0

    sput-object v0, Lcom/metamoji/noteanytime/NoteAnytimeApplication;->onLowMemoryEvent:Lcom/metamoji/noteanytime/NoteAnytimeApplication$LowMemoryEvent;

    .line 301
    new-instance v0, Lcom/metamoji/lib/utils/UtLog;

    const/4 v1, 0x0

    const-string v2, "com.metamoji."

    const-string v3, "MMJ"

    invoke-direct {v0, v3, v1, v2}, Lcom/metamoji/lib/utils/UtLog;-><init>(Ljava/lang/String;Lcom/metamoji/lib/utils/UtLog;Ljava/lang/String;)V

    sput-object v0, Lcom/metamoji/noteanytime/NoteAnytimeApplication;->logger:Lcom/metamoji/lib/utils/UtLog;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 67
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 68
    sput-object p0, Lcom/metamoji/noteanytime/NoteAnytimeApplication;->sInstance:Lcom/metamoji/noteanytime/NoteAnytimeApplication;

    return-void
.end method

.method public static getInstance()Lcom/metamoji/noteanytime/NoteAnytimeApplication;
    .locals 1

    .line 75
    sget-object v0, Lcom/metamoji/noteanytime/NoteAnytimeApplication;->sInstance:Lcom/metamoji/noteanytime/NoteAnytimeApplication;

    return-object v0
.end method


# virtual methods
.method public addLowMemoryEventListener(Lcom/metamoji/cm/ICmAppLowMemory$ILowMemoryListener;)V
    .locals 1

    .line 201
    sget-object v0, Lcom/metamoji/noteanytime/NoteAnytimeApplication;->onLowMemoryEvent:Lcom/metamoji/noteanytime/NoteAnytimeApplication$LowMemoryEvent;

    invoke-virtual {v0, p1}, Lcom/metamoji/noteanytime/NoteAnytimeApplication$LowMemoryEvent;->add(Lcom/metamoji/cm/ICmAppLowMemory$ILowMemoryListener;)V

    return-void
.end method

.method public getLowMemoryManager()Lcom/metamoji/cm/ICmAppLowMemory;
    .locals 0

    return-object p0
.end method

.method public getUIProvider()Lcom/metamoji/cm/ICmUIProvider;
    .locals 1

    .line 89
    invoke-static {}, Lcom/metamoji/ui/UiDialogProvider;->getInstance()Lcom/metamoji/ui/UiDialogProvider;

    move-result-object v0

    return-object v0
.end method

.method public isDebug()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isTabletSize(Landroid/content/Context;)Z
    .locals 1

    if-nez p1, :cond_0

    .line 108
    invoke-static {}, Lcom/metamoji/ui/UiCurrentActivityManager;->getInstance()Lcom/metamoji/ui/UiCurrentActivityManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/ui/UiCurrentActivityManager;->getCurrentActivityOrNull()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-nez p1, :cond_0

    .line 111
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/NoteAnytimeApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 114
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 115
    sget v0, Lcom/metamoji/noteanytime/R$bool;->isTabletSize:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    return p1
.end method

.method public onApplicationLowMemory()V
    .locals 1

    .line 190
    const-string v0, "NoteAnytimeApp:applicationLowMemory"

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->info(Ljava/lang/String;)V

    .line 191
    sget-object v0, Lcom/metamoji/noteanytime/NoteAnytimeApplication;->onLowMemoryEvent:Lcom/metamoji/noteanytime/NoteAnytimeApplication$LowMemoryEvent;

    invoke-virtual {v0}, Lcom/metamoji/noteanytime/NoteAnytimeApplication$LowMemoryEvent;->invoke()V

    return-void
.end method

.method public onCreate()V
    .locals 5

    .line 305
    invoke-static {p0}, Lcom/metamoji/lib/dialog/UtStandardString;->setContext(Landroid/content/Context;)V

    .line 306
    sget-object v0, Lcom/metamoji/lib/dialog/UtDialogConfig;->INSTANCE:Lcom/metamoji/lib/dialog/UtDialogConfig;

    sget v1, Lcom/metamoji/noteanytime/R$style;->UtDialogAlternativeTheme:I

    invoke-virtual {v0, v1}, Lcom/metamoji/lib/dialog/UtDialogConfig;->setDialogTheme(I)V

    .line 307
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/NoteAnytimeApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/metamoji/cm/CmUtils;->initialize(Lcom/metamoji/cm/ICmApplication;Landroid/content/Context;)V

    .line 308
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/NoteAnytimeApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/metamoji/noteanytime/R$string;->app_name:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/metamoji/noteanytime/NoteAnytimeApplication;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".log.ctrl"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "Android-Share-G-ClassRoom"

    invoke-static {v2, v3, v0, v1}, Lcom/metamoji/cm/CmLog;->initialize(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    new-instance v0, Lcom/metamoji/noteanytime/NoteAnytimeApplication$1;

    invoke-direct {v0, p0}, Lcom/metamoji/noteanytime/NoteAnytimeApplication$1;-><init>(Lcom/metamoji/noteanytime/NoteAnytimeApplication;)V

    invoke-static {p0, v0}, Lcom/metamoji/lib/utils/UtLib;->initialize(Landroid/content/Context;Lcom/metamoji/lib/utils/IUtExternalLogger;)V

    .line 341
    new-instance v0, Lcom/metamoji/noteanytime/NoteAnytimeApplication$2;

    invoke-direct {v0, p0}, Lcom/metamoji/noteanytime/NoteAnytimeApplication$2;-><init>(Lcom/metamoji/noteanytime/NoteAnytimeApplication;)V

    invoke-static {v0}, Lcom/metamoji/df/sprite/TypefaceResolver;->setCustomResolver(Lcom/metamoji/df/sprite/TypefaceResolver$ICustomResolver;)V

    .line 347
    invoke-static {p0}, Lcom/metamoji/nt/NtUserDefaults;->initialize(Landroid/content/Context;)V

    .line 348
    invoke-static {}, Lcom/metamoji/noteanytime/NoteAnytimeApplication$FatalErrorEvent;->initialize()V

    .line 349
    invoke-static {p0}, Lcom/metamoji/nt/NtUserDefaults;->initialize(Landroid/content/Context;)V

    .line 350
    sget-object v0, Lcom/metamoji/ui/UiWaitScreen;->INSTANCE:Lcom/metamoji/ui/UiWaitScreen;

    invoke-static {v0, p0}, Lcom/metamoji/cm/CmTaskManager;->initialize(Lcom/metamoji/cm/CmTaskManager$IWaitingScreen;Lcom/metamoji/cm/ICmAppLowMemory;)V

    .line 351
    invoke-static {p0}, Lcom/metamoji/cm/CmByteBuffer;->initialize(Lcom/metamoji/cm/ICmAppLowMemory;)V

    .line 352
    invoke-static {}, Lcom/metamoji/noteanytime/SerializableClasses;->initialize()V

    .line 353
    invoke-static {}, Lcom/metamoji/cm/TempFileRef;->clear()V

    .line 354
    invoke-static {}, Lcom/metamoji/df/model/ModelModuleInfo;->getDefaultModelModuleInfo()Lcom/metamoji/df/model/ModelModuleInfo;

    move-result-object v0

    .line 355
    invoke-virtual {v0, v3}, Lcom/metamoji/df/model/ModelModuleInfo;->setProductName(Ljava/lang/String;)V

    .line 356
    invoke-static {}, Lcom/metamoji/noteanytime/ModelInfo;->getProductVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/df/model/ModelModuleInfo;->setProductVersion(Ljava/lang/String;)V

    .line 362
    new-instance v0, Lcom/metamoji/noteanytime/NoteAnytimeApplication$3;

    invoke-direct {v0, p0}, Lcom/metamoji/noteanytime/NoteAnytimeApplication$3;-><init>(Lcom/metamoji/noteanytime/NoteAnytimeApplication;)V

    invoke-static {p0, v0}, Lcom/metamoji/lib/utils/UtLib;->initialize(Landroid/content/Context;Lcom/metamoji/lib/utils/IUtExternalLogger;)V

    .line 393
    sget-object v0, Lcom/metamoji/nt/NtProxyAuthDriver;->INSTANCE:Lcom/metamoji/nt/NtProxyAuthDriver;

    new-instance v1, Lcom/metamoji/noteanytime/NoteAnytimeApplication$4;

    invoke-direct {v1, p0}, Lcom/metamoji/noteanytime/NoteAnytimeApplication$4;-><init>(Lcom/metamoji/noteanytime/NoteAnytimeApplication;)V

    invoke-static {v0, v1}, Lcom/metamoji/network/NwLib;->initialize(Lcom/metamoji/network/INwProxyAuthDriver;Lcom/metamoji/network/NwWebDAVRequest$ITempFileCreator;)V

    .line 403
    sget v0, Lcom/metamoji/noteanytime/R$string;->cancel:I

    invoke-virtual {p0}, Lcom/metamoji/noteanytime/NoteAnytimeApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/metamoji/noteanytime/R$string;->Msg_CANCEL:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/metamoji/video/AmvStringPool;->setString(ILjava/lang/String;)V

    .line 404
    sget v0, Lcom/metamoji/noteanytime/R$string;->error:I

    invoke-virtual {p0}, Lcom/metamoji/noteanytime/NoteAnytimeApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_VIDEO_UNTREATABLE_FOR_THIS_DEVICE:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/metamoji/video/AmvStringPool;->setString(ILjava/lang/String;)V

    .line 405
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/NoteAnytimeApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getTemporaryDataDirectory()Ljava/io/File;

    move-result-object v1

    new-instance v3, Lcom/metamoji/noteanytime/NoteAnytimeApplication$5;

    invoke-direct {v3, p0}, Lcom/metamoji/noteanytime/NoteAnytimeApplication$5;-><init>(Lcom/metamoji/noteanytime/NoteAnytimeApplication;)V

    const/16 v4, 0x2c1

    invoke-static {v0, v1, v4, v2, v3}, Lcom/metamoji/video/AmvSettings;->initialize(Landroid/content/Context;Ljava/io/File;IZLcom/metamoji/video/IAmvHttpClientSource;)V

    .line 413
    invoke-static {}, Lcom/metamoji/media/video/VfVideoFileManager;->startup()V

    .line 416
    invoke-static {}, Lcom/metamoji/nt/pdfsave/PdfSave;->initFlattenPdf()V

    .line 418
    const-string v0, "NoteAnytimeApp:onCreate"

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->info(Ljava/lang/String;)V

    .line 419
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    return-void
.end method

.method public onLowMemory()V
    .locals 1

    .line 434
    invoke-super {p0}, Landroid/app/Application;->onLowMemory()V

    .line 435
    const-string v0, "NoteAnytimeApp:onLowMemory"

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->info(Ljava/lang/String;)V

    .line 436
    sget-object v0, Lcom/metamoji/noteanytime/NoteAnytimeApplication;->onLowMemoryEvent:Lcom/metamoji/noteanytime/NoteAnytimeApplication$LowMemoryEvent;

    invoke-virtual {v0}, Lcom/metamoji/noteanytime/NoteAnytimeApplication$LowMemoryEvent;->invoke()V

    return-void
.end method

.method public onTerminate()V
    .locals 1

    .line 424
    const-string v0, "NoteAnytimeApp:onTerminate"

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->info(Ljava/lang/String;)V

    .line 425
    sget-object v0, Lcom/metamoji/lib/utils/AppScopeViewModelStoreOwner;->INSTANCE:Lcom/metamoji/lib/utils/AppScopeViewModelStoreOwner;

    invoke-virtual {v0}, Lcom/metamoji/lib/utils/AppScopeViewModelStoreOwner;->releaseViewModelStore()V

    .line 426
    invoke-static {}, Lcom/metamoji/media/video/VfVideoFileManager;->shutdown()V

    .line 427
    invoke-static {}, Lcom/metamoji/cm/CmByteBuffer;->terminate()V

    .line 428
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->terminate()V

    .line 429
    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    return-void
.end method

.method public removeLowMemoryEventListener(Lcom/metamoji/cm/ICmAppLowMemory$ILowMemoryListener;)V
    .locals 1

    .line 210
    sget-object v0, Lcom/metamoji/noteanytime/NoteAnytimeApplication;->onLowMemoryEvent:Lcom/metamoji/noteanytime/NoteAnytimeApplication$LowMemoryEvent;

    invoke-virtual {v0, p1}, Lcom/metamoji/noteanytime/NoteAnytimeApplication$LowMemoryEvent;->remove(Lcom/metamoji/cm/ICmAppLowMemory$ILowMemoryListener;)V

    return-void
.end method
