.class public final Lcom/metamoji/ui/task/SaveFileSource;
.super Ljava/lang/Object;
.source "SaveTypedFileTask.kt"

# interfaces
.implements Lcom/metamoji/ui/task/ISaveFileSource;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u000e\n\u0002\u0010\u0000\n\u0002\u0008\u0003\u0008\u0086\u0008\u0018\u00002\u00020\u0001B5\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0016\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0096@\u00a2\u0006\u0002\u0010\u0010J\u0010\u0010\u0011\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0016J\u0008\u0010\u0012\u001a\u00020\rH\u0016J\t\u0010\u001b\u001a\u00020\u0003H\u00c2\u0003J\t\u0010\u001c\u001a\u00020\u0005H\u00c2\u0003J\t\u0010\u001d\u001a\u00020\u0007H\u00c2\u0003J\t\u0010\u001e\u001a\u00020\u0007H\u00c2\u0003J\t\u0010\u001f\u001a\u00020\u0007H\u00c2\u0003J;\u0010 \u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u00072\u0008\u0008\u0002\u0010\t\u001a\u00020\u0007H\u00c6\u0001J\u0013\u0010!\u001a\u00020\u00052\u0008\u0010\"\u001a\u0004\u0018\u00010#H\u00d6\u0003J\t\u0010$\u001a\u00020\u0007H\u00d6\u0001J\t\u0010%\u001a\u00020\u0014H\u00d6\u0001R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0013\u001a\u0004\u0018\u00010\u00148VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0015\u0010\u0016R\u0014\u0010\u0017\u001a\u00020\u00148VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0018\u0010\u0016R\u0014\u0010\u0019\u001a\u00020\u00148VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001a\u0010\u0016\u00a8\u0006&"
    }
    d2 = {
        "Lcom/metamoji/ui/task/SaveFileSource;",
        "Lcom/metamoji/ui/task/ISaveFileSource;",
        "sourceFile",
        "Ljava/io/File;",
        "deleteSource",
        "",
        "messageTitleId",
        "",
        "positiveMessageId",
        "negativeMessageId",
        "<init>",
        "(Ljava/io/File;ZIII)V",
        "saveTo",
        "",
        "uri",
        "Landroid/net/Uri;",
        "(Landroid/net/Uri;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "onSaved",
        "dispose",
        "messageTitle",
        "",
        "getMessageTitle",
        "()Ljava/lang/String;",
        "positiveMessage",
        "getPositiveMessage",
        "negativeMessage",
        "getNegativeMessage",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "copy",
        "equals",
        "other",
        "",
        "hashCode",
        "toString",
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


# instance fields
.field private final deleteSource:Z

.field private final messageTitleId:I

.field private final negativeMessageId:I

.field private final positiveMessageId:I

.field private final sourceFile:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;ZIII)V
    .locals 1

    const-string/jumbo v0, "sourceFile"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/metamoji/ui/task/SaveFileSource;->sourceFile:Ljava/io/File;

    .line 41
    iput-boolean p2, p0, Lcom/metamoji/ui/task/SaveFileSource;->deleteSource:Z

    .line 42
    iput p3, p0, Lcom/metamoji/ui/task/SaveFileSource;->messageTitleId:I

    .line 43
    iput p4, p0, Lcom/metamoji/ui/task/SaveFileSource;->positiveMessageId:I

    .line 44
    iput p5, p0, Lcom/metamoji/ui/task/SaveFileSource;->negativeMessageId:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/io/File;ZIIIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_0

    const/4 p3, 0x0

    :cond_0
    move v3, p3

    and-int/lit8 p3, p6, 0x8

    if-eqz p3, :cond_1

    .line 43
    sget-object p3, Lcom/metamoji/ui/task/ISaveFileSource$Default;->INSTANCE:Lcom/metamoji/ui/task/ISaveFileSource$Default;

    invoke-virtual {p3}, Lcom/metamoji/ui/task/ISaveFileSource$Default;->getPositiveMessageId()I

    move-result p4

    :cond_1
    move v4, p4

    and-int/lit8 p3, p6, 0x10

    if-eqz p3, :cond_2

    .line 44
    sget-object p3, Lcom/metamoji/ui/task/ISaveFileSource$Default;->INSTANCE:Lcom/metamoji/ui/task/ISaveFileSource$Default;

    invoke-virtual {p3}, Lcom/metamoji/ui/task/ISaveFileSource$Default;->getNegativeMessageId()I

    move-result p5

    :cond_2
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v5, p5

    .line 39
    invoke-direct/range {v0 .. v5}, Lcom/metamoji/ui/task/SaveFileSource;-><init>(Ljava/io/File;ZIII)V

    return-void
.end method

.method private final component1()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/metamoji/ui/task/SaveFileSource;->sourceFile:Ljava/io/File;

    return-object v0
.end method

.method private final component2()Z
    .locals 1

    iget-boolean v0, p0, Lcom/metamoji/ui/task/SaveFileSource;->deleteSource:Z

    return v0
.end method

.method private final component3()I
    .locals 1

    iget v0, p0, Lcom/metamoji/ui/task/SaveFileSource;->messageTitleId:I

    return v0
.end method

.method private final component4()I
    .locals 1

    iget v0, p0, Lcom/metamoji/ui/task/SaveFileSource;->positiveMessageId:I

    return v0
.end method

.method private final component5()I
    .locals 1

    iget v0, p0, Lcom/metamoji/ui/task/SaveFileSource;->negativeMessageId:I

    return v0
.end method

.method public static synthetic copy$default(Lcom/metamoji/ui/task/SaveFileSource;Ljava/io/File;ZIIIILjava/lang/Object;)Lcom/metamoji/ui/task/SaveFileSource;
    .locals 0

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    iget-object p1, p0, Lcom/metamoji/ui/task/SaveFileSource;->sourceFile:Ljava/io/File;

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    iget-boolean p2, p0, Lcom/metamoji/ui/task/SaveFileSource;->deleteSource:Z

    :cond_1
    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_2

    iget p3, p0, Lcom/metamoji/ui/task/SaveFileSource;->messageTitleId:I

    :cond_2
    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_3

    iget p4, p0, Lcom/metamoji/ui/task/SaveFileSource;->positiveMessageId:I

    :cond_3
    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_4

    iget p5, p0, Lcom/metamoji/ui/task/SaveFileSource;->negativeMessageId:I

    :cond_4
    move p6, p4

    move p7, p5

    move p4, p2

    move p5, p3

    move-object p2, p0

    move-object p3, p1

    invoke-virtual/range {p2 .. p7}, Lcom/metamoji/ui/task/SaveFileSource;->copy(Ljava/io/File;ZIII)Lcom/metamoji/ui/task/SaveFileSource;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final copy(Ljava/io/File;ZIII)Lcom/metamoji/ui/task/SaveFileSource;
    .locals 7

    const-string/jumbo v0, "sourceFile"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/metamoji/ui/task/SaveFileSource;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/metamoji/ui/task/SaveFileSource;-><init>(Ljava/io/File;ZIII)V

    return-object v1
.end method

.method public dispose()V
    .locals 1

    .line 63
    iget-boolean v0, p0, Lcom/metamoji/ui/task/SaveFileSource;->deleteSource:Z

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/metamoji/ui/task/SaveFileSource;->sourceFile:Ljava/io/File;

    invoke-static {v0}, Lcom/metamoji/media/video/network/VfCloudKt;->safeDelete(Ljava/io/File;)V

    :cond_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/metamoji/ui/task/SaveFileSource;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/metamoji/ui/task/SaveFileSource;

    iget-object v1, p0, Lcom/metamoji/ui/task/SaveFileSource;->sourceFile:Ljava/io/File;

    iget-object v3, p1, Lcom/metamoji/ui/task/SaveFileSource;->sourceFile:Ljava/io/File;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lcom/metamoji/ui/task/SaveFileSource;->deleteSource:Z

    iget-boolean v3, p1, Lcom/metamoji/ui/task/SaveFileSource;->deleteSource:Z

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/metamoji/ui/task/SaveFileSource;->messageTitleId:I

    iget v3, p1, Lcom/metamoji/ui/task/SaveFileSource;->messageTitleId:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcom/metamoji/ui/task/SaveFileSource;->positiveMessageId:I

    iget v3, p1, Lcom/metamoji/ui/task/SaveFileSource;->positiveMessageId:I

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget v1, p0, Lcom/metamoji/ui/task/SaveFileSource;->negativeMessageId:I

    iget p1, p1, Lcom/metamoji/ui/task/SaveFileSource;->negativeMessageId:I

    if-eq v1, p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public getMessageTitle()Ljava/lang/String;
    .locals 2

    .line 69
    iget v0, p0, Lcom/metamoji/ui/task/SaveFileSource;->messageTitleId:I

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/metamoji/ui/task/SaveFileSource;->messageTitleId:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNegativeMessage()Ljava/lang/String;
    .locals 2

    .line 73
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/metamoji/ui/task/SaveFileSource;->negativeMessageId:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public getPositiveMessage()Ljava/lang/String;
    .locals 2

    .line 71
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/metamoji/ui/task/SaveFileSource;->positiveMessageId:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/metamoji/ui/task/SaveFileSource;->sourceFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/metamoji/ui/task/SaveFileSource;->deleteSource:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/metamoji/ui/task/SaveFileSource;->messageTitleId:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/metamoji/ui/task/SaveFileSource;->positiveMessageId:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/metamoji/ui/task/SaveFileSource;->negativeMessageId:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public onSaved(Landroid/net/Uri;)V
    .locals 1

    const-string/jumbo v0, "uri"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public saveTo(Landroid/net/Uri;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-string p2, "cannot open input file: "

    .line 47
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 48
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "getContentResolver(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, p1}, Lcom/metamoji/cm/OopsKt;->openTruncatedStream(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v1

    if-eqz v1, :cond_1

    check-cast v1, Ljava/io/Closeable;

    :try_start_0
    move-object p1, v1

    check-cast p1, Ljava/io/OutputStream;

    .line 49
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/metamoji/ui/task/SaveFileSource;->sourceFile:Ljava/io/File;

    invoke-static {v3, v0}, Lcom/metamoji/cm/CmUtils;->getUriFromFile(Ljava/io/File;Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Ljava/io/Closeable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    move-object p2, v0

    check-cast p2, Ljava/io/InputStream;

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    .line 50
    invoke-static {p2, p1, v2, v3, v4}, Lkotlin/io/ByteStreamsKt;->copyTo$default(Ljava/io/InputStream;Ljava/io/OutputStream;IILjava/lang/Object;)J

    .line 51
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    :try_start_2
    invoke-static {v0, v4}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 54
    sget-object p1, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase;->Companion:Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase$Companion;

    invoke-virtual {p1}, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase$Companion;->getLogger()Lcom/metamoji/lib/utils/UtLog;

    move-result-object p1

    const-string p2, "file saved"

    invoke-virtual {p1, p2}, Lcom/metamoji/lib/utils/UtLog;->debug(Ljava/lang/String;)V

    .line 55
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 48
    invoke-static {v1, v4}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 56
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :catchall_0
    move-exception p1

    .line 49
    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p2

    :try_start_4
    invoke-static {v0, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p2

    .line 53
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    iget-object v0, p0, Lcom/metamoji/ui/task/SaveFileSource;->sourceFile:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception p1

    .line 48
    :try_start_5
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :catchall_3
    move-exception p2

    invoke-static {v1, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p2

    .line 55
    :cond_1
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "cannot open output file: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    iget-object v0, p0, Lcom/metamoji/ui/task/SaveFileSource;->sourceFile:Ljava/io/File;

    iget-boolean v1, p0, Lcom/metamoji/ui/task/SaveFileSource;->deleteSource:Z

    iget v2, p0, Lcom/metamoji/ui/task/SaveFileSource;->messageTitleId:I

    iget v3, p0, Lcom/metamoji/ui/task/SaveFileSource;->positiveMessageId:I

    iget v4, p0, Lcom/metamoji/ui/task/SaveFileSource;->negativeMessageId:I

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "SaveFileSource(sourceFile="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ", deleteSource="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", messageTitleId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", positiveMessageId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", negativeMessageId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
