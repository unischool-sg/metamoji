.class public final Lcom/metamoji/video/transcoder/AmvCascadeTranscoder;
.super Ljava/lang/Object;
.source "AmvCascadeTranscoder.kt"

# interfaces
.implements Lcom/metamoji/video/transcoder/IAmvTranscoder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/video/transcoder/AmvCascadeTranscoder$Mode;,
        Lcom/metamoji/video/transcoder/AmvCascadeTranscoder$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\t\n\u0002\u0008\u0015\u0018\u00002\u00020\u0001:\u00016B!\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0018\u0010)\u001a\u00020\u00132\u0006\u0010*\u001a\u00020\u00012\u0006\u0010+\u001a\u00020\u0012H\u0002J\u0018\u0010,\u001a\u00020\u00132\u0006\u0010*\u001a\u00020\u00012\u0006\u0010-\u001a\u00020\u0017H\u0002J\u0008\u0010.\u001a\u00020\u0013H\u0002J\u0008\u0010/\u001a\u00020\u0013H\u0002J\u0010\u00100\u001a\u00020\u00132\u0006\u0010 \u001a\u00020\u0003H\u0016J \u00101\u001a\u00020\u00132\u0006\u0010 \u001a\u00020\u00032\u0006\u00102\u001a\u00020\"2\u0006\u00103\u001a\u00020\"H\u0016J\u0008\u00104\u001a\u00020\u0013H\u0016J\u0008\u00105\u001a\u00020\u0013H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0011\u0010\u000c\u001a\u00020\r\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR&\u0010\u0010\u001a\u0014\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u00130\u0011X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015R&\u0010\u0016\u001a\u0014\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u00130\u0011X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0015R\u001e\u0010\u001b\u001a\u00020\u001a2\u0006\u0010\u0019\u001a\u00020\u001a@RX\u0096\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001c\u0010\u001dR\u000e\u0010\u001e\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001f\u001a\u00020\u0001X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010 \u001a\u00020\u0003X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010!\u001a\u00020\"X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010#\u001a\u00020\"X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u0010$\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008%\u0010&\"\u0004\u0008\'\u0010(\u00a8\u00067"
    }
    d2 = {
        "Lcom/metamoji/video/transcoder/AmvCascadeTranscoder;",
        "Lcom/metamoji/video/transcoder/IAmvTranscoder;",
        "sourceFile",
        "Ljava/io/File;",
        "context",
        "Landroid/content/Context;",
        "transcodeMode",
        "Lcom/metamoji/video/transcoder/AmvCascadeTranscoder$Mode;",
        "<init>",
        "(Ljava/io/File;Landroid/content/Context;Lcom/metamoji/video/transcoder/AmvCascadeTranscoder$Mode;)V",
        "getContext",
        "()Landroid/content/Context;",
        "logger",
        "Lcom/metamoji/lib/utils/UtLog;",
        "getLogger",
        "()Lcom/metamoji/lib/utils/UtLog;",
        "completionListener",
        "Lcom/metamoji/lib/utils/FuncyListener2;",
        "",
        "",
        "getCompletionListener",
        "()Lcom/metamoji/lib/utils/FuncyListener2;",
        "progressListener",
        "",
        "getProgressListener",
        "value",
        "Lcom/metamoji/video/AmvError;",
        "error",
        "getError",
        "()Lcom/metamoji/video/AmvError;",
        "mode",
        "transcoder",
        "distFile",
        "trimStart",
        "",
        "trimEnd",
        "tempFile",
        "getTempFile",
        "()Ljava/io/File;",
        "setTempFile",
        "(Ljava/io/File;)V",
        "internalCompleted",
        "tr",
        "result",
        "internalProgress",
        "progress",
        "retry",
        "next",
        "transcode",
        "truncate",
        "start",
        "end",
        "cancel",
        "dispose",
        "Mode",
        "video"
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
.field private final completionListener:Lcom/metamoji/lib/utils/FuncyListener2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/metamoji/lib/utils/FuncyListener2<",
            "Lcom/metamoji/video/transcoder/IAmvTranscoder;",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final context:Landroid/content/Context;

.field private distFile:Ljava/io/File;

.field private error:Lcom/metamoji/video/AmvError;

.field private final logger:Lcom/metamoji/lib/utils/UtLog;

.field private mode:Lcom/metamoji/video/transcoder/AmvCascadeTranscoder$Mode;

.field private final progressListener:Lcom/metamoji/lib/utils/FuncyListener2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/metamoji/lib/utils/FuncyListener2<",
            "Lcom/metamoji/video/transcoder/IAmvTranscoder;",
            "Ljava/lang/Float;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final sourceFile:Ljava/io/File;

.field private tempFile:Ljava/io/File;

.field private transcoder:Lcom/metamoji/video/transcoder/IAmvTranscoder;

.field private trimEnd:J

.field private trimStart:J


# direct methods
.method public constructor <init>(Ljava/io/File;Landroid/content/Context;Lcom/metamoji/video/transcoder/AmvCascadeTranscoder$Mode;)V
    .locals 1

    const-string v0, "sourceFile"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transcodeMode"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/video/transcoder/AmvCascadeTranscoder;->sourceFile:Ljava/io/File;

    iput-object p2, p0, Lcom/metamoji/video/transcoder/AmvCascadeTranscoder;->context:Landroid/content/Context;

    .line 14
    sget-object v0, Lcom/metamoji/video/AmvSettings;->INSTANCE:Lcom/metamoji/video/AmvSettings;

    invoke-virtual {v0}, Lcom/metamoji/video/AmvSettings;->getLogger()Lcom/metamoji/lib/utils/UtLog;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/video/transcoder/AmvCascadeTranscoder;->logger:Lcom/metamoji/lib/utils/UtLog;

    .line 16
    new-instance v0, Lcom/metamoji/lib/utils/FuncyListener2;

    invoke-direct {v0}, Lcom/metamoji/lib/utils/FuncyListener2;-><init>()V

    iput-object v0, p0, Lcom/metamoji/video/transcoder/AmvCascadeTranscoder;->completionListener:Lcom/metamoji/lib/utils/FuncyListener2;

    .line 17
    new-instance v0, Lcom/metamoji/lib/utils/FuncyListener2;

    invoke-direct {v0}, Lcom/metamoji/lib/utils/FuncyListener2;-><init>()V

    iput-object v0, p0, Lcom/metamoji/video/transcoder/AmvCascadeTranscoder;->progressListener:Lcom/metamoji/lib/utils/FuncyListener2;

    .line 18
    new-instance v0, Lcom/metamoji/video/AmvError;

    invoke-direct {v0}, Lcom/metamoji/video/AmvError;-><init>()V

    iput-object v0, p0, Lcom/metamoji/video/transcoder/AmvCascadeTranscoder;->error:Lcom/metamoji/video/AmvError;

    .line 32
    iput-object p3, p0, Lcom/metamoji/video/transcoder/AmvCascadeTranscoder;->mode:Lcom/metamoji/video/transcoder/AmvCascadeTranscoder$Mode;

    .line 37
    sget-object v0, Lcom/metamoji/video/transcoder/AmvCascadeTranscoder$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p3}, Lcom/metamoji/video/transcoder/AmvCascadeTranscoder$Mode;->ordinal()I

    move-result p3

    aget p3, v0, p3

    const/4 v0, 0x1

    if-eq p3, v0, :cond_3

    const/4 v0, 0x2

    if-eq p3, v0, :cond_2

    const/4 v0, 0x3

    if-eq p3, v0, :cond_1

    const/4 p2, 0x4

    if-ne p3, p2, :cond_0

    .line 41
    new-instance p2, Lcom/metamoji/video/transcoder/AmvAmpTranscoder;

    invoke-direct {p2, p1}, Lcom/metamoji/video/transcoder/AmvAmpTranscoder;-><init>(Ljava/io/File;)V

    check-cast p2, Lcom/metamoji/video/transcoder/IAmvTranscoder;

    goto :goto_0

    .line 37
    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 40
    :cond_1
    new-instance p3, Lcom/metamoji/video/transcoder/AmvExoTranscoder;

    invoke-direct {p3, p1, p2}, Lcom/metamoji/video/transcoder/AmvExoTranscoder;-><init>(Ljava/io/File;Landroid/content/Context;)V

    move-object p2, p3

    check-cast p2, Lcom/metamoji/video/transcoder/IAmvTranscoder;

    goto :goto_0

    .line 39
    :cond_2
    new-instance p2, Lcom/metamoji/video/transcoder/AmvAmpTranscoder;

    invoke-direct {p2, p1}, Lcom/metamoji/video/transcoder/AmvAmpTranscoder;-><init>(Ljava/io/File;)V

    check-cast p2, Lcom/metamoji/video/transcoder/IAmvTranscoder;

    goto :goto_0

    .line 38
    :cond_3
    new-instance p3, Lcom/metamoji/video/transcoder/AmvExoTranscoder;

    invoke-direct {p3, p1, p2}, Lcom/metamoji/video/transcoder/AmvExoTranscoder;-><init>(Ljava/io/File;Landroid/content/Context;)V

    move-object p2, p3

    check-cast p2, Lcom/metamoji/video/transcoder/IAmvTranscoder;

    .line 43
    :goto_0
    invoke-interface {p2}, Lcom/metamoji/video/transcoder/IAmvTranscoder;->getCompletionListener()Lcom/metamoji/lib/utils/FuncyListener2;

    move-result-object p1

    new-instance p3, Lcom/metamoji/video/transcoder/AmvCascadeTranscoder$transcoder$1$1;

    invoke-direct {p3, p0}, Lcom/metamoji/video/transcoder/AmvCascadeTranscoder$transcoder$1$1;-><init>(Ljava/lang/Object;)V

    check-cast p3, Lkotlin/jvm/functions/Function2;

    invoke-virtual {p1, p3}, Lcom/metamoji/lib/utils/FuncyListener2;->set(Lkotlin/jvm/functions/Function2;)V

    .line 44
    invoke-interface {p2}, Lcom/metamoji/video/transcoder/IAmvTranscoder;->getProgressListener()Lcom/metamoji/lib/utils/FuncyListener2;

    move-result-object p1

    new-instance p3, Lcom/metamoji/video/transcoder/AmvCascadeTranscoder$transcoder$1$2;

    invoke-direct {p3, p0}, Lcom/metamoji/video/transcoder/AmvCascadeTranscoder$transcoder$1$2;-><init>(Ljava/lang/Object;)V

    check-cast p3, Lkotlin/jvm/functions/Function2;

    invoke-virtual {p1, p3}, Lcom/metamoji/lib/utils/FuncyListener2;->set(Lkotlin/jvm/functions/Function2;)V

    .line 42
    iput-object p2, p0, Lcom/metamoji/video/transcoder/AmvCascadeTranscoder;->transcoder:Lcom/metamoji/video/transcoder/IAmvTranscoder;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/io/File;Landroid/content/Context;Lcom/metamoji/video/transcoder/AmvCascadeTranscoder$Mode;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    .line 13
    sget-object p3, Lcom/metamoji/video/transcoder/AmvCascadeTranscoder$Mode;->AUTO:Lcom/metamoji/video/transcoder/AmvCascadeTranscoder$Mode;

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/metamoji/video/transcoder/AmvCascadeTranscoder;-><init>(Ljava/io/File;Landroid/content/Context;Lcom/metamoji/video/transcoder/AmvCascadeTranscoder$Mode;)V

    return-void
.end method

.method public static final synthetic access$internalCompleted(Lcom/metamoji/video/transcoder/AmvCascadeTranscoder;Lcom/metamoji/video/transcoder/IAmvTranscoder;Z)V
    .locals 0

    .line 13
    invoke-direct {p0, p1, p2}, Lcom/metamoji/video/transcoder/AmvCascadeTranscoder;->internalCompleted(Lcom/metamoji/video/transcoder/IAmvTranscoder;Z)V

    return-void
.end method

.method public static final synthetic access$internalProgress(Lcom/metamoji/video/transcoder/AmvCascadeTranscoder;Lcom/metamoji/video/transcoder/IAmvTranscoder;F)V
    .locals 0

    .line 13
    invoke-direct {p0, p1, p2}, Lcom/metamoji/video/transcoder/AmvCascadeTranscoder;->internalProgress(Lcom/metamoji/video/transcoder/IAmvTranscoder;F)V

    return-void
.end method

.method private final internalCompleted(Lcom/metamoji/video/transcoder/IAmvTranscoder;Z)V
    .locals 5

    .line 68
    iget-object v0, p0, Lcom/metamoji/video/transcoder/AmvCascadeTranscoder;->logger:Lcom/metamoji/lib/utils/UtLog;

    iget-object v1, p0, Lcom/metamoji/video/transcoder/AmvCascadeTranscoder;->mode:Lcom/metamoji/video/transcoder/AmvCascadeTranscoder$Mode;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lcom/metamoji/video/transcoder/IAmvTranscoder;->getError()Lcom/metamoji/video/AmvError;

    move-result-object v3

    invoke-virtual {v3}, Lcom/metamoji/video/AmvError;->getMessage()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/lib/utils/UtLog;->info(Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lcom/metamoji/video/transcoder/AmvCascadeTranscoder;->mode:Lcom/metamoji/video/transcoder/AmvCascadeTranscoder$Mode;

    sget-object v1, Lcom/metamoji/video/transcoder/AmvCascadeTranscoder$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lcom/metamoji/video/transcoder/AmvCascadeTranscoder$Mode;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    const/4 v1, 0x2

    if-eq v0, v1, :cond_6

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    if-nez p2, :cond_1

    .line 85
    invoke-interface {p1}, Lcom/metamoji/video/transcoder/IAmvTranscoder;->getError()Lcom/metamoji/video/AmvError;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/video/AmvError;->getHasError()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 90
    :cond_0
    sget-object p1, Lcom/metamoji/video/transcoder/AmvCascadeTranscoder$Mode;->CASCADE:Lcom/metamoji/video/transcoder/AmvCascadeTranscoder$Mode;

    iput-object p1, p0, Lcom/metamoji/video/transcoder/AmvCascadeTranscoder;->mode:Lcom/metamoji/video/transcoder/AmvCascadeTranscoder$Mode;

    .line 91
    invoke-direct {p0}, Lcom/metamoji/video/transcoder/AmvCascadeTranscoder;->retry()V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-void

    .line 86
    :cond_1
    :goto_0
    invoke-interface {p1}, Lcom/metamoji/video/transcoder/IAmvTranscoder;->getError()Lcom/metamoji/video/AmvError;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/video/transcoder/AmvCascadeTranscoder;->error:Lcom/metamoji/video/AmvError;

    .line 87
    invoke-virtual {p0}, Lcom/metamoji/video/transcoder/AmvCascadeTranscoder;->getCompletionListener()Lcom/metamoji/lib/utils/FuncyListener2;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Lcom/metamoji/lib/utils/FuncyListener2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/Unit;

    return-void

    .line 69
    :cond_2
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :cond_3
    if-eqz p2, :cond_5

    .line 76
    instance-of v0, p1, Lcom/metamoji/video/transcoder/AmvExoTranscoder;

    if-nez v0, :cond_4

    goto :goto_1

    .line 81
    :cond_4
    invoke-direct {p0}, Lcom/metamoji/video/transcoder/AmvCascadeTranscoder;->next()V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-void

    .line 77
    :cond_5
    :goto_1
    invoke-interface {p1}, Lcom/metamoji/video/transcoder/IAmvTranscoder;->getError()Lcom/metamoji/video/AmvError;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/video/transcoder/AmvCascadeTranscoder;->error:Lcom/metamoji/video/AmvError;

    .line 78
    invoke-virtual {p0}, Lcom/metamoji/video/transcoder/AmvCascadeTranscoder;->getCompletionListener()Lcom/metamoji/lib/utils/FuncyListener2;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Lcom/metamoji/lib/utils/FuncyListener2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/Unit;

    return-void

    .line 72
    :cond_6
    invoke-interface {p1}, Lcom/metamoji/video/transcoder/IAmvTranscoder;->getError()Lcom/metamoji/video/AmvError;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/video/transcoder/AmvCascadeTranscoder;->error:Lcom/metamoji/video/AmvError;

    .line 73
    invoke-virtual {p0}, Lcom/metamoji/video/transcoder/AmvCascadeTranscoder;->getCompletionListener()Lcom/metamoji/lib/utils/FuncyListener2;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Lcom/metamoji/lib/utils/FuncyListener2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/Unit;

    return-void
.end method

.method private final internalProgress(Lcom/metamoji/video/transcoder/IAmvTranscoder;F)V
    .locals 0

    .line 101
    invoke-virtual {p0}, Lcom/metamoji/video/transcoder/AmvCascadeTranscoder;->getProgressListener()Lcom/metamoji/lib/utils/FuncyListener2;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Lcom/metamoji/lib/utils/FuncyListener2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private final next()V
    .locals 8

    .line 126
    iget-object v0, p0, Lcom/metamoji/video/transcoder/AmvCascadeTranscoder;->logger:Lcom/metamoji/lib/utils/UtLog;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lcom/metamoji/lib/utils/UtLog;->debug$default(Lcom/metamoji/lib/utils/UtLog;Ljava/lang/String;ILjava/lang/Object;)V

    .line 127
    iget-object v0, p0, Lcom/metamoji/video/transcoder/AmvCascadeTranscoder;->mode:Lcom/metamoji/video/transcoder/AmvCascadeTranscoder$Mode;

    sget-object v3, Lcom/metamoji/video/transcoder/AmvCascadeTranscoder$Mode;->CASCADE:Lcom/metamoji/video/transcoder/AmvCascadeTranscoder$Mode;

    const/4 v4, 0x0

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/metamoji/video/transcoder/AmvCascadeTranscoder;->transcoder:Lcom/metamoji/video/transcoder/IAmvTranscoder;

    instance-of v3, v0, Lcom/metamoji/video/transcoder/AmvExoTranscoder;

    if-eqz v3, :cond_0

    invoke-interface {v0}, Lcom/metamoji/video/transcoder/IAmvTranscoder;->getError()Lcom/metamoji/video/AmvError;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/video/AmvError;->getHasError()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    new-instance v0, Lcom/metamoji/video/transcoder/AmvCascadeTranscoder$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/metamoji/video/transcoder/AmvCascadeTranscoder$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v2, v0}, Lcom/metamoji/lib/utils/UtLibKt;->utAssert(ZLkotlin/jvm/functions/Function0;)V

    .line 128
    iget-object v0, p0, Lcom/metamoji/video/transcoder/AmvCascadeTranscoder;->transcoder:Lcom/metamoji/video/transcoder/IAmvTranscoder;

    invoke-interface {v0}, Lcom/metamoji/video/transcoder/IAmvTranscoder;->dispose()V

    .line 130
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/metamoji/video/transcoder/AmvCascadeTranscoder;->distFile:Ljava/io/File;

    const-string v3, "distFile"

    if-nez v2, :cond_1

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v1

    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    iget-object v5, p0, Lcom/metamoji/video/transcoder/AmvCascadeTranscoder;->distFile:Ljava/io/File;

    if-nez v5, :cond_2

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v5, v1

    :cond_2
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "tmp-"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v2, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 132
    :try_start_0
    iget-object v2, p0, Lcom/metamoji/video/transcoder/AmvCascadeTranscoder;->distFile:Ljava/io/File;

    if-nez v2, :cond_3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v1

    :cond_3
    invoke-virtual {v2, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 133
    iput-object v0, p0, Lcom/metamoji/video/transcoder/AmvCascadeTranscoder;->tempFile:Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    new-instance v2, Lcom/metamoji/video/transcoder/AmvAmpTranscoder;

    invoke-direct {v2, v0}, Lcom/metamoji/video/transcoder/AmvAmpTranscoder;-><init>(Ljava/io/File;)V

    .line 142
    invoke-virtual {v2}, Lcom/metamoji/video/transcoder/AmvAmpTranscoder;->getCompletionListener()Lcom/metamoji/lib/utils/FuncyListener2;

    move-result-object v0

    new-instance v4, Lcom/metamoji/video/transcoder/AmvCascadeTranscoder$next$2$1;

    invoke-direct {v4, p0}, Lcom/metamoji/video/transcoder/AmvCascadeTranscoder$next$2$1;-><init>(Ljava/lang/Object;)V

    check-cast v4, Lkotlin/jvm/functions/Function2;

    invoke-virtual {v0, v4}, Lcom/metamoji/lib/utils/FuncyListener2;->set(Lkotlin/jvm/functions/Function2;)V

    .line 143
    invoke-virtual {v2}, Lcom/metamoji/video/transcoder/AmvAmpTranscoder;->getProgressListener()Lcom/metamoji/lib/utils/FuncyListener2;

    move-result-object v0

    new-instance v4, Lcom/metamoji/video/transcoder/AmvCascadeTranscoder$next$2$2;

    invoke-direct {v4, p0}, Lcom/metamoji/video/transcoder/AmvCascadeTranscoder$next$2$2;-><init>(Ljava/lang/Object;)V

    check-cast v4, Lkotlin/jvm/functions/Function2;

    invoke-virtual {v0, v4}, Lcom/metamoji/lib/utils/FuncyListener2;->set(Lkotlin/jvm/functions/Function2;)V

    .line 141
    check-cast v2, Lcom/metamoji/video/transcoder/IAmvTranscoder;

    iput-object v2, p0, Lcom/metamoji/video/transcoder/AmvCascadeTranscoder;->transcoder:Lcom/metamoji/video/transcoder/IAmvTranscoder;

    .line 146
    iget-object v0, p0, Lcom/metamoji/video/transcoder/AmvCascadeTranscoder;->distFile:Ljava/io/File;

    if-nez v0, :cond_4

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    move-object v1, v0

    :goto_1
    invoke-interface {v2, v1}, Lcom/metamoji/video/transcoder/IAmvTranscoder;->transcode(Ljava/io/File;)V

    return-void

    :catchall_0
    move-exception v0

    .line 135
    iget-object v2, p0, Lcom/metamoji/video/transcoder/AmvCascadeTranscoder;->logger:Lcom/metamoji/lib/utils/UtLog;

    const/4 v3, 0x2

    invoke-static {v2, v0, v1, v3, v1}, Lcom/metamoji/lib/utils/UtLog;->stackTrace$default(Lcom/metamoji/lib/utils/UtLog;Ljava/lang/Throwable;Ljava/lang/String;ILjava/lang/Object;)V

    .line 136
    invoke-virtual {p0}, Lcom/metamoji/video/transcoder/AmvCascadeTranscoder;->getError()Lcom/metamoji/video/AmvError;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/metamoji/video/AmvError;->setError(Ljava/lang/Throwable;)V

    .line 137
    invoke-virtual {p0}, Lcom/metamoji/video/transcoder/AmvCascadeTranscoder;->getCompletionListener()Lcom/metamoji/lib/utils/FuncyListener2;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/metamoji/lib/utils/FuncyListener2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static final next$lambda$3()Ljava/lang/String;
    .locals 1

    .line 127
    const-string v0, "cascade is not necessary except for exoTranscoder."

    return-object v0
.end method

.method private final retry()V
    .locals 10

    .line 108
    iget-object v0, p0, Lcom/metamoji/video/transcoder/AmvCascadeTranscoder;->logger:Lcom/metamoji/lib/utils/UtLog;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lcom/metamoji/lib/utils/UtLog;->debug$default(Lcom/metamoji/lib/utils/UtLog;Ljava/lang/String;ILjava/lang/Object;)V

    .line 109
    iget-object v0, p0, Lcom/metamoji/video/transcoder/AmvCascadeTranscoder;->mode:Lcom/metamoji/video/transcoder/AmvCascadeTranscoder$Mode;

    sget-object v3, Lcom/metamoji/video/transcoder/AmvCascadeTranscoder$Mode;->CASCADE:Lcom/metamoji/video/transcoder/AmvCascadeTranscoder$Mode;

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/metamoji/video/transcoder/AmvCascadeTranscoder;->transcoder:Lcom/metamoji/video/transcoder/IAmvTranscoder;

    instance-of v0, v0, Lcom/metamoji/video/transcoder/AmvExoTranscoder;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    new-instance v0, Lcom/metamoji/video/transcoder/AmvCascadeTranscoder$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/metamoji/video/transcoder/AmvCascadeTranscoder$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v2, v0}, Lcom/metamoji/lib/utils/UtLibKt;->utAssert(ZLkotlin/jvm/functions/Function0;)V

    .line 110
    iget-object v0, p0, Lcom/metamoji/video/transcoder/AmvCascadeTranscoder;->transcoder:Lcom/metamoji/video/transcoder/IAmvTranscoder;

    invoke-interface {v0}, Lcom/metamoji/video/transcoder/IAmvTranscoder;->dispose()V

    .line 111
    new-instance v0, Lcom/metamoji/video/transcoder/AmvExoTranscoder;

    iget-object v2, p0, Lcom/metamoji/video/transcoder/AmvCascadeTranscoder;->sourceFile:Ljava/io/File;

    iget-object v3, p0, Lcom/metamoji/video/transcoder/AmvCascadeTranscoder;->context:Landroid/content/Context;

    invoke-direct {v0, v2, v3}, Lcom/metamoji/video/transcoder/AmvExoTranscoder;-><init>(Ljava/io/File;Landroid/content/Context;)V

    .line 112
    invoke-virtual {v0}, Lcom/metamoji/video/transcoder/AmvExoTranscoder;->getCompletionListener()Lcom/metamoji/lib/utils/FuncyListener2;

    move-result-object v2

    new-instance v3, Lcom/metamoji/video/transcoder/AmvCascadeTranscoder$retry$2$1;

    invoke-direct {v3, p0}, Lcom/metamoji/video/transcoder/AmvCascadeTranscoder$retry$2$1;-><init>(Ljava/lang/Object;)V

    check-cast v3, Lkotlin/jvm/functions/Function2;

    invoke-virtual {v2, v3}, Lcom/metamoji/lib/utils/FuncyListener2;->set(Lkotlin/jvm/functions/Function2;)V

    .line 113
    invoke-virtual {v0}, Lcom/metamoji/video/transcoder/AmvExoTranscoder;->getProgressListener()Lcom/metamoji/lib/utils/FuncyListener2;

    move-result-object v2

    new-instance v3, Lcom/metamoji/video/transcoder/AmvCascadeTranscoder$retry$2$2;

    invoke-direct {v3, p0}, Lcom/metamoji/video/transcoder/AmvCascadeTranscoder$retry$2$2;-><init>(Ljava/lang/Object;)V

    check-cast v3, Lkotlin/jvm/functions/Function2;

    invoke-virtual {v2, v3}, Lcom/metamoji/lib/utils/FuncyListener2;->set(Lkotlin/jvm/functions/Function2;)V

    .line 111
    move-object v4, v0

    check-cast v4, Lcom/metamoji/video/transcoder/IAmvTranscoder;

    iput-object v4, p0, Lcom/metamoji/video/transcoder/AmvCascadeTranscoder;->transcoder:Lcom/metamoji/video/transcoder/IAmvTranscoder;

    .line 115
    iget-wide v2, p0, Lcom/metamoji/video/transcoder/AmvCascadeTranscoder;->trimStart:J

    const-wide/16 v5, 0x0

    cmp-long v0, v2, v5

    const-string v2, "distFile"

    if-nez v0, :cond_2

    iget-wide v7, p0, Lcom/metamoji/video/transcoder/AmvCascadeTranscoder;->trimEnd:J

    cmp-long v0, v7, v5

    if-nez v0, :cond_2

    .line 116
    iget-object v0, p0, Lcom/metamoji/video/transcoder/AmvCascadeTranscoder;->distFile:Ljava/io/File;

    if-nez v0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    move-object v1, v0

    :goto_1
    invoke-interface {v4, v1}, Lcom/metamoji/video/transcoder/IAmvTranscoder;->transcode(Ljava/io/File;)V

    return-void

    .line 118
    :cond_2
    iget-object v0, p0, Lcom/metamoji/video/transcoder/AmvCascadeTranscoder;->distFile:Ljava/io/File;

    if-nez v0, :cond_3

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v5, v1

    goto :goto_2

    :cond_3
    move-object v5, v0

    :goto_2
    iget-wide v6, p0, Lcom/metamoji/video/transcoder/AmvCascadeTranscoder;->trimStart:J

    iget-wide v8, p0, Lcom/metamoji/video/transcoder/AmvCascadeTranscoder;->trimEnd:J

    invoke-interface/range {v4 .. v9}, Lcom/metamoji/video/transcoder/IAmvTranscoder;->truncate(Ljava/io/File;JJ)V

    return-void
.end method

.method static final retry$lambda$1()Ljava/lang/String;
    .locals 1

    .line 109
    const-string v0, "exoTranscoder error can not be recovered."

    return-object v0
.end method


# virtual methods
.method public cancel()V
    .locals 3

    .line 175
    iget-object v0, p0, Lcom/metamoji/video/transcoder/AmvCascadeTranscoder;->logger:Lcom/metamoji/lib/utils/UtLog;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lcom/metamoji/lib/utils/UtLog;->debug$default(Lcom/metamoji/lib/utils/UtLog;Ljava/lang/String;ILjava/lang/Object;)V

    .line 176
    iget-object v0, p0, Lcom/metamoji/video/transcoder/AmvCascadeTranscoder;->transcoder:Lcom/metamoji/video/transcoder/IAmvTranscoder;

    invoke-interface {v0}, Lcom/metamoji/video/transcoder/IAmvTranscoder;->cancel()V

    return-void
.end method

.method public dispose()V
    .locals 3

    .line 183
    iget-object v0, p0, Lcom/metamoji/video/transcoder/AmvCascadeTranscoder;->logger:Lcom/metamoji/lib/utils/UtLog;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lcom/metamoji/lib/utils/UtLog;->debug$default(Lcom/metamoji/lib/utils/UtLog;Ljava/lang/String;ILjava/lang/Object;)V

    .line 184
    iget-object v0, p0, Lcom/metamoji/video/transcoder/AmvCascadeTranscoder;->transcoder:Lcom/metamoji/video/transcoder/IAmvTranscoder;

    invoke-interface {v0}, Lcom/metamoji/video/transcoder/IAmvTranscoder;->dispose()V

    .line 185
    invoke-virtual {p0}, Lcom/metamoji/video/transcoder/AmvCascadeTranscoder;->getCompletionListener()Lcom/metamoji/lib/utils/FuncyListener2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/lib/utils/FuncyListener2;->reset()V

    .line 186
    invoke-virtual {p0}, Lcom/metamoji/video/transcoder/AmvCascadeTranscoder;->getProgressListener()Lcom/metamoji/lib/utils/FuncyListener2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/lib/utils/FuncyListener2;->reset()V

    return-void
.end method

.method public getCompletionListener()Lcom/metamoji/lib/utils/FuncyListener2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/metamoji/lib/utils/FuncyListener2<",
            "Lcom/metamoji/video/transcoder/IAmvTranscoder;",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 16
    iget-object v0, p0, Lcom/metamoji/video/transcoder/AmvCascadeTranscoder;->completionListener:Lcom/metamoji/lib/utils/FuncyListener2;

    return-object v0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/metamoji/video/transcoder/AmvCascadeTranscoder;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getError()Lcom/metamoji/video/AmvError;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/metamoji/video/transcoder/AmvCascadeTranscoder;->error:Lcom/metamoji/video/AmvError;

    return-object v0
.end method

.method public final getLogger()Lcom/metamoji/lib/utils/UtLog;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/metamoji/video/transcoder/AmvCascadeTranscoder;->logger:Lcom/metamoji/lib/utils/UtLog;

    return-object v0
.end method

.method public getProgressListener()Lcom/metamoji/lib/utils/FuncyListener2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/metamoji/lib/utils/FuncyListener2<",
            "Lcom/metamoji/video/transcoder/IAmvTranscoder;",
            "Ljava/lang/Float;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 17
    iget-object v0, p0, Lcom/metamoji/video/transcoder/AmvCascadeTranscoder;->progressListener:Lcom/metamoji/lib/utils/FuncyListener2;

    return-object v0
.end method

.method public final getTempFile()Ljava/io/File;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/metamoji/video/transcoder/AmvCascadeTranscoder;->tempFile:Ljava/io/File;

    return-object v0
.end method

.method public final setTempFile(Ljava/io/File;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/metamoji/video/transcoder/AmvCascadeTranscoder;->tempFile:Ljava/io/File;

    return-void
.end method

.method public transcode(Ljava/io/File;)V
    .locals 3

    const-string v0, "distFile"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 153
    iget-object v0, p0, Lcom/metamoji/video/transcoder/AmvCascadeTranscoder;->logger:Lcom/metamoji/lib/utils/UtLog;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lcom/metamoji/lib/utils/UtLog;->debug$default(Lcom/metamoji/lib/utils/UtLog;Ljava/lang/String;ILjava/lang/Object;)V

    const-wide/16 v0, 0x0

    .line 154
    iput-wide v0, p0, Lcom/metamoji/video/transcoder/AmvCascadeTranscoder;->trimStart:J

    .line 155
    iput-wide v0, p0, Lcom/metamoji/video/transcoder/AmvCascadeTranscoder;->trimEnd:J

    .line 156
    iput-object p1, p0, Lcom/metamoji/video/transcoder/AmvCascadeTranscoder;->distFile:Ljava/io/File;

    .line 157
    iget-object v0, p0, Lcom/metamoji/video/transcoder/AmvCascadeTranscoder;->transcoder:Lcom/metamoji/video/transcoder/IAmvTranscoder;

    invoke-interface {v0, p1}, Lcom/metamoji/video/transcoder/IAmvTranscoder;->transcode(Ljava/io/File;)V

    return-void
.end method

.method public truncate(Ljava/io/File;JJ)V
    .locals 9

    const-string v0, "distFile"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 164
    iget-object v0, p0, Lcom/metamoji/video/transcoder/AmvCascadeTranscoder;->logger:Lcom/metamoji/lib/utils/UtLog;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lcom/metamoji/lib/utils/UtLog;->debug$default(Lcom/metamoji/lib/utils/UtLog;Ljava/lang/String;ILjava/lang/Object;)V

    .line 165
    iput-wide p2, p0, Lcom/metamoji/video/transcoder/AmvCascadeTranscoder;->trimStart:J

    .line 166
    iput-wide p4, p0, Lcom/metamoji/video/transcoder/AmvCascadeTranscoder;->trimEnd:J

    .line 167
    iput-object p1, p0, Lcom/metamoji/video/transcoder/AmvCascadeTranscoder;->distFile:Ljava/io/File;

    .line 168
    iget-object v3, p0, Lcom/metamoji/video/transcoder/AmvCascadeTranscoder;->transcoder:Lcom/metamoji/video/transcoder/IAmvTranscoder;

    move-object v4, p1

    move-wide v5, p2

    move-wide v7, p4

    invoke-interface/range {v3 .. v8}, Lcom/metamoji/video/transcoder/IAmvTranscoder;->truncate(Ljava/io/File;JJ)V

    return-void
.end method
