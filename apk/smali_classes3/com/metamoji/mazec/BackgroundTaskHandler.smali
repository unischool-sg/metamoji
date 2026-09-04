.class public Lcom/metamoji/mazec/BackgroundTaskHandler;
.super Landroid/os/Handler;
.source "BackgroundTaskHandler.java"


# static fields
.field private static mInstance:Lcom/metamoji/mazec/BackgroundTaskHandler;


# instance fields
.field private mCtx:Landroid/content/Context;

.field private mHandlingRecognizeString:Z

.field private mMainHandler:Landroid/os/Handler;

.field private mRACContexts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/metamoji/mazec/RACContext;",
            ">;"
        }
    .end annotation
.end field

.field private mThread:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/os/HandlerThread;Landroid/os/Handler;)V
    .locals 1

    .line 133
    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/metamoji/mazec/BackgroundTaskHandler;->mRACContexts:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 82
    iput-boolean v0, p0, Lcom/metamoji/mazec/BackgroundTaskHandler;->mHandlingRecognizeString:Z

    .line 139
    iput-object p1, p0, Lcom/metamoji/mazec/BackgroundTaskHandler;->mCtx:Landroid/content/Context;

    .line 140
    iput-object p2, p0, Lcom/metamoji/mazec/BackgroundTaskHandler;->mThread:Landroid/os/HandlerThread;

    .line 141
    iput-object p3, p0, Lcom/metamoji/mazec/BackgroundTaskHandler;->mMainHandler:Landroid/os/Handler;

    return-void
.end method

.method public static getHandler()Lcom/metamoji/mazec/BackgroundTaskHandler;
    .locals 1

    .line 126
    sget-object v0, Lcom/metamoji/mazec/BackgroundTaskHandler;->mInstance:Lcom/metamoji/mazec/BackgroundTaskHandler;

    return-object v0
.end method

.method private handleMessageActivateContext(Lcom/metamoji/mazec/RACContext;Lcom/metamoji/mazec/util/MessageParam;)V
    .locals 9

    .line 225
    const-string/jumbo v0, "value"

    const-string v1, "name"

    iget-object p2, p2, Lcom/metamoji/mazec/util/MessageParam;->obj:Ljava/lang/Object;

    check-cast p2, Lcom/metamoji/mazec/util/MessageParam$ContextConfig;

    .line 226
    iget-object v2, p2, Lcom/metamoji/mazec/util/MessageParam$ContextConfig;->lang:Ljava/lang/String;

    if-eqz v2, :cond_8

    .line 227
    new-instance v2, Lcom/metamoji/mazec/RACConfig;

    invoke-direct {v2}, Lcom/metamoji/mazec/RACConfig;-><init>()V

    .line 228
    iget-object v3, p2, Lcom/metamoji/mazec/util/MessageParam$ContextConfig;->lang:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/metamoji/mazec/RACConfig;->setLanguage(Ljava/lang/String;)V

    .line 229
    iget v3, p2, Lcom/metamoji/mazec/util/MessageParam$ContextConfig;->kanjiRecognitionMode:I

    iget p2, p2, Lcom/metamoji/mazec/util/MessageParam$ContextConfig;->schoolYear:I

    invoke-virtual {v2, v3, p2}, Lcom/metamoji/mazec/RACConfig;->setRecognitionConfig(II)V

    .line 234
    :try_start_0
    iget-object p2, p0, Lcom/metamoji/mazec/BackgroundTaskHandler;->mCtx:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string p2, "content://com.metamoji.mazec.tools.near.provider/Near"

    .line 235
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 p2, 0x2

    new-array v5, p2, [Ljava/lang/String;

    const/4 p2, 0x0

    aput-object v1, v5, p2

    const/4 v6, 0x1

    aput-object v0, v5, v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v6, 0x0

    .line 234
    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_7

    .line 242
    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 243
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 244
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    move v4, p2

    .line 246
    :cond_0
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v6

    const v7, -0x7c9d4800

    if-eq v6, v7, :cond_2

    const v7, 0x3b8cd90f

    if-eq v6, v7, :cond_1

    goto :goto_0

    :cond_1
    const-string v6, "clear-explicit-recog"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 251
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    goto :goto_0

    .line 246
    :cond_2
    const-string v6, "clear-implicit-recog"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 248
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p2

    .line 256
    :cond_3
    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v5, :cond_0

    goto :goto_1

    :cond_4
    move v4, p2

    :goto_1
    if-eqz v3, :cond_5

    .line 258
    :try_start_2
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 259
    :cond_5
    invoke-virtual {v2, p2, v4}, Lcom/metamoji/mazec/RACConfig;->setRecognitionUserDictionaryClearFlags(ZZ)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object p2, v0

    if-eqz v3, :cond_6

    .line 241
    :try_start_3
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {p2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6
    :goto_2
    throw p2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    move-object p2, v0

    .line 262
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "error: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Mazec"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 266
    :cond_7
    :goto_3
    invoke-virtual {p1, v2}, Lcom/metamoji/mazec/RACContext;->activate(Lcom/metamoji/mazec/RACConfig;)V

    .line 269
    iget-object p2, p0, Lcom/metamoji/mazec/BackgroundTaskHandler;->mRACContexts:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    return-void
.end method

.method private handleMessageCnvBreakSequence(Lcom/metamoji/mazec/RACContext;Lcom/metamoji/mazec/util/MessageParam;)V
    .locals 0

    .line 471
    invoke-virtual {p1}, Lcom/metamoji/mazec/RACContext;->getConverter()Lcom/metamoji/mazec/converter/ConvertEngine;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 473
    invoke-virtual {p1}, Lcom/metamoji/mazec/converter/ConvertEngine;->breakSequence()V

    :cond_0
    return-void
.end method

.method private handleMessageCnvCommitWord(Lcom/metamoji/mazec/RACContext;Lcom/metamoji/mazec/util/MessageParam;)V
    .locals 2

    .line 450
    iget-object p2, p2, Lcom/metamoji/mazec/util/MessageParam;->obj:Ljava/lang/Object;

    check-cast p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    .line 451
    aget-object v0, p2, v0

    check-cast v0, Lcom/metamoji/mazec/converter/MmjiWord;

    const/4 v1, 0x1

    .line 452
    aget-object p2, p2, v1

    check-cast p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 455
    invoke-virtual {p1}, Lcom/metamoji/mazec/RACContext;->getConverter()Lcom/metamoji/mazec/converter/ConvertEngine;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 458
    invoke-virtual {p1}, Lcom/metamoji/mazec/RACContext;->getConfig()Lcom/metamoji/mazec/RACConfig;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {v1, p1, v0, p2}, Lcom/metamoji/mazec/converter/ConvertEngine;->commit(Lcom/metamoji/mazec/RACConfig;Lcom/metamoji/mazec/converter/MmjiWord;Z)V

    :cond_0
    return-void
.end method

.method private handleMessageCnvConvert(Lcom/metamoji/mazec/RACContext;Lcom/metamoji/mazec/util/MessageParam;)V
    .locals 4

    .line 418
    iget-object v0, p2, Lcom/metamoji/mazec/util/MessageParam;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 420
    invoke-virtual {p1}, Lcom/metamoji/mazec/RACContext;->getConverter()Lcom/metamoji/mazec/converter/ConvertEngine;

    move-result-object v1

    .line 421
    invoke-virtual {p1}, Lcom/metamoji/mazec/RACContext;->getConfig()Lcom/metamoji/mazec/RACConfig;

    move-result-object p1

    const/4 v2, 0x0

    .line 422
    aget-object v2, v0, v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x2

    .line 423
    aget-object v0, v0, v3

    check-cast v0, Lcom/metamoji/mazec/RACExecContext;

    if-eqz v1, :cond_0

    .line 430
    invoke-virtual {v1, p1, v2, v0}, Lcom/metamoji/mazec/converter/ConvertEngine;->convert(Lcom/metamoji/mazec/RACConfig;Ljava/lang/String;Lcom/metamoji/mazec/RACExecContext;)Lcom/metamoji/mazec/converter/ConvertResult;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 433
    iput-object p1, p2, Lcom/metamoji/mazec/util/MessageParam;->obj:Ljava/lang/Object;

    .line 434
    iget-object p1, p0, Lcom/metamoji/mazec/BackgroundTaskHandler;->mMainHandler:Landroid/os/Handler;

    const/4 v0, 0x3

    invoke-virtual {p1, v0, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method private handleMessageCnvEnableConversion(Lcom/metamoji/mazec/RACContext;Lcom/metamoji/mazec/util/MessageParam;)V
    .locals 0

    .line 494
    iget-object p2, p2, Lcom/metamoji/mazec/util/MessageParam;->obj:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Boolean;

    if-eqz p2, :cond_0

    .line 496
    invoke-virtual {p1}, Lcom/metamoji/mazec/RACContext;->getConfig()Lcom/metamoji/mazec/RACConfig;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 498
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/metamoji/mazec/RACConfig;->setConversionEnabled(Z)V

    :cond_0
    return-void
.end method

.method private handleMessageCnvEnableLearning(Lcom/metamoji/mazec/RACContext;Lcom/metamoji/mazec/util/MessageParam;)V
    .locals 0

    .line 481
    iget-object p2, p2, Lcom/metamoji/mazec/util/MessageParam;->obj:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Boolean;

    if-eqz p2, :cond_0

    .line 483
    invoke-virtual {p1}, Lcom/metamoji/mazec/RACContext;->getConfig()Lcom/metamoji/mazec/RACConfig;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 485
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/metamoji/mazec/RACConfig;->setConversionLearningEnabled(Z)V

    :cond_0
    return-void
.end method

.method private handleMessageCnvPredict(Lcom/metamoji/mazec/RACContext;Lcom/metamoji/mazec/util/MessageParam;)V
    .locals 6

    .line 353
    iget-object v0, p2, Lcom/metamoji/mazec/util/MessageParam;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    .line 355
    aget-object v1, v0, v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x1

    .line 356
    aget-object v2, v0, v2

    check-cast v2, Lcom/metamoji/mazec/recognizer/HwRecognitionResult;

    const/4 v3, 0x2

    .line 357
    aget-object v0, v0, v3

    check-cast v0, Lcom/metamoji/mazec/RACExecContext;

    if-eqz v1, :cond_3

    .line 362
    invoke-virtual {p1}, Lcom/metamoji/mazec/RACContext;->getConverter()Lcom/metamoji/mazec/converter/ConvertEngine;

    move-result-object v3

    .line 363
    invoke-virtual {p1}, Lcom/metamoji/mazec/RACContext;->getConfig()Lcom/metamoji/mazec/RACConfig;

    move-result-object v4

    if-eqz v3, :cond_3

    .line 367
    invoke-virtual {v3, v4, v1, v2, v0}, Lcom/metamoji/mazec/converter/ConvertEngine;->predict(Lcom/metamoji/mazec/RACConfig;Ljava/lang/String;Lcom/metamoji/mazec/recognizer/HwRecognitionResult;Lcom/metamoji/mazec/RACExecContext;)Lcom/metamoji/mazec/converter/ConvertResult;

    move-result-object v0

    if-eqz v0, :cond_3

    if-eqz v1, :cond_2

    .line 370
    const-string v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 371
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 372
    const-string v3, "[ ]"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 373
    const-string v3, "?version?"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "?ver?"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "?\u0432\u0435\u0440\u0441\u0438\u044f?"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 375
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/metamoji/mazec/BackgroundTaskHandler;->mCtx:Landroid/content/Context;

    invoke-static {v2}, Lcom/metamoji/mazec/LangResouceManager;->getInstance(Landroid/content/Context;)Lcom/metamoji/mazec/LangResouceManager;

    move-result-object v2

    .line 376
    invoke-virtual {p1}, Lcom/metamoji/mazec/RACContext;->getLang()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/metamoji/mazec/LangResouceManager;->getVersion(Ljava/lang/String;)Lcom/metamoji/mazec/LangResouceManager$VersionInfo;

    move-result-object v2

    .line 377
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "%d.%02d"

    iget v5, v2, Lcom/metamoji/mazec/LangResouceManager$VersionInfo;->mVerMajor:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v2, v2, Lcom/metamoji/mazec/LangResouceManager$VersionInfo;->mVerMinor:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v5, v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v3, v4, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 379
    invoke-virtual {p1}, Lcom/metamoji/mazec/RACContext;->getHwrContext()Lcom/metamoji/mazec/recognizer/HwRecognitionContext;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 382
    invoke-virtual {p1}, Lcom/metamoji/mazec/recognizer/HwRecognitionContext;->getVersion()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 384
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 385
    const-string v2, "("

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    const-string p1, ")"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 392
    :cond_1
    new-instance p1, Lcom/metamoji/mazec/converter/MmjiWord;

    invoke-direct {p1, v2, v1}, Lcom/metamoji/mazec/converter/MmjiWord;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/metamoji/mazec/converter/ConvertResult;->addAditionalCandidate(Lcom/metamoji/mazec/converter/MmjiWord;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 394
    const-string v1, "Mazec"

    const-string v2, "get version error"

    invoke-static {v1, v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 398
    :cond_2
    :goto_0
    iput-object v0, p2, Lcom/metamoji/mazec/util/MessageParam;->obj:Ljava/lang/Object;

    .line 399
    iget-object p1, p0, Lcom/metamoji/mazec/BackgroundTaskHandler;->mMainHandler:Landroid/os/Handler;

    const/4 v0, 0x4

    invoke-virtual {p1, v0, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_3
    return-void
.end method

.method private handleMessageCnvResetConverter(Lcom/metamoji/mazec/RACContext;Lcom/metamoji/mazec/util/MessageParam;)V
    .locals 0

    .line 629
    invoke-virtual {p1}, Lcom/metamoji/mazec/RACContext;->getConverter()Lcom/metamoji/mazec/converter/ConvertEngine;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 631
    invoke-virtual {p1}, Lcom/metamoji/mazec/converter/ConvertEngine;->reset()V

    :cond_0
    return-void
.end method

.method private handleMessageDeactivateContext(Lcom/metamoji/mazec/RACContext;Lcom/metamoji/mazec/util/MessageParam;)V
    .locals 0

    .line 278
    invoke-virtual {p1}, Lcom/metamoji/mazec/RACContext;->delete()V

    .line 281
    iget-object p2, p0, Lcom/metamoji/mazec/BackgroundTaskHandler;->mRACContexts:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method private handleMessageDestroyHandler(Lcom/metamoji/mazec/util/MessageParam;)V
    .locals 1

    .line 211
    iget-object p1, p0, Lcom/metamoji/mazec/BackgroundTaskHandler;->mRACContexts:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/mazec/RACContext;

    .line 212
    invoke-virtual {v0}, Lcom/metamoji/mazec/RACContext;->delete()V

    goto :goto_0

    .line 216
    :cond_0
    invoke-static {}, Lcom/metamoji/mazec/BackgroundTaskHandler;->quitHandler()V

    return-void
.end method

.method private handleMessageHwChangeFilter(Lcom/metamoji/mazec/RACContext;Lcom/metamoji/mazec/util/MessageParam;)V
    .locals 0

    .line 301
    iget-object p2, p2, Lcom/metamoji/mazec/util/MessageParam;->obj:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/metamoji/mazec/RACContext;->changeFilter(I)V

    return-void
.end method

.method private handleMessageHwClearCandidateSelections(Lcom/metamoji/mazec/RACContext;Lcom/metamoji/mazec/util/MessageParam;)V
    .locals 0

    .line 337
    invoke-virtual {p1}, Lcom/metamoji/mazec/RACContext;->getHwrContext()Lcom/metamoji/mazec/recognizer/HwRecognitionContext;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 339
    invoke-virtual {p1}, Lcom/metamoji/mazec/recognizer/HwRecognitionContext;->clearHwSelection()V

    :cond_0
    return-void
.end method

.method private handleMessageHwClearRecogntionLearning(Lcom/metamoji/mazec/RACContext;Lcom/metamoji/mazec/util/MessageParam;)V
    .locals 1

    .line 646
    invoke-virtual {p1}, Lcom/metamoji/mazec/RACContext;->getRecognizer()Lcom/metamoji/mazec/recognizer/HwRecognizer;

    move-result-object p1

    .line 647
    iget-object v0, p2, Lcom/metamoji/mazec/util/MessageParam;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz p1, :cond_0

    .line 650
    invoke-virtual {p1, v0}, Lcom/metamoji/mazec/recognizer/HwRecognizer;->resetLearning(I)I

    move-result p1

    .line 651
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p2, Lcom/metamoji/mazec/util/MessageParam;->obj:Ljava/lang/Object;

    .line 653
    :cond_0
    iget-object p1, p0, Lcom/metamoji/mazec/BackgroundTaskHandler;->mMainHandler:Landroid/os/Handler;

    const/16 v0, 0x109

    invoke-virtual {p1, v0, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private handleMessageHwClearStrokes(Lcom/metamoji/mazec/RACContext;Lcom/metamoji/mazec/util/MessageParam;)V
    .locals 0

    .line 605
    invoke-virtual {p1}, Lcom/metamoji/mazec/RACContext;->getHwrContext()Lcom/metamoji/mazec/recognizer/HwRecognitionContext;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 607
    invoke-virtual {p1}, Lcom/metamoji/mazec/recognizer/HwRecognitionContext;->clearStrokes()V

    :cond_0
    return-void
.end method

.method private handleMessageHwDeleteLearnedEntry(Lcom/metamoji/mazec/RACContext;Lcom/metamoji/mazec/util/MessageParam;)V
    .locals 1

    .line 683
    invoke-virtual {p1}, Lcom/metamoji/mazec/RACContext;->getRecognizer()Lcom/metamoji/mazec/recognizer/HwRecognizer;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 686
    iget-object v0, p2, Lcom/metamoji/mazec/util/MessageParam;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/metamoji/mazec/recognizer/HwRecognitionLearningInfo;

    .line 687
    invoke-virtual {p1, v0}, Lcom/metamoji/mazec/recognizer/HwRecognizer;->deleteLearnedEntry(Lcom/metamoji/mazec/recognizer/HwRecognitionLearningInfo;)I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, -0x1

    .line 689
    invoke-virtual {v0, p1}, Lcom/metamoji/mazec/recognizer/HwRecognitionLearningInfo;->setError(I)V

    .line 692
    :cond_0
    iput-object v0, p2, Lcom/metamoji/mazec/util/MessageParam;->obj:Ljava/lang/Object;

    .line 694
    :cond_1
    iget-object p1, p0, Lcom/metamoji/mazec/BackgroundTaskHandler;->mMainHandler:Landroid/os/Handler;

    const/16 v0, 0x10c

    invoke-virtual {p1, v0, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private handleMessageHwGetFilterCharacters(Lcom/metamoji/mazec/RACContext;Lcom/metamoji/mazec/util/MessageParam;)V
    .locals 2

    .line 714
    iget-object v0, p2, Lcom/metamoji/mazec/util/MessageParam;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 715
    invoke-virtual {p1}, Lcom/metamoji/mazec/RACContext;->getLang()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/metamoji/mazec/RACContext;->getConfig()Lcom/metamoji/mazec/RACConfig;

    move-result-object p1

    invoke-static {v1, p1, v0}, Lcom/metamoji/mazec/recognizer/HwCharacterCategorizer;->getFilterCharacters(Ljava/lang/String;Lcom/metamoji/mazec/RACConfig;I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/metamoji/mazec/util/MessageParam;->obj:Ljava/lang/Object;

    .line 716
    iget-object p1, p0, Lcom/metamoji/mazec/BackgroundTaskHandler;->mMainHandler:Landroid/os/Handler;

    const/16 v0, 0x10e

    invoke-virtual {p1, v0, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private handleMessageHwGetLearnedKanjCharacters(Lcom/metamoji/mazec/RACContext;Lcom/metamoji/mazec/util/MessageParam;)V
    .locals 3

    .line 720
    new-instance v0, Lcom/metamoji/mazec/RACConfig;

    invoke-direct {v0}, Lcom/metamoji/mazec/RACConfig;-><init>()V

    .line 721
    iget-object v1, p2, Lcom/metamoji/mazec/util/MessageParam;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/metamoji/mazec/util/MessageParam$ContextConfig;

    .line 722
    sget v2, Lcom/metamoji/mazec/RACConfig;->KANJI_RECOGNITION_MODE_ONLY_LEARNED:I

    iget v1, v1, Lcom/metamoji/mazec/util/MessageParam$ContextConfig;->schoolYear:I

    invoke-virtual {v0, v2, v1}, Lcom/metamoji/mazec/RACConfig;->setRecognitionConfig(II)V

    .line 723
    invoke-virtual {p1}, Lcom/metamoji/mazec/RACContext;->getLang()Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0x8

    invoke-static {p1, v0, v1}, Lcom/metamoji/mazec/recognizer/HwCharacterCategorizer;->getFilterCharacters(Ljava/lang/String;Lcom/metamoji/mazec/RACConfig;I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/metamoji/mazec/util/MessageParam;->obj:Ljava/lang/Object;

    .line 724
    iget-object p1, p0, Lcom/metamoji/mazec/BackgroundTaskHandler;->mMainHandler:Landroid/os/Handler;

    const/16 v0, 0x10f

    invoke-virtual {p1, v0, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private handleMessageHwGetRecognitionLearnedEntries(Lcom/metamoji/mazec/RACContext;Lcom/metamoji/mazec/util/MessageParam;)V
    .locals 5

    .line 698
    invoke-virtual {p1}, Lcom/metamoji/mazec/RACContext;->getRecognizer()Lcom/metamoji/mazec/recognizer/HwRecognizer;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 701
    iget-object v0, p2, Lcom/metamoji/mazec/util/MessageParam;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 702
    invoke-virtual {p1, v0}, Lcom/metamoji/mazec/recognizer/HwRecognizer;->getLearingCount(I)I

    move-result v1

    .line 703
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    .line 705
    invoke-virtual {p1, v0, v3}, Lcom/metamoji/mazec/recognizer/HwRecognizer;->getLearnedEntry(II)Lcom/metamoji/mazec/recognizer/HwRecognitionLearningInfo;

    move-result-object v4

    .line 706
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 708
    :cond_0
    iput-object v2, p2, Lcom/metamoji/mazec/util/MessageParam;->obj:Ljava/lang/Object;

    .line 710
    :cond_1
    iget-object p1, p0, Lcom/metamoji/mazec/BackgroundTaskHandler;->mMainHandler:Landroid/os/Handler;

    const/16 v0, 0x10d

    invoke-virtual {p1, v0, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private handleMessageHwGetRecognitionLearningCount(Lcom/metamoji/mazec/RACContext;Lcom/metamoji/mazec/util/MessageParam;)V
    .locals 2

    .line 657
    invoke-virtual {p1}, Lcom/metamoji/mazec/RACContext;->getRecognizer()Lcom/metamoji/mazec/recognizer/HwRecognizer;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 660
    invoke-virtual {p1, v0}, Lcom/metamoji/mazec/recognizer/HwRecognizer;->getLearingCount(I)I

    move-result v0

    const/4 v1, 0x2

    .line 661
    invoke-virtual {p1, v1}, Lcom/metamoji/mazec/recognizer/HwRecognizer;->getLearingCount(I)I

    move-result p1

    .line 662
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 663
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 664
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 665
    iput-object v1, p2, Lcom/metamoji/mazec/util/MessageParam;->obj:Ljava/lang/Object;

    .line 667
    :cond_0
    iget-object p1, p0, Lcom/metamoji/mazec/BackgroundTaskHandler;->mMainHandler:Landroid/os/Handler;

    const/16 v0, 0x10a

    invoke-virtual {p1, v0, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private handleMessageHwLearnCharRecognition(Lcom/metamoji/mazec/RACContext;Lcom/metamoji/mazec/util/MessageParam;)V
    .locals 1

    .line 672
    invoke-virtual {p1}, Lcom/metamoji/mazec/RACContext;->getRecognizer()Lcom/metamoji/mazec/recognizer/HwRecognizer;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 675
    iget-object v0, p2, Lcom/metamoji/mazec/util/MessageParam;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/metamoji/mazec/recognizer/HwRecognizer$LearnCharacterParam;

    .line 676
    invoke-virtual {p1, v0}, Lcom/metamoji/mazec/recognizer/HwRecognizer;->learnCharacter(Lcom/metamoji/mazec/recognizer/HwRecognizer$LearnCharacterParam;)Lcom/metamoji/mazec/recognizer/HwRecognitionLearningInfo;

    move-result-object p1

    .line 677
    iput-object p1, p2, Lcom/metamoji/mazec/util/MessageParam;->obj:Ljava/lang/Object;

    .line 679
    :cond_0
    iget-object p1, p0, Lcom/metamoji/mazec/BackgroundTaskHandler;->mMainHandler:Landroid/os/Handler;

    const/16 v0, 0x10b

    invoke-virtual {p1, v0, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private handleMessageHwLearnSelectedRecogCand(Lcom/metamoji/mazec/RACContext;Lcom/metamoji/mazec/util/MessageParam;)V
    .locals 1

    .line 637
    invoke-virtual {p1}, Lcom/metamoji/mazec/RACContext;->getHwrContext()Lcom/metamoji/mazec/recognizer/HwRecognitionContext;

    move-result-object v0

    .line 638
    invoke-virtual {p1}, Lcom/metamoji/mazec/RACContext;->getRecognizer()Lcom/metamoji/mazec/recognizer/HwRecognizer;

    move-result-object p1

    .line 639
    iget-object p2, p2, Lcom/metamoji/mazec/util/MessageParam;->obj:Ljava/lang/Object;

    check-cast p2, Ljava/lang/String;

    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    .line 641
    invoke-virtual {p1, v0, p2}, Lcom/metamoji/mazec/recognizer/HwRecognizer;->learnSelectedRecogCand(Lcom/metamoji/mazec/recognizer/HwRecognitionContext;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private handleMessageHwRecognizeString(Lcom/metamoji/mazec/RACContext;Lcom/metamoji/mazec/util/MessageParam;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 562
    :try_start_0
    iput-boolean v0, p0, Lcom/metamoji/mazec/BackgroundTaskHandler;->mHandlingRecognizeString:Z

    .line 572
    iget-object v0, p2, Lcom/metamoji/mazec/util/MessageParam;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/metamoji/mazec/recognizer/HwRecognitionContext$RecognitionParam;

    if-eqz v0, :cond_1

    .line 574
    invoke-virtual {p1}, Lcom/metamoji/mazec/RACContext;->getHwrContext()Lcom/metamoji/mazec/recognizer/HwRecognitionContext;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 579
    invoke-virtual {p1, v0}, Lcom/metamoji/mazec/recognizer/HwRecognitionContext;->recognize(Lcom/metamoji/mazec/recognizer/HwRecognitionContext$RecognitionParam;)Lcom/metamoji/mazec/recognizer/HwRecognitionResult;

    move-result-object p1

    .line 581
    invoke-virtual {p2}, Lcom/metamoji/mazec/util/MessageParam;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 583
    invoke-virtual {p1}, Lcom/metamoji/mazec/recognizer/HwRecognitionResult;->getCandidatesList()Ljava/util/List;

    .line 585
    :cond_0
    iput-object p1, p2, Lcom/metamoji/mazec/util/MessageParam;->obj:Ljava/lang/Object;

    .line 589
    iget-object p1, p0, Lcom/metamoji/mazec/BackgroundTaskHandler;->mMainHandler:Landroid/os/Handler;

    const/4 v0, 0x2

    invoke-virtual {p1, v0, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 597
    :cond_1
    iput-boolean v1, p0, Lcom/metamoji/mazec/BackgroundTaskHandler;->mHandlingRecognizeString:Z

    return-void

    :catchall_0
    move-exception p1

    iput-boolean v1, p0, Lcom/metamoji/mazec/BackgroundTaskHandler;->mHandlingRecognizeString:Z

    .line 598
    throw p1
.end method

.method private handleMessageHwSetCandidateBlockSelection(Lcom/metamoji/mazec/RACContext;Lcom/metamoji/mazec/util/MessageParam;)V
    .locals 0

    .line 324
    iget-object p2, p2, Lcom/metamoji/mazec/util/MessageParam;->obj:Ljava/lang/Object;

    check-cast p2, Ljava/util/List;

    if-eqz p2, :cond_0

    .line 326
    invoke-virtual {p1}, Lcom/metamoji/mazec/RACContext;->getHwrContext()Lcom/metamoji/mazec/recognizer/HwRecognitionContext;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 328
    invoke-virtual {p1, p2}, Lcom/metamoji/mazec/recognizer/HwRecognitionContext;->setHwBlockSelection(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method private handleMessageHwSetCandidateLetterSelection(Lcom/metamoji/mazec/RACContext;Lcom/metamoji/mazec/util/MessageParam;)V
    .locals 2

    .line 308
    iget-object p2, p2, Lcom/metamoji/mazec/util/MessageParam;->obj:Ljava/lang/Object;

    check-cast p2, [Ljava/lang/Object;

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    .line 310
    aget-object v0, p2, v0

    check-cast v0, Lcom/metamoji/mazec/recognizer/HwCandidates;

    const/4 v1, 0x1

    .line 311
    aget-object p2, p2, v1

    check-cast p2, Ljava/lang/String;

    .line 312
    invoke-virtual {p1}, Lcom/metamoji/mazec/RACContext;->getHwrContext()Lcom/metamoji/mazec/recognizer/HwRecognitionContext;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 314
    invoke-virtual {p1, v0, p2}, Lcom/metamoji/mazec/recognizer/HwRecognitionContext;->setHwCandidateSelection(Lcom/metamoji/mazec/recognizer/HwCandidates;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private handleMessageHwSetLang(Lcom/metamoji/mazec/RACContext;Lcom/metamoji/mazec/util/MessageParam;)V
    .locals 0

    .line 288
    iget-object p2, p2, Lcom/metamoji/mazec/util/MessageParam;->obj:Ljava/lang/Object;

    check-cast p2, Ljava/lang/String;

    .line 290
    invoke-virtual {p1, p2}, Lcom/metamoji/mazec/RACContext;->setLang(Ljava/lang/String;)V

    return-void
.end method

.method private handleMessageHwSetWordspacingCoef(Lcom/metamoji/mazec/RACContext;Lcom/metamoji/mazec/util/MessageParam;)V
    .locals 0

    .line 615
    iget-object p2, p2, Lcom/metamoji/mazec/util/MessageParam;->obj:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Float;

    if-eqz p2, :cond_0

    .line 617
    invoke-virtual {p1}, Lcom/metamoji/mazec/RACContext;->getHwrContext()Lcom/metamoji/mazec/recognizer/HwRecognitionContext;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 619
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-virtual {p1, p2}, Lcom/metamoji/mazec/recognizer/HwRecognitionContext;->setWordspacingCoef(F)V

    :cond_0
    return-void
.end method

.method private handleMessageInitHandler(Lcom/metamoji/mazec/util/MessageParam;)V
    .locals 0

    return-void
.end method

.method private quit()V
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/metamoji/mazec/BackgroundTaskHandler;->mThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 153
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    :cond_0
    return-void
.end method

.method private static declared-synchronized quitHandler()V
    .locals 2

    const-class v0, Lcom/metamoji/mazec/BackgroundTaskHandler;

    monitor-enter v0

    .line 113
    :try_start_0
    sget-object v1, Lcom/metamoji/mazec/BackgroundTaskHandler;->mInstance:Lcom/metamoji/mazec/BackgroundTaskHandler;

    if-eqz v1, :cond_0

    .line 114
    invoke-direct {v1}, Lcom/metamoji/mazec/BackgroundTaskHandler;->quit()V

    const/4 v1, 0x0

    .line 115
    sput-object v1, Lcom/metamoji/mazec/BackgroundTaskHandler;->mInstance:Lcom/metamoji/mazec/BackgroundTaskHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static declared-synchronized startHandler(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;)V
    .locals 2

    const-class v0, Lcom/metamoji/mazec/BackgroundTaskHandler;

    monitor-enter v0

    .line 92
    :try_start_0
    sget-object v1, Lcom/metamoji/mazec/BackgroundTaskHandler;->mInstance:Lcom/metamoji/mazec/BackgroundTaskHandler;

    if-nez v1, :cond_0

    .line 94
    new-instance v1, Landroid/os/HandlerThread;

    invoke-direct {v1, p1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 99
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 101
    new-instance p1, Lcom/metamoji/mazec/BackgroundTaskHandler;

    invoke-direct {p1, p0, v1, p2}, Lcom/metamoji/mazec/BackgroundTaskHandler;-><init>(Landroid/content/Context;Landroid/os/HandlerThread;Landroid/os/Handler;)V

    sput-object p1, Lcom/metamoji/mazec/BackgroundTaskHandler;->mInstance:Lcom/metamoji/mazec/BackgroundTaskHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method


# virtual methods
.method public createContext(Lcom/metamoji/mazec/util/MessageHandler;Lcom/metamoji/mazec/util/MessageParam$ContextConfig;)Lcom/metamoji/mazec/RACContext;
    .locals 2

    .line 164
    new-instance v0, Lcom/metamoji/mazec/RACContext;

    iget-object v1, p0, Lcom/metamoji/mazec/BackgroundTaskHandler;->mCtx:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/metamoji/mazec/RACContext;-><init>(Landroid/content/Context;)V

    .line 167
    new-instance v1, Lcom/metamoji/mazec/util/MessageParam;

    invoke-direct {v1, v0, p1, p2}, Lcom/metamoji/mazec/util/MessageParam;-><init>(Lcom/metamoji/mazec/RACContext;Lcom/metamoji/mazec/util/MessageHandler;Ljava/lang/Object;)V

    const/16 p1, 0x15

    .line 168
    invoke-virtual {p0, p1, v1}, Lcom/metamoji/mazec/BackgroundTaskHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/metamoji/mazec/BackgroundTaskHandler;->sendMessage(Landroid/os/Message;)Z

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 734
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/metamoji/mazec/util/MessageParam;

    if-eqz v0, :cond_b

    .line 736
    invoke-virtual {v0}, Lcom/metamoji/mazec/util/MessageParam;->isCanceled()Z

    move-result v1

    if-nez v1, :cond_b

    .line 738
    :try_start_0
    iget-object v1, v0, Lcom/metamoji/mazec/util/MessageParam;->racContext:Lcom/metamoji/mazec/RACContext;

    if-eqz v1, :cond_7

    .line 739
    invoke-virtual {v1}, Lcom/metamoji/mazec/RACContext;->isActive()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 740
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x16

    if-eq p1, v2, :cond_6

    const/16 v2, 0x35

    if-eq p1, v2, :cond_5

    const/16 v2, 0x37

    if-eq p1, v2, :cond_4

    const/16 v2, 0x66

    if-eq p1, v2, :cond_3

    const/16 v2, 0x68

    if-eq p1, v2, :cond_2

    const/16 v2, 0x6a

    if-eq p1, v2, :cond_1

    const/16 v2, 0x6b

    if-eq p1, v2, :cond_0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    goto/16 :goto_0

    .line 760
    :pswitch_0
    invoke-direct {p0, v1, v0}, Lcom/metamoji/mazec/BackgroundTaskHandler;->handleMessageCnvEnableConversion(Lcom/metamoji/mazec/RACContext;Lcom/metamoji/mazec/util/MessageParam;)V

    return-void

    .line 757
    :pswitch_1
    invoke-direct {p0, v1, v0}, Lcom/metamoji/mazec/BackgroundTaskHandler;->handleMessageCnvEnableLearning(Lcom/metamoji/mazec/RACContext;Lcom/metamoji/mazec/util/MessageParam;)V

    return-void

    .line 763
    :pswitch_2
    invoke-direct {p0, v1, v0}, Lcom/metamoji/mazec/BackgroundTaskHandler;->handleMessageCnvResetConverter(Lcom/metamoji/mazec/RACContext;Lcom/metamoji/mazec/util/MessageParam;)V

    return-void

    .line 811
    :pswitch_3
    invoke-direct {p0, v1, v0}, Lcom/metamoji/mazec/BackgroundTaskHandler;->handleMessageHwGetLearnedKanjCharacters(Lcom/metamoji/mazec/RACContext;Lcom/metamoji/mazec/util/MessageParam;)V

    return-void

    .line 808
    :pswitch_4
    invoke-direct {p0, v1, v0}, Lcom/metamoji/mazec/BackgroundTaskHandler;->handleMessageHwGetFilterCharacters(Lcom/metamoji/mazec/RACContext;Lcom/metamoji/mazec/util/MessageParam;)V

    return-void

    .line 805
    :pswitch_5
    invoke-direct {p0, v1, v0}, Lcom/metamoji/mazec/BackgroundTaskHandler;->handleMessageHwGetRecognitionLearnedEntries(Lcom/metamoji/mazec/RACContext;Lcom/metamoji/mazec/util/MessageParam;)V

    return-void

    .line 802
    :pswitch_6
    invoke-direct {p0, v1, v0}, Lcom/metamoji/mazec/BackgroundTaskHandler;->handleMessageHwDeleteLearnedEntry(Lcom/metamoji/mazec/RACContext;Lcom/metamoji/mazec/util/MessageParam;)V

    return-void

    .line 799
    :pswitch_7
    invoke-direct {p0, v1, v0}, Lcom/metamoji/mazec/BackgroundTaskHandler;->handleMessageHwLearnCharRecognition(Lcom/metamoji/mazec/RACContext;Lcom/metamoji/mazec/util/MessageParam;)V

    return-void

    .line 796
    :pswitch_8
    invoke-direct {p0, v1, v0}, Lcom/metamoji/mazec/BackgroundTaskHandler;->handleMessageHwGetRecognitionLearningCount(Lcom/metamoji/mazec/RACContext;Lcom/metamoji/mazec/util/MessageParam;)V

    return-void

    .line 793
    :pswitch_9
    invoke-direct {p0, v1, v0}, Lcom/metamoji/mazec/BackgroundTaskHandler;->handleMessageHwClearRecogntionLearning(Lcom/metamoji/mazec/RACContext;Lcom/metamoji/mazec/util/MessageParam;)V

    return-void

    .line 790
    :pswitch_a
    invoke-direct {p0, v1, v0}, Lcom/metamoji/mazec/BackgroundTaskHandler;->handleMessageHwLearnSelectedRecogCand(Lcom/metamoji/mazec/RACContext;Lcom/metamoji/mazec/util/MessageParam;)V

    return-void

    .line 787
    :pswitch_b
    invoke-direct {p0, v1, v0}, Lcom/metamoji/mazec/BackgroundTaskHandler;->handleMessageHwSetWordspacingCoef(Lcom/metamoji/mazec/RACContext;Lcom/metamoji/mazec/util/MessageParam;)V

    return-void

    .line 784
    :pswitch_c
    invoke-direct {p0, v1, v0}, Lcom/metamoji/mazec/BackgroundTaskHandler;->handleMessageHwClearCandidateSelections(Lcom/metamoji/mazec/RACContext;Lcom/metamoji/mazec/util/MessageParam;)V

    return-void

    .line 781
    :pswitch_d
    invoke-direct {p0, v1, v0}, Lcom/metamoji/mazec/BackgroundTaskHandler;->handleMessageHwSetCandidateBlockSelection(Lcom/metamoji/mazec/RACContext;Lcom/metamoji/mazec/util/MessageParam;)V

    return-void

    .line 778
    :pswitch_e
    invoke-direct {p0, v1, v0}, Lcom/metamoji/mazec/BackgroundTaskHandler;->handleMessageHwSetCandidateLetterSelection(Lcom/metamoji/mazec/RACContext;Lcom/metamoji/mazec/util/MessageParam;)V

    return-void

    .line 775
    :pswitch_f
    invoke-direct {p0, v1, v0}, Lcom/metamoji/mazec/BackgroundTaskHandler;->handleMessageHwChangeFilter(Lcom/metamoji/mazec/RACContext;Lcom/metamoji/mazec/util/MessageParam;)V

    return-void

    .line 772
    :pswitch_10
    invoke-direct {p0, v1, v0}, Lcom/metamoji/mazec/BackgroundTaskHandler;->handleMessageHwSetLang(Lcom/metamoji/mazec/RACContext;Lcom/metamoji/mazec/util/MessageParam;)V

    return-void

    .line 754
    :cond_0
    invoke-direct {p0, v1, v0}, Lcom/metamoji/mazec/BackgroundTaskHandler;->handleMessageCnvBreakSequence(Lcom/metamoji/mazec/RACContext;Lcom/metamoji/mazec/util/MessageParam;)V

    return-void

    .line 751
    :cond_1
    invoke-direct {p0, v1, v0}, Lcom/metamoji/mazec/BackgroundTaskHandler;->handleMessageCnvCommitWord(Lcom/metamoji/mazec/RACContext;Lcom/metamoji/mazec/util/MessageParam;)V

    return-void

    .line 748
    :cond_2
    invoke-direct {p0, v1, v0}, Lcom/metamoji/mazec/BackgroundTaskHandler;->handleMessageCnvConvert(Lcom/metamoji/mazec/RACContext;Lcom/metamoji/mazec/util/MessageParam;)V

    return-void

    .line 745
    :cond_3
    invoke-direct {p0, v1, v0}, Lcom/metamoji/mazec/BackgroundTaskHandler;->handleMessageCnvPredict(Lcom/metamoji/mazec/RACContext;Lcom/metamoji/mazec/util/MessageParam;)V

    return-void

    .line 769
    :cond_4
    invoke-direct {p0, v1, v0}, Lcom/metamoji/mazec/BackgroundTaskHandler;->handleMessageHwClearStrokes(Lcom/metamoji/mazec/RACContext;Lcom/metamoji/mazec/util/MessageParam;)V

    return-void

    .line 766
    :cond_5
    invoke-direct {p0, v1, v0}, Lcom/metamoji/mazec/BackgroundTaskHandler;->handleMessageHwRecognizeString(Lcom/metamoji/mazec/RACContext;Lcom/metamoji/mazec/util/MessageParam;)V

    return-void

    .line 742
    :cond_6
    invoke-direct {p0, v1, v0}, Lcom/metamoji/mazec/BackgroundTaskHandler;->handleMessageDeactivateContext(Lcom/metamoji/mazec/RACContext;Lcom/metamoji/mazec/util/MessageParam;)V

    return-void

    .line 814
    :cond_7
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0xb

    if-eq p1, v2, :cond_a

    const/16 v2, 0xc

    if-eq p1, v2, :cond_9

    const/16 v2, 0x15

    if-eq p1, v2, :cond_8

    goto :goto_0

    .line 822
    :cond_8
    invoke-direct {p0, v1, v0}, Lcom/metamoji/mazec/BackgroundTaskHandler;->handleMessageActivateContext(Lcom/metamoji/mazec/RACContext;Lcom/metamoji/mazec/util/MessageParam;)V

    return-void

    .line 819
    :cond_9
    invoke-direct {p0, v0}, Lcom/metamoji/mazec/BackgroundTaskHandler;->handleMessageDestroyHandler(Lcom/metamoji/mazec/util/MessageParam;)V

    return-void

    .line 816
    :cond_a
    invoke-direct {p0, v0}, Lcom/metamoji/mazec/BackgroundTaskHandler;->handleMessageInitHandler(Lcom/metamoji/mazec/util/MessageParam;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 827
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "error: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Mazec"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 828
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_b
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x3a
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x6d
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public isHandlingRecognizeString()Z
    .locals 1

    .line 838
    iget-boolean v0, p0, Lcom/metamoji/mazec/BackgroundTaskHandler;->mHandlingRecognizeString:Z

    return v0
.end method

.method public join()V
    .locals 3

    .line 178
    iget-object v0, p0, Lcom/metamoji/mazec/BackgroundTaskHandler;->mThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 180
    :try_start_0
    invoke-virtual {v0}, Landroid/os/HandlerThread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 182
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Mazec"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
