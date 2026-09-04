.class public Lcom/metamoji/mazec/RACContext;
.super Ljava/lang/Object;
.source "RACContext.java"


# instance fields
.field private mConfig:Lcom/metamoji/mazec/RACConfig;

.field private mConvertMethodId:I

.field private mConverter:Lcom/metamoji/mazec/converter/ConvertEngine;

.field private mCtx:Landroid/content/Context;

.field private mHandwritingMethodId:I

.field private mHwrContext:Lcom/metamoji/mazec/recognizer/HwRecognitionContext;

.field private mIsActive:Z

.field private mLang:Ljava/lang/String;

.field private mRecognizer:Lcom/metamoji/mazec/recognizer/HwRecognizer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lcom/metamoji/mazec/RACContext;->mLang:Ljava/lang/String;

    .line 19
    iput-object v0, p0, Lcom/metamoji/mazec/RACContext;->mConfig:Lcom/metamoji/mazec/RACConfig;

    .line 21
    iput-object v0, p0, Lcom/metamoji/mazec/RACContext;->mRecognizer:Lcom/metamoji/mazec/recognizer/HwRecognizer;

    .line 22
    iput-object v0, p0, Lcom/metamoji/mazec/RACContext;->mHwrContext:Lcom/metamoji/mazec/recognizer/HwRecognitionContext;

    .line 24
    iput-object v0, p0, Lcom/metamoji/mazec/RACContext;->mConverter:Lcom/metamoji/mazec/converter/ConvertEngine;

    const/4 v0, 0x0

    .line 28
    iput v0, p0, Lcom/metamoji/mazec/RACContext;->mConvertMethodId:I

    .line 29
    iput v0, p0, Lcom/metamoji/mazec/RACContext;->mHandwritingMethodId:I

    .line 35
    iput-object p1, p0, Lcom/metamoji/mazec/RACContext;->mCtx:Landroid/content/Context;

    .line 36
    iput-boolean v0, p0, Lcom/metamoji/mazec/RACContext;->mIsActive:Z

    return-void
.end method


# virtual methods
.method public activate(Lcom/metamoji/mazec/RACConfig;)V
    .locals 3

    .line 43
    iget-boolean v0, p0, Lcom/metamoji/mazec/RACContext;->mIsActive:Z

    if-nez v0, :cond_2

    if-nez p1, :cond_0

    goto :goto_1

    .line 48
    :cond_0
    invoke-static {}, Lcom/metamoji/mazec/MazecIms;->getInstance()Lcom/metamoji/mazec/MazecIms;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/mazec/MazecIms;->getLangDicDir()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/mazec/MazecRACLibJNI;->setIMResourceDirectory(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p1}, Lcom/metamoji/mazec/RACConfig;->getLanguage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/mazec/RACContext;->mLang:Ljava/lang/String;

    .line 52
    iput-object p1, p0, Lcom/metamoji/mazec/RACContext;->mConfig:Lcom/metamoji/mazec/RACConfig;

    .line 55
    const-string p1, "ja_JP"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    move p1, v0

    goto :goto_0

    :cond_1
    const/4 p1, 0x4

    .line 56
    :goto_0
    iget-object v1, p0, Lcom/metamoji/mazec/RACContext;->mCtx:Landroid/content/Context;

    iget-object v2, p0, Lcom/metamoji/mazec/RACContext;->mLang:Ljava/lang/String;

    invoke-static {v1, p1, v2}, Lcom/metamoji/mazec/recognizer/HwRecognizer;->createRecognizer(Landroid/content/Context;ILjava/lang/String;)Lcom/metamoji/mazec/recognizer/HwRecognizer;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/mazec/RACContext;->mRecognizer:Lcom/metamoji/mazec/recognizer/HwRecognizer;

    .line 57
    iget-object v1, p0, Lcom/metamoji/mazec/RACContext;->mConfig:Lcom/metamoji/mazec/RACConfig;

    invoke-virtual {p1, v1}, Lcom/metamoji/mazec/recognizer/HwRecognizer;->createContext(Lcom/metamoji/mazec/RACConfig;)Lcom/metamoji/mazec/recognizer/HwRecognitionContext;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/mazec/RACContext;->mHwrContext:Lcom/metamoji/mazec/recognizer/HwRecognitionContext;

    .line 60
    iget-object p1, p0, Lcom/metamoji/mazec/RACContext;->mCtx:Landroid/content/Context;

    iget-object v1, p0, Lcom/metamoji/mazec/RACContext;->mLang:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/metamoji/mazec/converter/ConvertEngine;->createConverter(Landroid/content/Context;Ljava/lang/String;)Lcom/metamoji/mazec/converter/ConvertEngine;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/mazec/RACContext;->mConverter:Lcom/metamoji/mazec/converter/ConvertEngine;

    .line 62
    iput-boolean v0, p0, Lcom/metamoji/mazec/RACContext;->mIsActive:Z

    :cond_2
    :goto_1
    return-void
.end method

.method public changeFilter(I)V
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/metamoji/mazec/RACContext;->mConfig:Lcom/metamoji/mazec/RACConfig;

    invoke-virtual {v0, p1}, Lcom/metamoji/mazec/RACConfig;->setFilter(I)V

    return-void
.end method

.method public delete()V
    .locals 3

    .line 76
    iget-object v0, p0, Lcom/metamoji/mazec/RACContext;->mHwrContext:Lcom/metamoji/mazec/recognizer/HwRecognitionContext;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 77
    iget-object v2, p0, Lcom/metamoji/mazec/RACContext;->mRecognizer:Lcom/metamoji/mazec/recognizer/HwRecognizer;

    invoke-virtual {v2, v0}, Lcom/metamoji/mazec/recognizer/HwRecognizer;->destroyContext(Lcom/metamoji/mazec/recognizer/HwRecognitionContext;)V

    .line 78
    iput-object v1, p0, Lcom/metamoji/mazec/RACContext;->mHwrContext:Lcom/metamoji/mazec/recognizer/HwRecognitionContext;

    .line 79
    iget-object v0, p0, Lcom/metamoji/mazec/RACContext;->mRecognizer:Lcom/metamoji/mazec/recognizer/HwRecognizer;

    invoke-virtual {v0}, Lcom/metamoji/mazec/recognizer/HwRecognizer;->destroy()V

    .line 80
    iput-object v1, p0, Lcom/metamoji/mazec/RACContext;->mRecognizer:Lcom/metamoji/mazec/recognizer/HwRecognizer;

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/metamoji/mazec/RACContext;->mConverter:Lcom/metamoji/mazec/converter/ConvertEngine;

    if-eqz v0, :cond_1

    .line 84
    invoke-virtual {v0}, Lcom/metamoji/mazec/converter/ConvertEngine;->destroy()V

    .line 85
    iput-object v1, p0, Lcom/metamoji/mazec/RACContext;->mConverter:Lcom/metamoji/mazec/converter/ConvertEngine;

    .line 87
    :cond_1
    iget-object v0, p0, Lcom/metamoji/mazec/RACContext;->mConfig:Lcom/metamoji/mazec/RACConfig;

    if-eqz v0, :cond_2

    .line 88
    invoke-virtual {v0}, Lcom/metamoji/mazec/RACConfig;->dispose()V

    .line 89
    iput-object v1, p0, Lcom/metamoji/mazec/RACContext;->mConfig:Lcom/metamoji/mazec/RACConfig;

    :cond_2
    const/4 v0, 0x0

    .line 92
    iput-boolean v0, p0, Lcom/metamoji/mazec/RACContext;->mIsActive:Z

    return-void
.end method

.method protected finalize()V
    .locals 0

    .line 69
    invoke-virtual {p0}, Lcom/metamoji/mazec/RACContext;->delete()V

    return-void
.end method

.method public getConfig()Lcom/metamoji/mazec/RACConfig;
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/metamoji/mazec/RACContext;->mConfig:Lcom/metamoji/mazec/RACConfig;

    return-object v0
.end method

.method public declared-synchronized getConvertMethodId()I
    .locals 1

    monitor-enter p0

    .line 183
    :try_start_0
    iget v0, p0, Lcom/metamoji/mazec/RACContext;->mConvertMethodId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getConverter()Lcom/metamoji/mazec/converter/ConvertEngine;
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/metamoji/mazec/RACContext;->mConverter:Lcom/metamoji/mazec/converter/ConvertEngine;

    return-object v0
.end method

.method public declared-synchronized getHandwritingMethodId()I
    .locals 1

    monitor-enter p0

    .line 191
    :try_start_0
    iget v0, p0, Lcom/metamoji/mazec/RACContext;->mHandwritingMethodId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getHwrContext()Lcom/metamoji/mazec/recognizer/HwRecognitionContext;
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/metamoji/mazec/RACContext;->mHwrContext:Lcom/metamoji/mazec/recognizer/HwRecognitionContext;

    return-object v0
.end method

.method public getLang()Ljava/lang/String;
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/metamoji/mazec/RACContext;->mLang:Ljava/lang/String;

    return-object v0
.end method

.method public getRecognizer()Lcom/metamoji/mazec/recognizer/HwRecognizer;
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/metamoji/mazec/RACContext;->mRecognizer:Lcom/metamoji/mazec/recognizer/HwRecognizer;

    return-object v0
.end method

.method public isActive()Z
    .locals 1

    .line 175
    iget-boolean v0, p0, Lcom/metamoji/mazec/RACContext;->mIsActive:Z

    return v0
.end method

.method public declared-synchronized newConvertMethodId()I
    .locals 1

    monitor-enter p0

    .line 179
    :try_start_0
    iget v0, p0, Lcom/metamoji/mazec/RACContext;->mConvertMethodId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/metamoji/mazec/RACContext;->mConvertMethodId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized newHandwritingMethodId()I
    .locals 1

    monitor-enter p0

    .line 187
    :try_start_0
    iget v0, p0, Lcom/metamoji/mazec/RACContext;->mHandwritingMethodId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/metamoji/mazec/RACContext;->mHandwritingMethodId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setLang(Ljava/lang/String;)V
    .locals 3

    .line 101
    invoke-virtual {p0}, Lcom/metamoji/mazec/RACContext;->isActive()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_1

    .line 105
    iget-object v0, p0, Lcom/metamoji/mazec/RACContext;->mLang:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 110
    :cond_1
    iget-object v0, p0, Lcom/metamoji/mazec/RACContext;->mHwrContext:Lcom/metamoji/mazec/recognizer/HwRecognitionContext;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 111
    iget-object v2, p0, Lcom/metamoji/mazec/RACContext;->mRecognizer:Lcom/metamoji/mazec/recognizer/HwRecognizer;

    invoke-virtual {v2, v0}, Lcom/metamoji/mazec/recognizer/HwRecognizer;->destroyContext(Lcom/metamoji/mazec/recognizer/HwRecognitionContext;)V

    .line 112
    iput-object v1, p0, Lcom/metamoji/mazec/RACContext;->mHwrContext:Lcom/metamoji/mazec/recognizer/HwRecognitionContext;

    .line 113
    iget-object v0, p0, Lcom/metamoji/mazec/RACContext;->mRecognizer:Lcom/metamoji/mazec/recognizer/HwRecognizer;

    invoke-virtual {v0}, Lcom/metamoji/mazec/recognizer/HwRecognizer;->destroy()V

    .line 114
    iput-object v1, p0, Lcom/metamoji/mazec/RACContext;->mRecognizer:Lcom/metamoji/mazec/recognizer/HwRecognizer;

    .line 118
    :cond_2
    iget-object v0, p0, Lcom/metamoji/mazec/RACContext;->mConverter:Lcom/metamoji/mazec/converter/ConvertEngine;

    if-eqz v0, :cond_3

    .line 119
    invoke-virtual {v0}, Lcom/metamoji/mazec/converter/ConvertEngine;->destroy()V

    .line 120
    iput-object v1, p0, Lcom/metamoji/mazec/RACContext;->mConverter:Lcom/metamoji/mazec/converter/ConvertEngine;

    .line 123
    :cond_3
    iput-object p1, p0, Lcom/metamoji/mazec/RACContext;->mLang:Ljava/lang/String;

    .line 124
    iget-object v0, p0, Lcom/metamoji/mazec/RACContext;->mConfig:Lcom/metamoji/mazec/RACConfig;

    invoke-virtual {v0, p1}, Lcom/metamoji/mazec/RACConfig;->setLanguage(Ljava/lang/String;)V

    .line 126
    iget-object v0, p0, Lcom/metamoji/mazec/RACContext;->mLang:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 128
    const-string v0, "ja_JP"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    const/4 v0, 0x4

    .line 129
    :goto_0
    iget-object v1, p0, Lcom/metamoji/mazec/RACContext;->mCtx:Landroid/content/Context;

    invoke-static {v1, v0, p1}, Lcom/metamoji/mazec/recognizer/HwRecognizer;->createRecognizer(Landroid/content/Context;ILjava/lang/String;)Lcom/metamoji/mazec/recognizer/HwRecognizer;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/mazec/RACContext;->mRecognizer:Lcom/metamoji/mazec/recognizer/HwRecognizer;

    .line 130
    iget-object v1, p0, Lcom/metamoji/mazec/RACContext;->mConfig:Lcom/metamoji/mazec/RACConfig;

    invoke-virtual {v0, v1}, Lcom/metamoji/mazec/recognizer/HwRecognizer;->createContext(Lcom/metamoji/mazec/RACConfig;)Lcom/metamoji/mazec/recognizer/HwRecognitionContext;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/mazec/RACContext;->mHwrContext:Lcom/metamoji/mazec/recognizer/HwRecognitionContext;

    .line 132
    iget-object v0, p0, Lcom/metamoji/mazec/RACContext;->mCtx:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/metamoji/mazec/converter/ConvertEngine;->createConverter(Landroid/content/Context;Ljava/lang/String;)Lcom/metamoji/mazec/converter/ConvertEngine;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/mazec/RACContext;->mConverter:Lcom/metamoji/mazec/converter/ConvertEngine;

    :cond_5
    :goto_1
    return-void
.end method
