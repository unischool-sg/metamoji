.class public Lcom/metamoji/nt/NtMazecImsManager;
.super Ljava/lang/Object;
.source "NtMazecImsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/nt/NtMazecImsManager$ToggleListener;,
        Lcom/metamoji/nt/NtMazecImsManager$IUserDataStore;,
        Lcom/metamoji/nt/NtMazecImsManager$IUserSettings;,
        Lcom/metamoji/nt/NtMazecImsManager$InputConnectionWrapper;
    }
.end annotation


# static fields
.field static final CONVERSION_DIC_DIR:Ljava/lang/String; = "user-dic"

.field static final RECOGNITION_DIC_DIR:Ljava/lang/String; = "user-recog"

.field private static _duringToggleImeAndMazec:Z

.field private static _handler:Landroid/os/Handler;

.field public static _instance:Lcom/metamoji/nt/NtMazecImsManager;

.field private static _toggleListener:Lcom/metamoji/nt/NtMazecImsManager$ToggleListener;


# instance fields
.field private _imi:Lcom/metamoji/inputmethodservice/InputMethodService$InputMethodImpl;

.field private _ims:Lcom/metamoji/mazec/MazecIms;

.field private _imsi:Lcom/metamoji/inputmethodservice/InputMethodService$InputMethodSessionImpl;


# direct methods
.method static bridge synthetic -$$Nest$fget_imi(Lcom/metamoji/nt/NtMazecImsManager;)Lcom/metamoji/inputmethodservice/InputMethodService$InputMethodImpl;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/nt/NtMazecImsManager;->_imi:Lcom/metamoji/inputmethodservice/InputMethodService$InputMethodImpl;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget_ims(Lcom/metamoji/nt/NtMazecImsManager;)Lcom/metamoji/mazec/MazecIms;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/nt/NtMazecImsManager;->_ims:Lcom/metamoji/mazec/MazecIms;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget_imsi(Lcom/metamoji/nt/NtMazecImsManager;)Lcom/metamoji/inputmethodservice/InputMethodService$InputMethodSessionImpl;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/nt/NtMazecImsManager;->_imsi:Lcom/metamoji/inputmethodservice/InputMethodService$InputMethodSessionImpl;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$sfget_handler()Landroid/os/Handler;
    .locals 1

    sget-object v0, Lcom/metamoji/nt/NtMazecImsManager;->_handler:Landroid/os/Handler;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfget_toggleListener()Lcom/metamoji/nt/NtMazecImsManager$ToggleListener;
    .locals 1

    sget-object v0, Lcom/metamoji/nt/NtMazecImsManager;->_toggleListener:Lcom/metamoji/nt/NtMazecImsManager$ToggleListener;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfput_duringToggleImeAndMazec(Z)V
    .locals 0

    sput-boolean p0, Lcom/metamoji/nt/NtMazecImsManager;->_duringToggleImeAndMazec:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$smonHideReceiveResult()V
    .locals 0

    invoke-static {}, Lcom/metamoji/nt/NtMazecImsManager;->onHideReceiveResult()V

    return-void
.end method

.method static bridge synthetic -$$Nest$smonHideReceiveResult2(Lcom/metamoji/nt/NtEditorWindowController$ViewForSoftInput;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/metamoji/nt/NtMazecImsManager;->onHideReceiveResult2(Lcom/metamoji/nt/NtEditorWindowController$ViewForSoftInput;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smonShowReceiveResult()V
    .locals 0

    invoke-static {}, Lcom/metamoji/nt/NtMazecImsManager;->onShowReceiveResult()V

    return-void
.end method

.method static bridge synthetic -$$Nest$smonShowReceiveResult2(Lcom/metamoji/nt/NtEditorWindowController$ViewForSoftInput;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/metamoji/nt/NtMazecImsManager;->onShowReceiveResult2(Lcom/metamoji/nt/NtEditorWindowController$ViewForSoftInput;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smtemporarilyChangeImeToMazecCore(Lcom/metamoji/nt/NtEditorWindowController$ViewForSoftInput;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/metamoji/nt/NtMazecImsManager;->temporarilyChangeImeToMazecCore(Lcom/metamoji/nt/NtEditorWindowController$ViewForSoftInput;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 70
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/metamoji/nt/NtMazecImsManager;->_handler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 395
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 396
    new-instance v0, Lcom/metamoji/mazec/MazecIms;

    invoke-direct {v0}, Lcom/metamoji/mazec/MazecIms;-><init>()V

    iput-object v0, p0, Lcom/metamoji/nt/NtMazecImsManager;->_ims:Lcom/metamoji/mazec/MazecIms;

    .line 397
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/mazec/MazecIms;->attachBaseContext(Landroid/content/Context;)V

    .line 398
    iget-object v0, p0, Lcom/metamoji/nt/NtMazecImsManager;->_ims:Lcom/metamoji/mazec/MazecIms;

    invoke-virtual {v0}, Lcom/metamoji/mazec/MazecIms;->onCreate()V

    .line 400
    iget-object v0, p0, Lcom/metamoji/nt/NtMazecImsManager;->_ims:Lcom/metamoji/mazec/MazecIms;

    invoke-virtual {v0}, Lcom/metamoji/mazec/MazecIms;->onCreateInputMethodInterface()Lcom/metamoji/inputmethodservice/InputMethodService$InputMethodImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/nt/NtMazecImsManager;->_imi:Lcom/metamoji/inputmethodservice/InputMethodService$InputMethodImpl;

    .line 401
    iget-object v0, p0, Lcom/metamoji/nt/NtMazecImsManager;->_ims:Lcom/metamoji/mazec/MazecIms;

    invoke-virtual {v0}, Lcom/metamoji/mazec/MazecIms;->onCreateInputMethodSessionInterface()Lcom/metamoji/inputmethodservice/InputMethodService$InputMethodSessionImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/nt/NtMazecImsManager;->_imsi:Lcom/metamoji/inputmethodservice/InputMethodService$InputMethodSessionImpl;

    .line 403
    sget-object v0, Lcom/metamoji/nt/NtMazecImsManager;->_handler:Landroid/os/Handler;

    new-instance v1, Lcom/metamoji/nt/NtMazecImsManager$9;

    invoke-direct {v1, p0}, Lcom/metamoji/nt/NtMazecImsManager$9;-><init>(Lcom/metamoji/nt/NtMazecImsManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static clearDownloadedDictionaries()V
    .locals 1

    .line 130
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/mazec/LangResouceManager;->getInstance(Landroid/content/Context;)Lcom/metamoji/mazec/LangResouceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/mazec/LangResouceManager;->deleteInstalledLanguagePackages()V

    return-void
.end method

.method public static clearUpdateCheckFlag(Landroid/content/Context;)V
    .locals 1

    .line 82
    invoke-static {p0}, Lcom/metamoji/mazec/LangResouceManager;->getInstance(Landroid/content/Context;)Lcom/metamoji/mazec/LangResouceManager;

    move-result-object v0

    .line 83
    invoke-virtual {v0}, Lcom/metamoji/mazec/LangResouceManager;->setNeedReload()V

    .line 84
    invoke-static {p0}, Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic;->clearUpdateCheckFlag(Landroid/content/Context;)V

    return-void
.end method

.method public static dictionaryUpdateCheckOnPurchaseOperation()V
    .locals 4

    .line 103
    new-instance v0, Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic;

    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v2, v2}, Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic;->performDownloadTaskInBackground(Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic$OnFinishedListener;ZZZ)V

    return-void
.end method

.method public static dictionaryUpdateCheckOnStartup()V
    .locals 1

    const/4 v0, 0x0

    .line 92
    invoke-static {v0}, Lcom/metamoji/nt/NtMazecImsManager;->dictionaryUpdateCheckOnStartup(Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic$OnFinishedListener;)V

    return-void
.end method

.method private static dictionaryUpdateCheckOnStartup(Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic$OnFinishedListener;)V
    .locals 3

    .line 95
    new-instance v0, Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic;

    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v1, v2}, Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic;->performDownloadTaskInBackground(Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic$OnFinishedListener;ZZZ)V

    return-void
.end method

.method public static dictionaryUpdateCheckOnUserOperation()V
    .locals 5

    .line 111
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 112
    invoke-static {v0}, Lcom/metamoji/mazec/LangResouceManager;->getInstance(Landroid/content/Context;)Lcom/metamoji/mazec/LangResouceManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 113
    invoke-virtual {v0, v1, v2}, Lcom/metamoji/mazec/LangResouceManager;->getAvailableLanguages(ZZ)Ljava/util/List;

    move-result-object v3

    .line 115
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_0

    .line 116
    new-instance v3, Lcom/metamoji/nt/NtMazecImsManager$1;

    invoke-direct {v3, v0}, Lcom/metamoji/nt/NtMazecImsManager$1;-><init>(Lcom/metamoji/mazec/LangResouceManager;)V

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 126
    :goto_0
    new-instance v0, Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic;

    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3, v2, v2, v1}, Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic;->performDownloadTaskInBackground(Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic$OnFinishedListener;ZZZ)V

    return-void
.end method

.method public static getInstance()Lcom/metamoji/nt/NtMazecImsManager;
    .locals 1

    .line 389
    sget-object v0, Lcom/metamoji/nt/NtMazecImsManager;->_instance:Lcom/metamoji/nt/NtMazecImsManager;

    if-nez v0, :cond_0

    .line 390
    new-instance v0, Lcom/metamoji/nt/NtMazecImsManager;

    invoke-direct {v0}, Lcom/metamoji/nt/NtMazecImsManager;-><init>()V

    sput-object v0, Lcom/metamoji/nt/NtMazecImsManager;->_instance:Lcom/metamoji/nt/NtMazecImsManager;

    .line 392
    :cond_0
    sget-object v0, Lcom/metamoji/nt/NtMazecImsManager;->_instance:Lcom/metamoji/nt/NtMazecImsManager;

    return-object v0
.end method

.method public static isPurchasedMazec()Z
    .locals 1

    .line 373
    sget-object v0, Lcom/metamoji/noteanytime/BuildConfig;->PURCHASED_MAZEC:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 374
    invoke-static {}, Lcom/metamoji/lb/LbInAppPurchaseUtils;->isPurchasedAnyMazec()Z

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

.method public static isUseMazec()Z
    .locals 1

    .line 385
    invoke-static {}, Lcom/metamoji/nt/NtMazecImsManager;->isPurchasedMazec()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/metamoji/nt/NtMazecImsManager;->isUseMazecRaw()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static isUseMazecRaw()Z
    .locals 3

    .line 378
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object v0

    const-string v1, "IsUseMazec"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/nt/NtUserDefaults;->getBoolValue(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static onHideReceiveResult()V
    .locals 4

    .line 323
    sget-object v0, Lcom/metamoji/nt/NtMazecImsManager;->_toggleListener:Lcom/metamoji/nt/NtMazecImsManager$ToggleListener;

    if-eqz v0, :cond_0

    .line 324
    invoke-interface {v0}, Lcom/metamoji/nt/NtMazecImsManager$ToggleListener;->onToggleImeAndMazecHideAfter()V

    .line 326
    :cond_0
    invoke-static {}, Lcom/metamoji/nt/NtMazecImsManager;->isUseMazecRaw()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/metamoji/nt/NtMazecImsManager;->setUseMazecRaw(Z)V

    .line 328
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 329
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getEditorDelegate()Lcom/metamoji/nt/INtEditor;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 330
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getEditorDelegate()Lcom/metamoji/nt/INtEditor;

    move-result-object v0

    invoke-interface {v0}, Lcom/metamoji/nt/INtEditor;->updateButtonStatus()V

    .line 339
    :cond_1
    sget-object v0, Lcom/metamoji/nt/NtMazecImsManager;->_handler:Landroid/os/Handler;

    new-instance v1, Lcom/metamoji/nt/NtMazecImsManager$7;

    invoke-direct {v1}, Lcom/metamoji/nt/NtMazecImsManager$7;-><init>()V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private static onHideReceiveResult2(Lcom/metamoji/nt/NtEditorWindowController$ViewForSoftInput;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 2

    .line 186
    invoke-static {}, Lcom/metamoji/nt/NtMazecImsManager;->isUseMazec()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    invoke-static {}, Lcom/metamoji/nt/NtMazecImsManager;->getInstance()Lcom/metamoji/nt/NtMazecImsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/nt/NtMazecImsManager;->finishInput()V

    .line 190
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/nt/NtEditorWindowController$ViewForSoftInput;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 192
    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 194
    :cond_1
    invoke-static {}, Lcom/metamoji/nt/NtMazecImsManager;->isUseMazecRaw()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/metamoji/nt/NtMazecImsManager;->setUseMazecRaw(Z)V

    .line 196
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 197
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getEditorDelegate()Lcom/metamoji/nt/INtEditor;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 198
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getEditorDelegate()Lcom/metamoji/nt/INtEditor;

    move-result-object v0

    invoke-interface {v0}, Lcom/metamoji/nt/INtEditor;->updateButtonStatus()V

    .line 207
    :cond_2
    sget-object v0, Lcom/metamoji/nt/NtMazecImsManager;->_handler:Landroid/os/Handler;

    new-instance v1, Lcom/metamoji/nt/NtMazecImsManager$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/metamoji/nt/NtMazecImsManager$4;-><init>(Lcom/metamoji/nt/NtEditorWindowController$ViewForSoftInput;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    const-wide/16 p0, 0x64

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static onPurchasedMazec()V
    .locals 1

    const/4 v0, 0x1

    .line 73
    invoke-static {v0}, Lcom/metamoji/nt/NtMazecImsManager;->setUseMazecRaw(Z)V

    .line 76
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 78
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->hover_refresh()V

    :cond_0
    return-void
.end method

.method private static onShowReceiveResult()V
    .locals 2

    .line 363
    sget-object v0, Lcom/metamoji/nt/NtMazecImsManager;->_handler:Landroid/os/Handler;

    new-instance v1, Lcom/metamoji/nt/NtMazecImsManager$8;

    invoke-direct {v1}, Lcom/metamoji/nt/NtMazecImsManager$8;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static onShowReceiveResult2(Lcom/metamoji/nt/NtEditorWindowController$ViewForSoftInput;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 2

    .line 234
    sget-object v0, Lcom/metamoji/nt/NtMazecImsManager;->_handler:Landroid/os/Handler;

    new-instance v1, Lcom/metamoji/nt/NtMazecImsManager$5;

    invoke-direct {v1, p1, p0, p2}, Lcom/metamoji/nt/NtMazecImsManager$5;-><init>(Ljava/lang/Runnable;Lcom/metamoji/nt/NtEditorWindowController$ViewForSoftInput;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static setToggleListener(Lcom/metamoji/nt/NtMazecImsManager$ToggleListener;)V
    .locals 0

    .line 136
    sput-object p0, Lcom/metamoji/nt/NtMazecImsManager;->_toggleListener:Lcom/metamoji/nt/NtMazecImsManager$ToggleListener;

    return-void
.end method

.method private static setUseMazecRaw(Z)V
    .locals 2

    .line 381
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object v0

    const-string v1, "IsUseMazec"

    invoke-virtual {v0, v1, p0}, Lcom/metamoji/nt/NtUserDefaults;->setValue(Ljava/lang/String;Z)V

    return-void
.end method

.method public static temporarilyChangeImeToMazec(Lcom/metamoji/nt/NtEditorWindowController$ViewForSoftInput;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 3

    .line 139
    sget-boolean v0, Lcom/metamoji/nt/NtMazecImsManager;->_duringToggleImeAndMazec:Z

    if-eqz v0, :cond_0

    return-void

    .line 143
    :cond_0
    invoke-static {}, Lcom/metamoji/nt/NtMazecImsManager;->isUseMazec()Z

    move-result v0

    if-nez v0, :cond_1

    .line 145
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 146
    invoke-static {v0}, Lcom/metamoji/mazec/LangResouceManager;->getInstance(Landroid/content/Context;)Lcom/metamoji/mazec/LangResouceManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 147
    invoke-virtual {v0, v1, v2}, Lcom/metamoji/mazec/LangResouceManager;->getAvailableLanguages(ZZ)Ljava/util/List;

    move-result-object v1

    .line 148
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_1

    .line 149
    new-instance v1, Lcom/metamoji/nt/NtMazecImsManager$2;

    invoke-direct {v1, v0, p0, p1, p2}, Lcom/metamoji/nt/NtMazecImsManager$2;-><init>(Lcom/metamoji/mazec/LangResouceManager;Lcom/metamoji/nt/NtEditorWindowController$ViewForSoftInput;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 158
    invoke-static {v1}, Lcom/metamoji/nt/NtMazecImsManager;->dictionaryUpdateCheckOnStartup(Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic$OnFinishedListener;)V

    return-void

    .line 162
    :cond_1
    invoke-static {p0, p1, p2}, Lcom/metamoji/nt/NtMazecImsManager;->temporarilyChangeImeToMazecCore(Lcom/metamoji/nt/NtEditorWindowController$ViewForSoftInput;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void
.end method

.method private static temporarilyChangeImeToMazecCore(Lcom/metamoji/nt/NtEditorWindowController$ViewForSoftInput;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 3

    .line 168
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->editorDelegate()Lcom/metamoji/nt/INtEditor;

    move-result-object v0

    invoke-interface {v0}, Lcom/metamoji/nt/INtEditor;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/metamoji/noteanytime/EditorActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/metamoji/noteanytime/EditorActivity;->setSoftInputDetectable(Z)V

    const/4 v0, 0x1

    .line 171
    sput-boolean v0, Lcom/metamoji/nt/NtMazecImsManager;->_duringToggleImeAndMazec:Z

    .line 175
    new-instance v0, Lcom/metamoji/nt/NtMazecImsManager$3;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, v1, p0, p1, p2}, Lcom/metamoji/nt/NtMazecImsManager$3;-><init>(Landroid/os/Handler;Lcom/metamoji/nt/NtEditorWindowController$ViewForSoftInput;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 180
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/metamoji/nt/NtEditorWindowController;->hideSoftInput(Landroid/view/View;Landroid/os/ResultReceiver;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 182
    invoke-static {p0, p1, p2}, Lcom/metamoji/nt/NtMazecImsManager;->onHideReceiveResult2(Lcom/metamoji/nt/NtEditorWindowController$ViewForSoftInput;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public static toggleImeAndMazec()V
    .locals 1

    .line 269
    sget-boolean v0, Lcom/metamoji/nt/NtMazecImsManager;->_duringToggleImeAndMazec:Z

    if-eqz v0, :cond_0

    return-void

    .line 295
    :cond_0
    invoke-static {}, Lcom/metamoji/nt/NtMazecImsManager;->toggleImeAndMazecCore()V

    return-void
.end method

.method private static toggleImeAndMazecCore()V
    .locals 4

    .line 302
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->editorDelegate()Lcom/metamoji/nt/INtEditor;

    move-result-object v0

    invoke-interface {v0}, Lcom/metamoji/nt/INtEditor;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/metamoji/noteanytime/EditorActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/metamoji/noteanytime/EditorActivity;->setSoftInputDetectable(Z)V

    .line 305
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getFocusUnit()Lcom/metamoji/nt/NtUnitController;

    move-result-object v0

    .line 306
    instance-of v1, v0, Lcom/metamoji/un/text/UnTextUnit;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 307
    sput-boolean v1, Lcom/metamoji/nt/NtMazecImsManager;->_duringToggleImeAndMazec:Z

    .line 311
    new-instance v1, Lcom/metamoji/nt/NtMazecImsManager$6;

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v1, v2}, Lcom/metamoji/nt/NtMazecImsManager$6;-><init>(Landroid/os/Handler;)V

    .line 316
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v2

    check-cast v0, Lcom/metamoji/un/text/UnTextUnit;

    invoke-virtual {v0}, Lcom/metamoji/un/text/UnTextUnit;->getViewForSoftInput()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v2, v0, v1}, Lcom/metamoji/nt/NtEditorWindowController;->hideSoftInput(Landroid/view/View;Landroid/os/ResultReceiver;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 318
    invoke-static {}, Lcom/metamoji/nt/NtMazecImsManager;->onHideReceiveResult()V

    :cond_0
    return-void
.end method


# virtual methods
.method public finishInput()V
    .locals 2

    .line 431
    sget-object v0, Lcom/metamoji/nt/NtMazecImsManager;->_handler:Landroid/os/Handler;

    new-instance v1, Lcom/metamoji/nt/NtMazecImsManager$11;

    invoke-direct {v1, p0}, Lcom/metamoji/nt/NtMazecImsManager$11;-><init>(Lcom/metamoji/nt/NtMazecImsManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public getUserDataStore()Lcom/metamoji/nt/NtMazecImsManager$IUserDataStore;
    .locals 1

    .line 848
    new-instance v0, Lcom/metamoji/nt/NtMazecImsManager$17;

    invoke-direct {v0, p0}, Lcom/metamoji/nt/NtMazecImsManager$17;-><init>(Lcom/metamoji/nt/NtMazecImsManager;)V

    return-object v0
.end method

.method public getUserSettings()Lcom/metamoji/nt/NtMazecImsManager$IUserSettings;
    .locals 1

    .line 719
    new-instance v0, Lcom/metamoji/nt/NtMazecImsManager$16;

    invoke-direct {v0, p0}, Lcom/metamoji/nt/NtMazecImsManager$16;-><init>(Lcom/metamoji/nt/NtMazecImsManager;)V

    return-object v0
.end method

.method public hideSoftInput(ILandroid/os/ResultReceiver;)V
    .locals 2

    .line 468
    sget-object v0, Lcom/metamoji/nt/NtMazecImsManager;->_handler:Landroid/os/Handler;

    new-instance v1, Lcom/metamoji/nt/NtMazecImsManager$13;

    invoke-direct {v1, p0, p1, p2}, Lcom/metamoji/nt/NtMazecImsManager$13;-><init>(Lcom/metamoji/nt/NtMazecImsManager;ILandroid/os/ResultReceiver;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public isSupported(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1

    .line 1016
    invoke-static {}, Lcom/metamoji/nt/NtMazecImsManager;->isUseMazec()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    const-string/jumbo v0, "support_reedit"

    .line 1018
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "support_stroke2text"

    .line 1019
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1021
    :cond_0
    new-instance p1, Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/metamoji/nt/NtMazecImsManager;->_ims:Lcom/metamoji/mazec/MazecIms;

    invoke-virtual {v0}, Lcom/metamoji/mazec/MazecIms;->getLanguage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p1, v0}, Ljava/lang/Boolean;-><init>(Z)V

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreateEditorActivity(Lcom/metamoji/noteanytime/EditorActivity;)V
    .locals 1

    .line 411
    iget-object v0, p0, Lcom/metamoji/nt/NtMazecImsManager;->_ims:Lcom/metamoji/mazec/MazecIms;

    invoke-virtual {v0, p1}, Lcom/metamoji/mazec/MazecIms;->onCreateEditorActivity(Lcom/metamoji/noteanytime/EditorActivity;)V

    return-void
.end method

.method public onDestroyEditorActivity(Lcom/metamoji/noteanytime/EditorActivity;)V
    .locals 1

    .line 415
    iget-object v0, p0, Lcom/metamoji/nt/NtMazecImsManager;->_ims:Lcom/metamoji/mazec/MazecIms;

    invoke-virtual {v0, p1}, Lcom/metamoji/mazec/MazecIms;->onDestroyEditorActivity(Lcom/metamoji/noteanytime/EditorActivity;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 492
    iget-object v0, p0, Lcom/metamoji/nt/NtMazecImsManager;->_ims:Lcom/metamoji/mazec/MazecIms;

    invoke-virtual {v0, p1, p2}, Lcom/metamoji/mazec/MazecIms;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 496
    iget-object v0, p0, Lcom/metamoji/nt/NtMazecImsManager;->_ims:Lcom/metamoji/mazec/MazecIms;

    invoke-virtual {v0, p1, p2}, Lcom/metamoji/mazec/MazecIms;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onNAEditorActivityExecDestory()V
    .locals 1

    .line 419
    iget-object v0, p0, Lcom/metamoji/nt/NtMazecImsManager;->_ims:Lcom/metamoji/mazec/MazecIms;

    invoke-virtual {v0}, Lcom/metamoji/mazec/MazecIms;->onNAEditorActivityExecDestory()V

    return-void
.end method

.method public sendAppPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    .line 484
    sget-object v0, Lcom/metamoji/nt/NtMazecImsManager;->_handler:Landroid/os/Handler;

    new-instance v1, Lcom/metamoji/nt/NtMazecImsManager$15;

    invoke-direct {v1, p0, p1, p2}, Lcom/metamoji/nt/NtMazecImsManager$15;-><init>(Lcom/metamoji/nt/NtMazecImsManager;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public showSoftInput(ILandroid/os/ResultReceiver;)V
    .locals 2

    .line 459
    sget-object v0, Lcom/metamoji/nt/NtMazecImsManager;->_handler:Landroid/os/Handler;

    new-instance v1, Lcom/metamoji/nt/NtMazecImsManager$12;

    invoke-direct {v1, p0, p1, p2}, Lcom/metamoji/nt/NtMazecImsManager$12;-><init>(Lcom/metamoji/nt/NtMazecImsManager;ILandroid/os/ResultReceiver;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public startInput(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;)V
    .locals 2

    .line 423
    sget-object v0, Lcom/metamoji/nt/NtMazecImsManager;->_handler:Landroid/os/Handler;

    new-instance v1, Lcom/metamoji/nt/NtMazecImsManager$10;

    invoke-direct {v1, p0, p1, p2}, Lcom/metamoji/nt/NtMazecImsManager$10;-><init>(Lcom/metamoji/nt/NtMazecImsManager;Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public toggleSoftInput(II)V
    .locals 2

    .line 476
    sget-object v0, Lcom/metamoji/nt/NtMazecImsManager;->_handler:Landroid/os/Handler;

    new-instance v1, Lcom/metamoji/nt/NtMazecImsManager$14;

    invoke-direct {v1, p0, p1, p2}, Lcom/metamoji/nt/NtMazecImsManager$14;-><init>(Lcom/metamoji/nt/NtMazecImsManager;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
