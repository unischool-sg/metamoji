.class public final Lcom/metamoji/un/video/UnVideoSource;
.super Ljava/lang/Object;
.source "UnVideoSource.kt"

# interfaces
.implements Lcom/metamoji/video/IAmvSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/un/video/UnVideoSource$CREATOR;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u0000 *2\u00020\u0001:\u0001*B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0008\u0010\u0010\u001a\u00020\u0011H\u0016J\u0008\u0010\u0012\u001a\u00020\u0011H\u0016J\u0013\u0010\u0013\u001a\u00020\u00052\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0096\u0002J\u0008\u0010\u0016\u001a\u00020\rH\u0016J\u0010\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u0096@\u00a2\u0006\u0002\u0010\u0019J\u0010\u0010\u001e\u001a\u0004\u0018\u00010\u000fH\u0096@\u00a2\u0006\u0002\u0010\u0019J\u0008\u0010#\u001a\u00020\u0011H\u0016J\u0008\u0010$\u001a\u00020\u0005H\u0016J\u0018\u0010%\u001a\u00020\u00112\u0006\u0010&\u001a\u00020\'2\u0006\u0010(\u001a\u00020\rH\u0016J\u0008\u0010)\u001a\u00020\rH\u0016R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u001a\u001a\u00020\u00038BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001c\u0010\u001d\u001a\u0004\u0008\u001b\u0010\tR\u0014\u0010\u001f\u001a\u00020 X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008!\u0010\"\u00a8\u0006+"
    }
    d2 = {
        "Lcom/metamoji/un/video/UnVideoSource;",
        "Lcom/metamoji/video/IAmvSource;",
        "ticket",
        "",
        "preferToUseCache",
        "",
        "<init>",
        "(Ljava/lang/String;Z)V",
        "getTicket",
        "()Ljava/lang/String;",
        "mCache",
        "Lcom/metamoji/video/IAmvCache;",
        "mRefCount",
        "",
        "mLocalFileResource",
        "Ljava/io/File;",
        "addRef",
        "",
        "release",
        "equals",
        "other",
        "",
        "hashCode",
        "getUriAsync",
        "Landroid/net/Uri;",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "defaultErrorMessage",
        "getDefaultErrorMessage",
        "defaultErrorMessage$delegate",
        "Lkotlin/Lazy;",
        "getFileAsync",
        "error",
        "Lcom/metamoji/video/AmvError;",
        "getError",
        "()Lcom/metamoji/video/AmvError;",
        "invalidate",
        "recover",
        "writeToParcel",
        "dest",
        "Landroid/os/Parcel;",
        "flags",
        "describeContents",
        "CREATOR",
        "app"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final CREATOR:Lcom/metamoji/un/video/UnVideoSource$CREATOR;


# instance fields
.field private final defaultErrorMessage$delegate:Lkotlin/Lazy;

.field private final error:Lcom/metamoji/video/AmvError;

.field private mCache:Lcom/metamoji/video/IAmvCache;

.field private mLocalFileResource:Ljava/io/File;

.field private mRefCount:I

.field private final preferToUseCache:Z

.field private final ticket:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/metamoji/un/video/UnVideoSource$CREATOR;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/un/video/UnVideoSource$CREATOR;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/metamoji/un/video/UnVideoSource;->CREATOR:Lcom/metamoji/un/video/UnVideoSource$CREATOR;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1

    const-string/jumbo v0, "ticket"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/un/video/UnVideoSource;->ticket:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/metamoji/un/video/UnVideoSource;->preferToUseCache:Z

    const/4 p1, 0x1

    .line 17
    iput p1, p0, Lcom/metamoji/un/video/UnVideoSource;->mRefCount:I

    .line 98
    new-instance p1, Lcom/metamoji/un/video/UnVideoSource$$ExternalSyntheticLambda0;

    invoke-direct {p1}, Lcom/metamoji/un/video/UnVideoSource$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/un/video/UnVideoSource;->defaultErrorMessage$delegate:Lkotlin/Lazy;

    .line 151
    new-instance p1, Lcom/metamoji/video/AmvError;

    invoke-direct {p1}, Lcom/metamoji/video/AmvError;-><init>()V

    iput-object p1, p0, Lcom/metamoji/un/video/UnVideoSource;->error:Lcom/metamoji/video/AmvError;

    return-void
.end method

.method static final defaultErrorMessage_delegate$lambda$5()Ljava/lang/String;
    .locals 2

    .line 99
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_VIDEO_IS_NOT_FOUND:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method private final getDefaultErrorMessage()Ljava/lang/String;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/metamoji/un/video/UnVideoSource;->defaultErrorMessage$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public addRef()V
    .locals 1

    .line 21
    monitor-enter p0

    .line 22
    :try_start_0
    iget v0, p0, Lcom/metamoji/un/video/UnVideoSource;->mRefCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/metamoji/un/video/UnVideoSource;->mRefCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 37
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 40
    :cond_0
    instance-of v0, p1, Lcom/metamoji/un/video/UnVideoSource;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/metamoji/un/video/UnVideoSource;

    iget-object p1, p1, Lcom/metamoji/un/video/UnVideoSource;->ticket:Ljava/lang/String;

    iget-object v0, p0, Lcom/metamoji/un/video/UnVideoSource;->ticket:Ljava/lang/String;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public getError()Lcom/metamoji/video/AmvError;
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/metamoji/un/video/UnVideoSource;->error:Lcom/metamoji/video/AmvError;

    return-object v0
.end method

.method public getFileAsync(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/io/File;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lcom/metamoji/un/video/UnVideoSource$getFileAsync$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/metamoji/un/video/UnVideoSource$getFileAsync$1;

    iget v1, v0, Lcom/metamoji/un/video/UnVideoSource$getFileAsync$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lcom/metamoji/un/video/UnVideoSource$getFileAsync$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lcom/metamoji/un/video/UnVideoSource$getFileAsync$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/metamoji/un/video/UnVideoSource$getFileAsync$1;

    invoke-direct {v0, p0, p1}, Lcom/metamoji/un/video/UnVideoSource$getFileAsync$1;-><init>(Lcom/metamoji/un/video/UnVideoSource;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/metamoji/un/video/UnVideoSource$getFileAsync$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 102
    iget v2, v0, Lcom/metamoji/un/video/UnVideoSource$getFileAsync$1;->label:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v2, :cond_4

    if-eq v2, v5, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object v1, v0, Lcom/metamoji/un/video/UnVideoSource$getFileAsync$1;->L$3:Ljava/lang/Object;

    check-cast v1, Lcom/metamoji/video/IAmvCache;

    iget-object v1, v0, Lcom/metamoji/un/video/UnVideoSource$getFileAsync$1;->L$2:Ljava/lang/Object;

    check-cast v1, Landroid/net/Uri;

    iget-object v1, v0, Lcom/metamoji/un/video/UnVideoSource$getFileAsync$1;->L$1:Ljava/lang/Object;

    iget-object v0, v0, Lcom/metamoji/un/video/UnVideoSource$getFileAsync$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lcom/metamoji/video/IAmvCache;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object v2, v0, Lcom/metamoji/un/video/UnVideoSource$getFileAsync$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lcom/metamoji/video/IAmvCache;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    iget-object v0, v0, Lcom/metamoji/un/video/UnVideoSource$getFileAsync$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lcom/metamoji/video/IAmvCache;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 103
    monitor-enter p0

    .line 104
    :try_start_0
    iget p1, p0, Lcom/metamoji/un/video/UnVideoSource;->mRefCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-gtz p1, :cond_5

    .line 105
    monitor-exit p0

    return-object v6

    .line 107
    :cond_5
    :try_start_1
    iget-object p1, p0, Lcom/metamoji/un/video/UnVideoSource;->mCache:Lcom/metamoji/video/IAmvCache;

    if-nez p1, :cond_6

    iget-boolean p1, p0, Lcom/metamoji/un/video/UnVideoSource;->preferToUseCache:Z

    if-eqz p1, :cond_6

    .line 108
    sget-object p1, Lcom/metamoji/video/AmvCacheManager;->INSTANCE:Lcom/metamoji/video/AmvCacheManager;

    iget-object v2, p0, Lcom/metamoji/un/video/UnVideoSource;->ticket:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/metamoji/video/AmvCacheManager;->peekCache(Ljava/lang/String;)Lcom/metamoji/video/IAmvCache;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/un/video/UnVideoSource;->mCache:Lcom/metamoji/video/IAmvCache;

    .line 110
    :cond_6
    iget-object v2, p0, Lcom/metamoji/un/video/UnVideoSource;->mCache:Lcom/metamoji/video/IAmvCache;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 103
    monitor-exit p0

    if-eqz v2, :cond_9

    .line 114
    iput-object v2, v0, Lcom/metamoji/un/video/UnVideoSource$getFileAsync$1;->L$0:Ljava/lang/Object;

    iput v5, v0, Lcom/metamoji/un/video/UnVideoSource$getFileAsync$1;->label:I

    invoke-interface {v2, v0}, Lcom/metamoji/video/IAmvCache;->getFileAsync(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_7

    goto/16 :goto_3

    :cond_7
    move-object v0, v2

    .line 102
    :goto_1
    move-object v1, p1

    check-cast v1, Ljava/io/File;

    if-nez v1, :cond_8

    .line 116
    invoke-virtual {p0}, Lcom/metamoji/un/video/UnVideoSource;->getError()Lcom/metamoji/video/AmvError;

    move-result-object v1

    invoke-interface {v0}, Lcom/metamoji/video/IAmvCache;->getError()Lcom/metamoji/video/AmvError;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/metamoji/video/AmvError;->copyFrom(Lcom/metamoji/video/AmvError;)V

    :cond_8
    return-object p1

    .line 121
    :cond_9
    sget-object p1, Lcom/metamoji/media/video/VfVideoFileManager;->Companion:Lcom/metamoji/media/video/VfVideoFileManager$Companion;

    invoke-virtual {p1}, Lcom/metamoji/media/video/VfVideoFileManager$Companion;->getInstance()Lcom/metamoji/media/video/VfVideoFileManager;

    move-result-object p1

    iget-object v7, p0, Lcom/metamoji/un/video/UnVideoSource;->ticket:Ljava/lang/String;

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    iput-object v8, v0, Lcom/metamoji/un/video/UnVideoSource$getFileAsync$1;->L$0:Ljava/lang/Object;

    iput v4, v0, Lcom/metamoji/un/video/UnVideoSource$getFileAsync$1;->label:I

    invoke-virtual {p1, v7, v5, v6, v0}, Lcom/metamoji/media/video/VfVideoFileManager;->getPathForPlayback(Ljava/lang/String;ZLcom/metamoji/df/model/IModel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_a

    goto :goto_3

    .line 122
    :cond_a
    :goto_2
    instance-of v4, p1, Ljava/io/File;

    if-eqz v4, :cond_b

    .line 123
    check-cast p1, Ljava/io/File;

    iput-object p1, p0, Lcom/metamoji/un/video/UnVideoSource;->mLocalFileResource:Ljava/io/File;

    return-object p1

    .line 126
    :cond_b
    instance-of v4, p1, Ljava/lang/String;

    if-eqz v4, :cond_f

    .line 127
    move-object v4, p1

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    if-nez v4, :cond_c

    .line 129
    invoke-virtual {p0}, Lcom/metamoji/un/video/UnVideoSource;->getError()Lcom/metamoji/video/AmvError;

    move-result-object p1

    invoke-direct {p0}, Lcom/metamoji/un/video/UnVideoSource;->getDefaultErrorMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/metamoji/video/AmvError;->setError(Ljava/lang/String;)V

    return-object v6

    .line 132
    :cond_c
    sget-object v5, Lcom/metamoji/video/AmvCacheManager;->INSTANCE:Lcom/metamoji/video/AmvCacheManager;

    iget-object v7, p0, Lcom/metamoji/un/video/UnVideoSource;->ticket:Ljava/lang/String;

    invoke-virtual {v5, v4, v7}, Lcom/metamoji/video/AmvCacheManager;->getCache(Landroid/net/Uri;Ljava/lang/String;)Lcom/metamoji/video/IAmvCache;

    move-result-object v5

    .line 133
    monitor-enter p0

    .line 134
    :try_start_2
    iget v7, p0, Lcom/metamoji/un/video/UnVideoSource;->mRefCount:I

    if-ltz v7, :cond_e

    .line 135
    iput-object v5, p0, Lcom/metamoji/un/video/UnVideoSource;->mCache:Lcom/metamoji/video/IAmvCache;

    .line 140
    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 133
    monitor-exit p0

    .line 141
    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v0, Lcom/metamoji/un/video/UnVideoSource$getFileAsync$1;->L$0:Ljava/lang/Object;

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v0, Lcom/metamoji/un/video/UnVideoSource$getFileAsync$1;->L$1:Ljava/lang/Object;

    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v0, Lcom/metamoji/un/video/UnVideoSource$getFileAsync$1;->L$2:Ljava/lang/Object;

    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v0, Lcom/metamoji/un/video/UnVideoSource$getFileAsync$1;->L$3:Ljava/lang/Object;

    iput v3, v0, Lcom/metamoji/un/video/UnVideoSource$getFileAsync$1;->label:I

    invoke-interface {v5, v0}, Lcom/metamoji/video/IAmvCache;->getFileAsync(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_d

    :goto_3
    return-object v1

    :cond_d
    return-object p1

    .line 137
    :cond_e
    :try_start_3
    invoke-interface {v5}, Lcom/metamoji/video/IAmvCache;->release()I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 138
    monitor-exit p0

    return-object v6

    :catchall_0
    move-exception p1

    .line 133
    monitor-exit p0

    throw p1

    .line 145
    :cond_f
    invoke-virtual {p0}, Lcom/metamoji/un/video/UnVideoSource;->getError()Lcom/metamoji/video/AmvError;

    move-result-object p1

    invoke-direct {p0}, Lcom/metamoji/un/video/UnVideoSource;->getDefaultErrorMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/metamoji/video/AmvError;->setError(Ljava/lang/String;)V

    return-object v6

    :catchall_1
    move-exception p1

    .line 103
    monitor-exit p0

    throw p1
.end method

.method public final getTicket()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/metamoji/un/video/UnVideoSource;->ticket:Ljava/lang/String;

    return-object v0
.end method

.method public getUriAsync(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroid/net/Uri;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lcom/metamoji/un/video/UnVideoSource$getUriAsync$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/metamoji/un/video/UnVideoSource$getUriAsync$1;

    iget v1, v0, Lcom/metamoji/un/video/UnVideoSource$getUriAsync$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lcom/metamoji/un/video/UnVideoSource$getUriAsync$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lcom/metamoji/un/video/UnVideoSource$getUriAsync$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/metamoji/un/video/UnVideoSource$getUriAsync$1;

    invoke-direct {v0, p0, p1}, Lcom/metamoji/un/video/UnVideoSource$getUriAsync$1;-><init>(Lcom/metamoji/un/video/UnVideoSource;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/metamoji/un/video/UnVideoSource$getUriAsync$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 55
    iget v2, v0, Lcom/metamoji/un/video/UnVideoSource$getUriAsync$1;->label:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object v0, v0, Lcom/metamoji/un/video/UnVideoSource$getUriAsync$1;->L$0:Ljava/lang/Object;

    check-cast v0, Ljava/io/File;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 56
    monitor-enter p0

    .line 57
    :try_start_0
    iget p1, p0, Lcom/metamoji/un/video/UnVideoSource;->mRefCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-gtz p1, :cond_3

    .line 58
    monitor-exit p0

    return-object v4

    .line 60
    :cond_3
    :try_start_1
    iget-object p1, p0, Lcom/metamoji/un/video/UnVideoSource;->mCache:Lcom/metamoji/video/IAmvCache;

    if-nez p1, :cond_4

    iget-boolean p1, p0, Lcom/metamoji/un/video/UnVideoSource;->preferToUseCache:Z

    if-eqz p1, :cond_4

    .line 61
    sget-object p1, Lcom/metamoji/video/AmvCacheManager;->INSTANCE:Lcom/metamoji/video/AmvCacheManager;

    iget-object v2, p0, Lcom/metamoji/un/video/UnVideoSource;->ticket:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/metamoji/video/AmvCacheManager;->peekCache(Ljava/lang/String;)Lcom/metamoji/video/IAmvCache;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/un/video/UnVideoSource;->mCache:Lcom/metamoji/video/IAmvCache;

    .line 63
    :cond_4
    iget-object p1, p0, Lcom/metamoji/un/video/UnVideoSource;->mCache:Lcom/metamoji/video/IAmvCache;

    if-eqz p1, :cond_5

    invoke-interface {p1}, Lcom/metamoji/video/IAmvCache;->getCacheFile()Ljava/io/File;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :cond_5
    move-object p1, v4

    .line 56
    :goto_1
    monitor-exit p0

    if-eqz p1, :cond_6

    .line 66
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    return-object p1

    .line 69
    :cond_6
    sget-object v2, Lcom/metamoji/media/video/VfVideoFileManager;->Companion:Lcom/metamoji/media/video/VfVideoFileManager$Companion;

    invoke-virtual {v2}, Lcom/metamoji/media/video/VfVideoFileManager$Companion;->getInstance()Lcom/metamoji/media/video/VfVideoFileManager;

    move-result-object v2

    iget-object v5, p0, Lcom/metamoji/un/video/UnVideoSource;->ticket:Ljava/lang/String;

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v0, Lcom/metamoji/un/video/UnVideoSource$getUriAsync$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Lcom/metamoji/un/video/UnVideoSource$getUriAsync$1;->label:I

    invoke-virtual {v2, v5, v3, v4, v0}, Lcom/metamoji/media/video/VfVideoFileManager;->getPathForPlayback(Ljava/lang/String;ZLcom/metamoji/df/model/IModel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_7

    return-object v1

    .line 70
    :cond_7
    :goto_2
    instance-of v0, p1, Ljava/io/File;

    if-eqz v0, :cond_8

    .line 71
    check-cast p1, Ljava/io/File;

    iput-object p1, p0, Lcom/metamoji/un/video/UnVideoSource;->mLocalFileResource:Ljava/io/File;

    .line 72
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    return-object p1

    .line 74
    :cond_8
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_b

    .line 75
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    if-nez p1, :cond_9

    .line 77
    invoke-virtual {p0}, Lcom/metamoji/un/video/UnVideoSource;->getError()Lcom/metamoji/video/AmvError;

    move-result-object v0

    invoke-direct {p0}, Lcom/metamoji/un/video/UnVideoSource;->getDefaultErrorMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/video/AmvError;->setError(Ljava/lang/String;)V

    return-object p1

    .line 79
    :cond_9
    sget-object v0, Lcom/metamoji/video/AmvCacheManager;->INSTANCE:Lcom/metamoji/video/AmvCacheManager;

    iget-object v1, p0, Lcom/metamoji/un/video/UnVideoSource;->ticket:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/metamoji/video/AmvCacheManager;->getCache(Landroid/net/Uri;Ljava/lang/String;)Lcom/metamoji/video/IAmvCache;

    move-result-object v0

    .line 80
    monitor-enter p1

    .line 81
    :try_start_2
    iget v1, p0, Lcom/metamoji/un/video/UnVideoSource;->mRefCount:I

    if-lez v1, :cond_a

    .line 82
    iput-object v0, p0, Lcom/metamoji/un/video/UnVideoSource;->mCache:Lcom/metamoji/video/IAmvCache;

    goto :goto_3

    .line 85
    :cond_a
    invoke-interface {v0}, Lcom/metamoji/video/IAmvCache;->release()I

    move-result v0

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    .line 87
    :goto_3
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 80
    monitor-exit p1

    return-object p1

    :catchall_0
    move-exception v0

    monitor-exit p1

    throw v0

    .line 92
    :cond_b
    invoke-virtual {p0}, Lcom/metamoji/un/video/UnVideoSource;->getError()Lcom/metamoji/video/AmvError;

    move-result-object p1

    invoke-direct {p0}, Lcom/metamoji/un/video/UnVideoSource;->getDefaultErrorMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/metamoji/video/AmvError;->setError(Ljava/lang/String;)V

    return-object v4

    :catchall_1
    move-exception p1

    .line 56
    monitor-exit p0

    throw p1
.end method

.method public hashCode()I
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/metamoji/un/video/UnVideoSource;->ticket:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public invalidate()V
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/metamoji/un/video/UnVideoSource;->mCache:Lcom/metamoji/video/IAmvCache;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/metamoji/video/IAmvCache;->invalidate()V

    :cond_0
    return-void
.end method

.method public recover()Z
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/metamoji/un/video/UnVideoSource;->mLocalFileResource:Ljava/io/File;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 159
    iput-object v0, p0, Lcom/metamoji/un/video/UnVideoSource;->mLocalFileResource:Ljava/io/File;

    const/4 v0, 0x1

    return v0

    .line 162
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/video/UnVideoSource;->invalidate()V

    const/4 v0, 0x0

    return v0
.end method

.method public release()V
    .locals 1

    .line 27
    monitor-enter p0

    .line 28
    :try_start_0
    iget v0, p0, Lcom/metamoji/un/video/UnVideoSource;->mRefCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/metamoji/un/video/UnVideoSource;->mRefCount:I

    if-nez v0, :cond_1

    .line 30
    iget-object v0, p0, Lcom/metamoji/un/video/UnVideoSource;->mCache:Lcom/metamoji/video/IAmvCache;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/metamoji/video/IAmvCache;->release()I

    :cond_0
    const/4 v0, 0x0

    .line 31
    iput-object v0, p0, Lcom/metamoji/un/video/UnVideoSource;->mCache:Lcom/metamoji/video/IAmvCache;

    .line 33
    :cond_1
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    const-string p2, "dest"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 169
    iget-object p2, p0, Lcom/metamoji/un/video/UnVideoSource;->ticket:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 170
    iget-boolean p2, p0, Lcom/metamoji/un/video/UnVideoSource;->preferToUseCache:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
