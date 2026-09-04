.class public final Lcom/metamoji/ui/task/GetFileTask;
.super Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase;
.source "GetFileTask.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/ui/task/GetFileTask$Companion;,
        Lcom/metamoji/ui/task/GetFileTask$Mode;,
        Lcom/metamoji/ui/task/GetFileTask$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0011\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0014\u0018\u0000 (2\u00020\u0001:\u0002\'(B\u0089\u0001\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u0005\u0012\u0010\u0008\u0002\u0010\t\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\n\u0012\u001c\u0010\u000b\u001a\u0018\u0012\u0004\u0012\u00020\r\u0012\u0006\u0012\u0004\u0018\u00010\u0007\u0012\u0004\u0012\u00020\u000e\u0018\u00010\u000c\u0012\"\u0010\u000f\u001a\u001e\u0012\u0004\u0012\u00020\r\u0012\u000c\u0012\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0010\u0012\u0004\u0012\u00020\u000e\u0018\u00010\u000c\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u000e\u0010\u0014\u001a\u00020\u0015H\u0094@\u00a2\u0006\u0002\u0010\u0016J\u0018\u0010\u001d\u001a\u00020\u000e2\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u0007H\u0082@\u00a2\u0006\u0002\u0010\u001fJ\u001e\u0010 \u001a\u00020\u000e2\u000e\u0010!\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0010H\u0082@\u00a2\u0006\u0002\u0010\"J\u000e\u0010#\u001a\u00020\u000eH\u0082@\u00a2\u0006\u0002\u0010\u0016J\u000e\u0010$\u001a\u00020\u000eH\u0082@\u00a2\u0006\u0002\u0010\u0016J\u000e\u0010%\u001a\u00020\u000eH\u0082@\u00a2\u0006\u0002\u0010\u0016J\u000e\u0010&\u001a\u00020\u000eH\u0082@\u00a2\u0006\u0002\u0010\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0008\u001a\u0004\u0018\u00010\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0018\u0010\t\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\nX\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0013R$\u0010\u000b\u001a\u0018\u0012\u0004\u0012\u00020\r\u0012\u0006\u0012\u0004\u0018\u00010\u0007\u0012\u0004\u0012\u00020\u000e\u0018\u00010\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R*\u0010\u000f\u001a\u001e\u0012\u0004\u0012\u00020\r\u0012\u000c\u0012\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0010\u0012\u0004\u0012\u00020\u000e\u0018\u00010\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0017\u001a\u00020\u00058F\u00a2\u0006\u0006\u001a\u0004\u0008\u0018\u0010\u0019R\u0017\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00020\u00050\n8F\u00a2\u0006\u0006\u001a\u0004\u0008\u001b\u0010\u001c\u00a8\u0006)"
    }
    d2 = {
        "Lcom/metamoji/ui/task/GetFileTask;",
        "Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase;",
        "mode",
        "Lcom/metamoji/ui/task/GetFileTask$Mode;",
        "initialName",
        "",
        "initialPath",
        "Landroid/net/Uri;",
        "mimeType",
        "mimeTypes",
        "",
        "singleCallback",
        "Lkotlin/Function2;",
        "Landroidx/fragment/app/FragmentActivity;",
        "",
        "multiCallback",
        "",
        "<init>",
        "(Lcom/metamoji/ui/task/GetFileTask$Mode;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;)V",
        "[Ljava/lang/String;",
        "execute",
        "",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "singleMimeType",
        "getSingleMimeType",
        "()Ljava/lang/String;",
        "multiMimeTypes",
        "getMultiMimeTypes",
        "()[Ljava/lang/String;",
        "invokeSingle",
        "uri",
        "(Landroid/net/Uri;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "invokeMulti",
        "uris",
        "(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "readonly",
        "writable",
        "create",
        "directory",
        "Mode",
        "Companion",
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
.field public static final Companion:Lcom/metamoji/ui/task/GetFileTask$Companion;

.field public static final TASK_NAME:Ljava/lang/String;

.field private static final defaultMimeType:Ljava/lang/String;

.field private static final defaultMimeTypes:[Ljava/lang/String;


# instance fields
.field private final initialName:Ljava/lang/String;

.field private final initialPath:Landroid/net/Uri;

.field private final mimeType:Ljava/lang/String;

.field private final mimeTypes:[Ljava/lang/String;

.field private final mode:Lcom/metamoji/ui/task/GetFileTask$Mode;

.field private final multiCallback:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Landroidx/fragment/app/FragmentActivity;",
            "Ljava/util/List<",
            "+",
            "Landroid/net/Uri;",
            ">;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final singleCallback:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Landroidx/fragment/app/FragmentActivity;",
            "Landroid/net/Uri;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/metamoji/ui/task/GetFileTask$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/ui/task/GetFileTask$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/metamoji/ui/task/GetFileTask;->Companion:Lcom/metamoji/ui/task/GetFileTask$Companion;

    .line 36
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/metamoji/ui/task/GetFileTask;->TASK_NAME:Ljava/lang/String;

    .line 38
    const-string v0, "*/*"

    sput-object v0, Lcom/metamoji/ui/task/GetFileTask;->defaultMimeType:Ljava/lang/String;

    .line 39
    sget-object v0, Lcom/metamoji/lib/dialog/broker/pickers/UtOpenFilePicker;->Companion:Lcom/metamoji/lib/dialog/broker/pickers/UtOpenFilePicker$Companion;

    invoke-virtual {v0}, Lcom/metamoji/lib/dialog/broker/pickers/UtOpenFilePicker$Companion;->getDefaultMimeTypes()[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/metamoji/ui/task/GetFileTask;->defaultMimeTypes:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lcom/metamoji/ui/task/GetFileTask$Mode;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/ui/task/GetFileTask$Mode;",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/fragment/app/FragmentActivity;",
            "-",
            "Landroid/net/Uri;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/fragment/app/FragmentActivity;",
            "-",
            "Ljava/util/List<",
            "+",
            "Landroid/net/Uri;",
            ">;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 26
    sget-object v1, Lcom/metamoji/ui/task/GetFileTask;->TASK_NAME:Ljava/lang/String;

    const-string v0, "TASK_NAME"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase;-><init>(Ljava/lang/String;Lcom/metamoji/lib/dialog/task/IUtImmortalTaskContext;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 19
    iput-object p1, v0, Lcom/metamoji/ui/task/GetFileTask;->mode:Lcom/metamoji/ui/task/GetFileTask$Mode;

    .line 20
    iput-object p2, v0, Lcom/metamoji/ui/task/GetFileTask;->initialName:Ljava/lang/String;

    .line 21
    iput-object p3, v0, Lcom/metamoji/ui/task/GetFileTask;->initialPath:Landroid/net/Uri;

    .line 22
    iput-object p4, v0, Lcom/metamoji/ui/task/GetFileTask;->mimeType:Ljava/lang/String;

    .line 23
    iput-object p5, v0, Lcom/metamoji/ui/task/GetFileTask;->mimeTypes:[Ljava/lang/String;

    .line 24
    iput-object p6, v0, Lcom/metamoji/ui/task/GetFileTask;->singleCallback:Lkotlin/jvm/functions/Function2;

    .line 25
    iput-object p7, v0, Lcom/metamoji/ui/task/GetFileTask;->multiCallback:Lkotlin/jvm/functions/Function2;

    return-void
.end method

.method synthetic constructor <init>(Lcom/metamoji/ui/task/GetFileTask$Mode;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p9, p8, 0x2

    const/4 v0, 0x0

    if-eqz p9, :cond_0

    move-object p2, v0

    :cond_0
    and-int/lit8 p9, p8, 0x4

    if-eqz p9, :cond_1

    move-object p3, v0

    :cond_1
    and-int/lit8 p9, p8, 0x8

    if-eqz p9, :cond_2

    move-object p4, v0

    :cond_2
    and-int/lit8 p8, p8, 0x10

    if-eqz p8, :cond_3

    move-object p8, p7

    move-object p7, p6

    move-object p6, v0

    goto :goto_0

    :cond_3
    move-object p8, p7

    move-object p7, p6

    move-object p6, p5

    :goto_0
    move-object p5, p4

    move-object p4, p3

    move-object p3, p2

    move-object p2, p1

    move-object p1, p0

    .line 18
    invoke-direct/range {p1 .. p8}, Lcom/metamoji/ui/task/GetFileTask;-><init>(Lcom/metamoji/ui/task/GetFileTask$Mode;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/metamoji/ui/task/GetFileTask$Mode;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/metamoji/ui/task/GetFileTask;-><init>(Lcom/metamoji/ui/task/GetFileTask$Mode;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method public static final synthetic access$create(Lcom/metamoji/ui/task/GetFileTask;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lcom/metamoji/ui/task/GetFileTask;->create(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$directory(Lcom/metamoji/ui/task/GetFileTask;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lcom/metamoji/ui/task/GetFileTask;->directory(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getDefaultMimeType$cp()Ljava/lang/String;
    .locals 1

    .line 18
    sget-object v0, Lcom/metamoji/ui/task/GetFileTask;->defaultMimeType:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getDefaultMimeTypes$cp()[Ljava/lang/String;
    .locals 1

    .line 18
    sget-object v0, Lcom/metamoji/ui/task/GetFileTask;->defaultMimeTypes:[Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getMultiCallback$p(Lcom/metamoji/ui/task/GetFileTask;)Lkotlin/jvm/functions/Function2;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/metamoji/ui/task/GetFileTask;->multiCallback:Lkotlin/jvm/functions/Function2;

    return-object p0
.end method

.method public static final synthetic access$getSingleCallback$p(Lcom/metamoji/ui/task/GetFileTask;)Lkotlin/jvm/functions/Function2;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/metamoji/ui/task/GetFileTask;->singleCallback:Lkotlin/jvm/functions/Function2;

    return-object p0
.end method

.method public static final synthetic access$invokeMulti(Lcom/metamoji/ui/task/GetFileTask;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 18
    invoke-direct {p0, p1, p2}, Lcom/metamoji/ui/task/GetFileTask;->invokeMulti(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$invokeSingle(Lcom/metamoji/ui/task/GetFileTask;Landroid/net/Uri;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 18
    invoke-direct {p0, p1, p2}, Lcom/metamoji/ui/task/GetFileTask;->invokeSingle(Landroid/net/Uri;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$readonly(Lcom/metamoji/ui/task/GetFileTask;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lcom/metamoji/ui/task/GetFileTask;->readonly(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$writable(Lcom/metamoji/ui/task/GetFileTask;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lcom/metamoji/ui/task/GetFileTask;->writable(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final copyUriToFile(Landroid/content/Context;Landroid/net/Uri;Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/metamoji/ui/task/GetFileTask;->Companion:Lcom/metamoji/ui/task/GetFileTask$Companion;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/metamoji/ui/task/GetFileTask$Companion;->copyUriToFile(Landroid/content/Context;Landroid/net/Uri;Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static final copyUriToTempFile(Landroidx/documentfile/provider/DocumentFile;)Ljava/io/File;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/metamoji/ui/task/GetFileTask;->Companion:Lcom/metamoji/ui/task/GetFileTask$Companion;

    invoke-virtual {v0, p0}, Lcom/metamoji/ui/task/GetFileTask$Companion;->copyUriToTempFile(Landroidx/documentfile/provider/DocumentFile;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method private final create(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lcom/metamoji/ui/task/GetFileTask$create$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/metamoji/ui/task/GetFileTask$create$1;

    iget v1, v0, Lcom/metamoji/ui/task/GetFileTask$create$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lcom/metamoji/ui/task/GetFileTask$create$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lcom/metamoji/ui/task/GetFileTask$create$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/metamoji/ui/task/GetFileTask$create$1;

    invoke-direct {v0, p0, p1}, Lcom/metamoji/ui/task/GetFileTask$create$1;-><init>(Lcom/metamoji/ui/task/GetFileTask;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/metamoji/ui/task/GetFileTask$create$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 334
    iget v2, v0, Lcom/metamoji/ui/task/GetFileTask$create$1;->label:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_4

    if-eq v2, v5, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object v0, v0, Lcom/metamoji/ui/task/GetFileTask$create$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lcom/metamoji/lib/dialog/broker/pickers/UtCreateFilePicker;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_4

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object v2, v0, Lcom/metamoji/ui/task/GetFileTask$create$1;->L$1:Ljava/lang/Object;

    check-cast v2, Lcom/metamoji/ui/task/GetFileTask;

    iget-object v4, v0, Lcom/metamoji/ui/task/GetFileTask$create$1;->L$0:Ljava/lang/Object;

    check-cast v4, Lcom/metamoji/lib/dialog/broker/pickers/UtCreateFilePicker;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 335
    iget-object p1, p0, Lcom/metamoji/ui/task/GetFileTask;->initialName:Ljava/lang/String;

    if-eqz p1, :cond_9

    .line 338
    iget-object p1, p0, Lcom/metamoji/ui/task/GetFileTask;->singleCallback:Lkotlin/jvm/functions/Function2;

    if-eqz p1, :cond_8

    .line 341
    move-object p1, p0

    check-cast p1, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase;

    iput v5, v0, Lcom/metamoji/ui/task/GetFileTask$create$1;->label:I

    invoke-static {p1, v0}, Lcom/metamoji/ui/task/SaveFileTaskKt;->getFilePickers(Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    goto :goto_3

    :cond_5
    :goto_1
    check-cast p1, Lcom/metamoji/lib/dialog/broker/pickers/UtFilePickerStore;

    invoke-virtual {p1}, Lcom/metamoji/lib/dialog/broker/pickers/UtFilePickerStore;->getCreateFilePicker()Lcom/metamoji/lib/dialog/broker/pickers/UtCreateFilePicker;

    move-result-object p1

    .line 342
    iget-object v2, p0, Lcom/metamoji/ui/task/GetFileTask;->initialName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/metamoji/ui/task/GetFileTask;->getSingleMimeType()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    iput-object v6, v0, Lcom/metamoji/ui/task/GetFileTask$create$1;->L$0:Ljava/lang/Object;

    iput-object p0, v0, Lcom/metamoji/ui/task/GetFileTask$create$1;->L$1:Ljava/lang/Object;

    iput v4, v0, Lcom/metamoji/ui/task/GetFileTask$create$1;->label:I

    invoke-virtual {p1, v2, v5, v0}, Lcom/metamoji/lib/dialog/broker/pickers/UtCreateFilePicker;->selectFile(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_6

    goto :goto_3

    :cond_6
    move-object v4, p1

    move-object p1, v2

    move-object v2, p0

    :goto_2
    check-cast p1, Landroid/net/Uri;

    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, v0, Lcom/metamoji/ui/task/GetFileTask$create$1;->L$0:Ljava/lang/Object;

    const/4 v4, 0x0

    iput-object v4, v0, Lcom/metamoji/ui/task/GetFileTask$create$1;->L$1:Ljava/lang/Object;

    iput v3, v0, Lcom/metamoji/ui/task/GetFileTask$create$1;->label:I

    invoke-direct {v2, p1, v0}, Lcom/metamoji/ui/task/GetFileTask;->invokeSingle(Landroid/net/Uri;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_7

    :goto_3
    return-object v1

    .line 343
    :cond_7
    :goto_4
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 338
    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 339
    const-string v0, "callback is required."

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 335
    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 336
    const-string v0, "initial file name must be specified."

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static final createFile(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/fragment/app/FragmentActivity;",
            "-",
            "Landroid/net/Uri;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/metamoji/ui/task/GetFileTask;->Companion:Lcom/metamoji/ui/task/GetFileTask$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/metamoji/ui/task/GetFileTask$Companion;->createFile(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method public static final createFile(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function2;Lkotlinx/coroutines/CoroutineScope;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/fragment/app/FragmentActivity;",
            "-",
            "Landroid/net/Uri;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlinx/coroutines/CoroutineScope;",
            ")V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/metamoji/ui/task/GetFileTask;->Companion:Lcom/metamoji/ui/task/GetFileTask$Companion;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/metamoji/ui/task/GetFileTask$Companion;->createFile(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function2;Lkotlinx/coroutines/CoroutineScope;)V

    return-void
.end method

.method private final directory(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lcom/metamoji/ui/task/GetFileTask$directory$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/metamoji/ui/task/GetFileTask$directory$1;

    iget v1, v0, Lcom/metamoji/ui/task/GetFileTask$directory$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lcom/metamoji/ui/task/GetFileTask$directory$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lcom/metamoji/ui/task/GetFileTask$directory$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/metamoji/ui/task/GetFileTask$directory$1;

    invoke-direct {v0, p0, p1}, Lcom/metamoji/ui/task/GetFileTask$directory$1;-><init>(Lcom/metamoji/ui/task/GetFileTask;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/metamoji/ui/task/GetFileTask$directory$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 345
    iget v2, v0, Lcom/metamoji/ui/task/GetFileTask$directory$1;->label:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_4

    if-eq v2, v5, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object v0, v0, Lcom/metamoji/ui/task/GetFileTask$directory$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lcom/metamoji/lib/dialog/broker/pickers/UtDirectoryPicker;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_4

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object v2, v0, Lcom/metamoji/ui/task/GetFileTask$directory$1;->L$1:Ljava/lang/Object;

    check-cast v2, Lcom/metamoji/ui/task/GetFileTask;

    iget-object v4, v0, Lcom/metamoji/ui/task/GetFileTask$directory$1;->L$0:Ljava/lang/Object;

    check-cast v4, Lcom/metamoji/lib/dialog/broker/pickers/UtDirectoryPicker;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 346
    iget-object p1, p0, Lcom/metamoji/ui/task/GetFileTask;->singleCallback:Lkotlin/jvm/functions/Function2;

    if-eqz p1, :cond_8

    .line 349
    move-object p1, p0

    check-cast p1, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase;

    iput v5, v0, Lcom/metamoji/ui/task/GetFileTask$directory$1;->label:I

    invoke-static {p1, v0}, Lcom/metamoji/ui/task/SaveFileTaskKt;->getFilePickers(Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    goto :goto_3

    :cond_5
    :goto_1
    check-cast p1, Lcom/metamoji/lib/dialog/broker/pickers/UtFilePickerStore;

    invoke-virtual {p1}, Lcom/metamoji/lib/dialog/broker/pickers/UtFilePickerStore;->getDirectoryPicker()Lcom/metamoji/lib/dialog/broker/pickers/UtDirectoryPicker;

    move-result-object p1

    .line 350
    iget-object v2, p0, Lcom/metamoji/ui/task/GetFileTask;->initialPath:Landroid/net/Uri;

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, v0, Lcom/metamoji/ui/task/GetFileTask$directory$1;->L$0:Ljava/lang/Object;

    iput-object p0, v0, Lcom/metamoji/ui/task/GetFileTask$directory$1;->L$1:Ljava/lang/Object;

    iput v4, v0, Lcom/metamoji/ui/task/GetFileTask$directory$1;->label:I

    invoke-virtual {p1, v2, v0}, Lcom/metamoji/lib/dialog/broker/pickers/UtDirectoryPicker;->selectDirectory(Landroid/net/Uri;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_6

    goto :goto_3

    :cond_6
    move-object v4, p1

    move-object p1, v2

    move-object v2, p0

    :goto_2
    check-cast p1, Landroid/net/Uri;

    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, v0, Lcom/metamoji/ui/task/GetFileTask$directory$1;->L$0:Ljava/lang/Object;

    const/4 v4, 0x0

    iput-object v4, v0, Lcom/metamoji/ui/task/GetFileTask$directory$1;->L$1:Ljava/lang/Object;

    iput v3, v0, Lcom/metamoji/ui/task/GetFileTask$directory$1;->label:I

    invoke-direct {v2, p1, v0}, Lcom/metamoji/ui/task/GetFileTask;->invokeSingle(Landroid/net/Uri;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_7

    :goto_3
    return-object v1

    .line 351
    :cond_7
    :goto_4
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 346
    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 347
    const-string v0, "callback is required."

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static final getDirectory(Landroid/net/Uri;Lkotlin/jvm/functions/Function2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/fragment/app/FragmentActivity;",
            "-",
            "Landroid/net/Uri;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/metamoji/ui/task/GetFileTask;->Companion:Lcom/metamoji/ui/task/GetFileTask$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/metamoji/ui/task/GetFileTask$Companion;->getDirectory(Landroid/net/Uri;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method public static final getDirectory(Landroid/net/Uri;Lkotlin/jvm/functions/Function2;Lkotlinx/coroutines/CoroutineScope;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/fragment/app/FragmentActivity;",
            "-",
            "Landroid/net/Uri;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlinx/coroutines/CoroutineScope;",
            ")V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/metamoji/ui/task/GetFileTask;->Companion:Lcom/metamoji/ui/task/GetFileTask$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/metamoji/ui/task/GetFileTask$Companion;->getDirectory(Landroid/net/Uri;Lkotlin/jvm/functions/Function2;Lkotlinx/coroutines/CoroutineScope;)V

    return-void
.end method

.method public static final getDirectory(Lkotlin/jvm/functions/Function2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/fragment/app/FragmentActivity;",
            "-",
            "Landroid/net/Uri;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/metamoji/ui/task/GetFileTask;->Companion:Lcom/metamoji/ui/task/GetFileTask$Companion;

    invoke-virtual {v0, p0}, Lcom/metamoji/ui/task/GetFileTask$Companion;->getDirectory(Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method public static final getExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/metamoji/ui/task/GetFileTask;->Companion:Lcom/metamoji/ui/task/GetFileTask$Companion;

    invoke-virtual {v0, p0}, Lcom/metamoji/ui/task/GetFileTask$Companion;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final getFile(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/fragment/app/FragmentActivity;",
            "-",
            "Landroid/net/Uri;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/metamoji/ui/task/GetFileTask;->Companion:Lcom/metamoji/ui/task/GetFileTask$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/metamoji/ui/task/GetFileTask$Companion;->getFile(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method public static final getFile(Ljava/lang/String;Lkotlin/jvm/functions/Function2;Lkotlinx/coroutines/CoroutineScope;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/fragment/app/FragmentActivity;",
            "-",
            "Landroid/net/Uri;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlinx/coroutines/CoroutineScope;",
            ")V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/metamoji/ui/task/GetFileTask;->Companion:Lcom/metamoji/ui/task/GetFileTask$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/metamoji/ui/task/GetFileTask$Companion;->getFile(Ljava/lang/String;Lkotlin/jvm/functions/Function2;Lkotlinx/coroutines/CoroutineScope;)V

    return-void
.end method

.method public static final getFile([Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/fragment/app/FragmentActivity;",
            "-",
            "Landroid/net/Uri;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/metamoji/ui/task/GetFileTask;->Companion:Lcom/metamoji/ui/task/GetFileTask$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/metamoji/ui/task/GetFileTask$Companion;->getFile([Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method public static final getFile([Ljava/lang/String;Lkotlin/jvm/functions/Function2;Lkotlinx/coroutines/CoroutineScope;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/fragment/app/FragmentActivity;",
            "-",
            "Landroid/net/Uri;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlinx/coroutines/CoroutineScope;",
            ")V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/metamoji/ui/task/GetFileTask;->Companion:Lcom/metamoji/ui/task/GetFileTask$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/metamoji/ui/task/GetFileTask$Companion;->getFile([Ljava/lang/String;Lkotlin/jvm/functions/Function2;Lkotlinx/coroutines/CoroutineScope;)V

    return-void
.end method

.method public static final getFiles(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/fragment/app/FragmentActivity;",
            "-",
            "Ljava/util/List<",
            "+",
            "Landroid/net/Uri;",
            ">;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/metamoji/ui/task/GetFileTask;->Companion:Lcom/metamoji/ui/task/GetFileTask$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/metamoji/ui/task/GetFileTask$Companion;->getFiles(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method public static final getFiles(Ljava/lang/String;Lkotlin/jvm/functions/Function2;Lkotlinx/coroutines/CoroutineScope;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/fragment/app/FragmentActivity;",
            "-",
            "Ljava/util/List<",
            "+",
            "Landroid/net/Uri;",
            ">;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlinx/coroutines/CoroutineScope;",
            ")V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/metamoji/ui/task/GetFileTask;->Companion:Lcom/metamoji/ui/task/GetFileTask$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/metamoji/ui/task/GetFileTask$Companion;->getFiles(Ljava/lang/String;Lkotlin/jvm/functions/Function2;Lkotlinx/coroutines/CoroutineScope;)V

    return-void
.end method

.method public static final getFiles([Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/fragment/app/FragmentActivity;",
            "-",
            "Ljava/util/List<",
            "+",
            "Landroid/net/Uri;",
            ">;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/metamoji/ui/task/GetFileTask;->Companion:Lcom/metamoji/ui/task/GetFileTask$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/metamoji/ui/task/GetFileTask$Companion;->getFiles([Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method public static final getFiles([Ljava/lang/String;Lkotlin/jvm/functions/Function2;Lkotlinx/coroutines/CoroutineScope;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/fragment/app/FragmentActivity;",
            "-",
            "Ljava/util/List<",
            "+",
            "Landroid/net/Uri;",
            ">;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlinx/coroutines/CoroutineScope;",
            ")V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/metamoji/ui/task/GetFileTask;->Companion:Lcom/metamoji/ui/task/GetFileTask$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/metamoji/ui/task/GetFileTask$Companion;->getFiles([Ljava/lang/String;Lkotlin/jvm/functions/Function2;Lkotlinx/coroutines/CoroutineScope;)V

    return-void
.end method

.method public static final getMimeTypeOf(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/metamoji/ui/task/GetFileTask;->Companion:Lcom/metamoji/ui/task/GetFileTask$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/metamoji/ui/task/GetFileTask$Companion;->getMimeTypeOf(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final getMimeTypeOf(Landroidx/documentfile/provider/DocumentFile;)Ljava/lang/String;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/metamoji/ui/task/GetFileTask;->Companion:Lcom/metamoji/ui/task/GetFileTask$Companion;

    invoke-virtual {v0, p0}, Lcom/metamoji/ui/task/GetFileTask$Companion;->getMimeTypeOf(Landroidx/documentfile/provider/DocumentFile;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final getReadOnlyFile(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/fragment/app/FragmentActivity;",
            "-",
            "Landroid/net/Uri;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/metamoji/ui/task/GetFileTask;->Companion:Lcom/metamoji/ui/task/GetFileTask$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/metamoji/ui/task/GetFileTask$Companion;->getReadOnlyFile(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method public static final getReadOnlyFile(Ljava/lang/String;Lkotlin/jvm/functions/Function2;Lkotlinx/coroutines/CoroutineScope;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/fragment/app/FragmentActivity;",
            "-",
            "Landroid/net/Uri;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlinx/coroutines/CoroutineScope;",
            ")V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/metamoji/ui/task/GetFileTask;->Companion:Lcom/metamoji/ui/task/GetFileTask$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/metamoji/ui/task/GetFileTask$Companion;->getReadOnlyFile(Ljava/lang/String;Lkotlin/jvm/functions/Function2;Lkotlinx/coroutines/CoroutineScope;)V

    return-void
.end method

.method public static final getReadOnlyFiles(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/fragment/app/FragmentActivity;",
            "-",
            "Ljava/util/List<",
            "+",
            "Landroid/net/Uri;",
            ">;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/metamoji/ui/task/GetFileTask;->Companion:Lcom/metamoji/ui/task/GetFileTask$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/metamoji/ui/task/GetFileTask$Companion;->getReadOnlyFiles(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method public static final getReadOnlyFiles(Ljava/lang/String;Lkotlin/jvm/functions/Function2;Lkotlinx/coroutines/CoroutineScope;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/fragment/app/FragmentActivity;",
            "-",
            "Ljava/util/List<",
            "+",
            "Landroid/net/Uri;",
            ">;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlinx/coroutines/CoroutineScope;",
            ")V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/metamoji/ui/task/GetFileTask;->Companion:Lcom/metamoji/ui/task/GetFileTask$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/metamoji/ui/task/GetFileTask$Companion;->getReadOnlyFiles(Ljava/lang/String;Lkotlin/jvm/functions/Function2;Lkotlinx/coroutines/CoroutineScope;)V

    return-void
.end method

.method public static final getUniqueFilename(Landroidx/documentfile/provider/DocumentFile;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/metamoji/ui/task/GetFileTask;->Companion:Lcom/metamoji/ui/task/GetFileTask$Companion;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/metamoji/ui/task/GetFileTask$Companion;->getUniqueFilename(Landroidx/documentfile/provider/DocumentFile;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final getUniqueFilenameDocument(Landroidx/documentfile/provider/DocumentFile;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroidx/documentfile/provider/DocumentFile;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/metamoji/ui/task/GetFileTask;->Companion:Lcom/metamoji/ui/task/GetFileTask$Companion;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/metamoji/ui/task/GetFileTask$Companion;->getUniqueFilenameDocument(Landroidx/documentfile/provider/DocumentFile;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroidx/documentfile/provider/DocumentFile;

    move-result-object p0

    return-object p0
.end method

.method private final invokeMulti(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroid/net/Uri;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 299
    iget-object v0, p0, Lcom/metamoji/ui/task/GetFileTask;->multiCallback:Lkotlin/jvm/functions/Function2;

    if-eqz v0, :cond_1

    .line 302
    new-instance v0, Lcom/metamoji/ui/task/GetFileTask$invokeMulti$2;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/metamoji/ui/task/GetFileTask$invokeMulti$2;-><init>(Lcom/metamoji/ui/task/GetFileTask;Ljava/util/List;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-virtual {p0, v0, p2}, Lcom/metamoji/ui/task/GetFileTask;->withOwner(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 299
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 300
    const-string p2, "no callback"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final invokeSingle(Landroid/net/Uri;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
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

    .line 290
    iget-object v0, p0, Lcom/metamoji/ui/task/GetFileTask;->singleCallback:Lkotlin/jvm/functions/Function2;

    if-eqz v0, :cond_1

    .line 293
    new-instance v0, Lcom/metamoji/ui/task/GetFileTask$invokeSingle$2;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/metamoji/ui/task/GetFileTask$invokeSingle$2;-><init>(Lcom/metamoji/ui/task/GetFileTask;Landroid/net/Uri;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-virtual {p0, v0, p2}, Lcom/metamoji/ui/task/GetFileTask;->withOwner(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 290
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 291
    const-string p2, "no callback"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static final isMetaMoJiType(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/metamoji/ui/task/GetFileTask;->Companion:Lcom/metamoji/ui/task/GetFileTask$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/metamoji/ui/task/GetFileTask$Companion;->isMetaMoJiType(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result p0

    return p0
.end method

.method public static final isMetaMoJiType(Landroidx/documentfile/provider/DocumentFile;)Z
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/metamoji/ui/task/GetFileTask;->Companion:Lcom/metamoji/ui/task/GetFileTask$Companion;

    invoke-virtual {v0, p0}, Lcom/metamoji/ui/task/GetFileTask$Companion;->isMetaMoJiType(Landroidx/documentfile/provider/DocumentFile;)Z

    move-result p0

    return p0
.end method

.method public static final isMetaMoJiType(Ljava/lang/String;)Z
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/metamoji/ui/task/GetFileTask;->Companion:Lcom/metamoji/ui/task/GetFileTask$Companion;

    invoke-virtual {v0, p0}, Lcom/metamoji/ui/task/GetFileTask$Companion;->isMetaMoJiType(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private final readonly(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lcom/metamoji/ui/task/GetFileTask$readonly$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/metamoji/ui/task/GetFileTask$readonly$1;

    iget v1, v0, Lcom/metamoji/ui/task/GetFileTask$readonly$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lcom/metamoji/ui/task/GetFileTask$readonly$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lcom/metamoji/ui/task/GetFileTask$readonly$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/metamoji/ui/task/GetFileTask$readonly$1;

    invoke-direct {v0, p0, p1}, Lcom/metamoji/ui/task/GetFileTask$readonly$1;-><init>(Lcom/metamoji/ui/task/GetFileTask;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/metamoji/ui/task/GetFileTask$readonly$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 308
    iget v2, v0, Lcom/metamoji/ui/task/GetFileTask$readonly$1;->label:I

    const/4 v3, 0x0

    packed-switch v2, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    iget-object v0, v0, Lcom/metamoji/ui/task/GetFileTask$readonly$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lcom/metamoji/lib/dialog/broker/pickers/UtOpenReadOnlyMultiFilePicker;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_7

    :pswitch_1
    iget-object v2, v0, Lcom/metamoji/ui/task/GetFileTask$readonly$1;->L$1:Ljava/lang/Object;

    check-cast v2, Lcom/metamoji/ui/task/GetFileTask;

    iget-object v4, v0, Lcom/metamoji/ui/task/GetFileTask$readonly$1;->L$0:Ljava/lang/Object;

    check-cast v4, Lcom/metamoji/lib/dialog/broker/pickers/UtOpenReadOnlyMultiFilePicker;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_5

    :pswitch_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_4

    :pswitch_3
    iget-object v0, v0, Lcom/metamoji/ui/task/GetFileTask$readonly$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lcom/metamoji/lib/dialog/broker/pickers/UtOpenReadOnlyFilePicker;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_3

    :pswitch_4
    iget-object v2, v0, Lcom/metamoji/ui/task/GetFileTask$readonly$1;->L$1:Ljava/lang/Object;

    check-cast v2, Lcom/metamoji/ui/task/GetFileTask;

    iget-object v4, v0, Lcom/metamoji/ui/task/GetFileTask$readonly$1;->L$0:Ljava/lang/Object;

    check-cast v4, Lcom/metamoji/lib/dialog/broker/pickers/UtOpenReadOnlyFilePicker;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :pswitch_5
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_6
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 309
    iget-object p1, p0, Lcom/metamoji/ui/task/GetFileTask;->singleCallback:Lkotlin/jvm/functions/Function2;

    if-eqz p1, :cond_4

    .line 310
    move-object p1, p0

    check-cast p1, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase;

    const/4 v2, 0x1

    iput v2, v0, Lcom/metamoji/ui/task/GetFileTask$readonly$1;->label:I

    invoke-static {p1, v0}, Lcom/metamoji/ui/task/SaveFileTaskKt;->getFilePickers(Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_1

    goto/16 :goto_6

    :cond_1
    :goto_1
    check-cast p1, Lcom/metamoji/lib/dialog/broker/pickers/UtFilePickerStore;

    invoke-virtual {p1}, Lcom/metamoji/lib/dialog/broker/pickers/UtFilePickerStore;->getOpenReadOnlyFilePicker()Lcom/metamoji/lib/dialog/broker/pickers/UtOpenReadOnlyFilePicker;

    move-result-object v4

    .line 311
    invoke-virtual {p0}, Lcom/metamoji/ui/task/GetFileTask;->getSingleMimeType()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v0, Lcom/metamoji/ui/task/GetFileTask$readonly$1;->L$0:Ljava/lang/Object;

    iput-object p0, v0, Lcom/metamoji/ui/task/GetFileTask$readonly$1;->L$1:Ljava/lang/Object;

    const/4 v2, 0x2

    iput v2, v0, Lcom/metamoji/ui/task/GetFileTask$readonly$1;->label:I

    invoke-virtual {v4, p1, v0}, Lcom/metamoji/lib/dialog/broker/pickers/UtOpenReadOnlyFilePicker;->selectFile(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_2

    goto :goto_6

    :cond_2
    move-object v2, p0

    :goto_2
    check-cast p1, Landroid/net/Uri;

    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, v0, Lcom/metamoji/ui/task/GetFileTask$readonly$1;->L$0:Ljava/lang/Object;

    iput-object v3, v0, Lcom/metamoji/ui/task/GetFileTask$readonly$1;->L$1:Ljava/lang/Object;

    const/4 v3, 0x3

    iput v3, v0, Lcom/metamoji/ui/task/GetFileTask$readonly$1;->label:I

    invoke-direct {v2, p1, v0}, Lcom/metamoji/ui/task/GetFileTask;->invokeSingle(Landroid/net/Uri;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    goto :goto_6

    .line 319
    :cond_3
    :goto_3
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 313
    :cond_4
    iget-object p1, p0, Lcom/metamoji/ui/task/GetFileTask;->multiCallback:Lkotlin/jvm/functions/Function2;

    if-eqz p1, :cond_8

    .line 314
    move-object p1, p0

    check-cast p1, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase;

    const/4 v2, 0x4

    iput v2, v0, Lcom/metamoji/ui/task/GetFileTask$readonly$1;->label:I

    invoke-static {p1, v0}, Lcom/metamoji/ui/task/SaveFileTaskKt;->getFilePickers(Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    goto :goto_6

    :cond_5
    :goto_4
    check-cast p1, Lcom/metamoji/lib/dialog/broker/pickers/UtFilePickerStore;

    invoke-virtual {p1}, Lcom/metamoji/lib/dialog/broker/pickers/UtFilePickerStore;->getOpenReadOnlyMultiFilePicker()Lcom/metamoji/lib/dialog/broker/pickers/UtOpenReadOnlyMultiFilePicker;

    move-result-object v4

    .line 315
    invoke-virtual {p0}, Lcom/metamoji/ui/task/GetFileTask;->getSingleMimeType()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v0, Lcom/metamoji/ui/task/GetFileTask$readonly$1;->L$0:Ljava/lang/Object;

    iput-object p0, v0, Lcom/metamoji/ui/task/GetFileTask$readonly$1;->L$1:Ljava/lang/Object;

    const/4 v2, 0x5

    iput v2, v0, Lcom/metamoji/ui/task/GetFileTask$readonly$1;->label:I

    invoke-virtual {v4, p1, v0}, Lcom/metamoji/lib/dialog/broker/pickers/UtOpenReadOnlyMultiFilePicker;->selectFiles(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_6

    goto :goto_6

    :cond_6
    move-object v2, p0

    :goto_5
    check-cast p1, Ljava/util/List;

    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, v0, Lcom/metamoji/ui/task/GetFileTask$readonly$1;->L$0:Ljava/lang/Object;

    iput-object v3, v0, Lcom/metamoji/ui/task/GetFileTask$readonly$1;->L$1:Ljava/lang/Object;

    const/4 v3, 0x6

    iput v3, v0, Lcom/metamoji/ui/task/GetFileTask$readonly$1;->label:I

    invoke-direct {v2, p1, v0}, Lcom/metamoji/ui/task/GetFileTask;->invokeMulti(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_7

    :goto_6
    return-object v1

    .line 319
    :cond_7
    :goto_7
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 317
    const-string v0, "no callback"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final safeDelete(Ljava/io/File;)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/metamoji/ui/task/GetFileTask;->Companion:Lcom/metamoji/ui/task/GetFileTask$Companion;

    invoke-virtual {v0, p0}, Lcom/metamoji/ui/task/GetFileTask$Companion;->safeDelete(Ljava/io/File;)V

    return-void
.end method

.method private final writable(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lcom/metamoji/ui/task/GetFileTask$writable$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/metamoji/ui/task/GetFileTask$writable$1;

    iget v1, v0, Lcom/metamoji/ui/task/GetFileTask$writable$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lcom/metamoji/ui/task/GetFileTask$writable$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lcom/metamoji/ui/task/GetFileTask$writable$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/metamoji/ui/task/GetFileTask$writable$1;

    invoke-direct {v0, p0, p1}, Lcom/metamoji/ui/task/GetFileTask$writable$1;-><init>(Lcom/metamoji/ui/task/GetFileTask;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/metamoji/ui/task/GetFileTask$writable$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 321
    iget v2, v0, Lcom/metamoji/ui/task/GetFileTask$writable$1;->label:I

    const/4 v3, 0x0

    packed-switch v2, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    iget-object v0, v0, Lcom/metamoji/ui/task/GetFileTask$writable$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lcom/metamoji/lib/dialog/broker/pickers/UtOpenMultiFilePicker;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_7

    :pswitch_1
    iget-object v2, v0, Lcom/metamoji/ui/task/GetFileTask$writable$1;->L$1:Ljava/lang/Object;

    check-cast v2, Lcom/metamoji/ui/task/GetFileTask;

    iget-object v4, v0, Lcom/metamoji/ui/task/GetFileTask$writable$1;->L$0:Ljava/lang/Object;

    check-cast v4, Lcom/metamoji/lib/dialog/broker/pickers/UtOpenMultiFilePicker;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_5

    :pswitch_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_4

    :pswitch_3
    iget-object v0, v0, Lcom/metamoji/ui/task/GetFileTask$writable$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lcom/metamoji/lib/dialog/broker/pickers/UtOpenFilePicker;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_3

    :pswitch_4
    iget-object v2, v0, Lcom/metamoji/ui/task/GetFileTask$writable$1;->L$1:Ljava/lang/Object;

    check-cast v2, Lcom/metamoji/ui/task/GetFileTask;

    iget-object v4, v0, Lcom/metamoji/ui/task/GetFileTask$writable$1;->L$0:Ljava/lang/Object;

    check-cast v4, Lcom/metamoji/lib/dialog/broker/pickers/UtOpenFilePicker;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :pswitch_5
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_6
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 322
    iget-object p1, p0, Lcom/metamoji/ui/task/GetFileTask;->singleCallback:Lkotlin/jvm/functions/Function2;

    if-eqz p1, :cond_4

    .line 323
    move-object p1, p0

    check-cast p1, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase;

    const/4 v2, 0x1

    iput v2, v0, Lcom/metamoji/ui/task/GetFileTask$writable$1;->label:I

    invoke-static {p1, v0}, Lcom/metamoji/ui/task/SaveFileTaskKt;->getFilePickers(Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_1

    goto/16 :goto_6

    :cond_1
    :goto_1
    check-cast p1, Lcom/metamoji/lib/dialog/broker/pickers/UtFilePickerStore;

    invoke-virtual {p1}, Lcom/metamoji/lib/dialog/broker/pickers/UtFilePickerStore;->getOpenFilePicker()Lcom/metamoji/lib/dialog/broker/pickers/UtOpenFilePicker;

    move-result-object v4

    .line 324
    invoke-virtual {p0}, Lcom/metamoji/ui/task/GetFileTask;->getMultiMimeTypes()[Ljava/lang/String;

    move-result-object p1

    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v0, Lcom/metamoji/ui/task/GetFileTask$writable$1;->L$0:Ljava/lang/Object;

    iput-object p0, v0, Lcom/metamoji/ui/task/GetFileTask$writable$1;->L$1:Ljava/lang/Object;

    const/4 v2, 0x2

    iput v2, v0, Lcom/metamoji/ui/task/GetFileTask$writable$1;->label:I

    invoke-virtual {v4, p1, v0}, Lcom/metamoji/lib/dialog/broker/pickers/UtOpenFilePicker;->selectFile([Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_2

    goto :goto_6

    :cond_2
    move-object v2, p0

    :goto_2
    check-cast p1, Landroid/net/Uri;

    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, v0, Lcom/metamoji/ui/task/GetFileTask$writable$1;->L$0:Ljava/lang/Object;

    iput-object v3, v0, Lcom/metamoji/ui/task/GetFileTask$writable$1;->L$1:Ljava/lang/Object;

    const/4 v3, 0x3

    iput v3, v0, Lcom/metamoji/ui/task/GetFileTask$writable$1;->label:I

    invoke-direct {v2, p1, v0}, Lcom/metamoji/ui/task/GetFileTask;->invokeSingle(Landroid/net/Uri;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    goto :goto_6

    .line 332
    :cond_3
    :goto_3
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 326
    :cond_4
    iget-object p1, p0, Lcom/metamoji/ui/task/GetFileTask;->multiCallback:Lkotlin/jvm/functions/Function2;

    if-eqz p1, :cond_9

    .line 327
    move-object p1, p0

    check-cast p1, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase;

    const/4 v2, 0x4

    iput v2, v0, Lcom/metamoji/ui/task/GetFileTask$writable$1;->label:I

    invoke-static {p1, v0}, Lcom/metamoji/ui/task/SaveFileTaskKt;->getFilePickers(Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    goto :goto_6

    :cond_5
    :goto_4
    check-cast p1, Lcom/metamoji/lib/dialog/broker/pickers/UtFilePickerStore;

    invoke-virtual {p1}, Lcom/metamoji/lib/dialog/broker/pickers/UtFilePickerStore;->getOpenMultiFilePicker()Lcom/metamoji/lib/dialog/broker/pickers/UtOpenMultiFilePicker;

    move-result-object v4

    .line 328
    invoke-virtual {p0}, Lcom/metamoji/ui/task/GetFileTask;->getMultiMimeTypes()[Ljava/lang/String;

    move-result-object p1

    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v0, Lcom/metamoji/ui/task/GetFileTask$writable$1;->L$0:Ljava/lang/Object;

    iput-object p0, v0, Lcom/metamoji/ui/task/GetFileTask$writable$1;->L$1:Ljava/lang/Object;

    const/4 v2, 0x5

    iput v2, v0, Lcom/metamoji/ui/task/GetFileTask$writable$1;->label:I

    invoke-virtual {v4, p1, v0}, Lcom/metamoji/lib/dialog/broker/pickers/UtOpenMultiFilePicker;->selectFiles([Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_6

    goto :goto_6

    :cond_6
    move-object v2, p0

    :goto_5
    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_7

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    :cond_7
    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, v0, Lcom/metamoji/ui/task/GetFileTask$writable$1;->L$0:Ljava/lang/Object;

    iput-object v3, v0, Lcom/metamoji/ui/task/GetFileTask$writable$1;->L$1:Ljava/lang/Object;

    const/4 v3, 0x6

    iput v3, v0, Lcom/metamoji/ui/task/GetFileTask$writable$1;->label:I

    invoke-direct {v2, p1, v0}, Lcom/metamoji/ui/task/GetFileTask;->invokeMulti(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_8

    :goto_6
    return-object v1

    .line 332
    :cond_8
    :goto_7
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 330
    const-string v0, "no callback"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected execute(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lcom/metamoji/ui/task/GetFileTask$execute$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/metamoji/ui/task/GetFileTask$execute$1;

    iget v1, v0, Lcom/metamoji/ui/task/GetFileTask$execute$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lcom/metamoji/ui/task/GetFileTask$execute$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lcom/metamoji/ui/task/GetFileTask$execute$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/metamoji/ui/task/GetFileTask$execute$1;

    invoke-direct {v0, p0, p1}, Lcom/metamoji/ui/task/GetFileTask$execute$1;-><init>(Lcom/metamoji/ui/task/GetFileTask;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/metamoji/ui/task/GetFileTask$execute$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 265
    iget v2, v0, Lcom/metamoji/ui/task/GetFileTask$execute$1;->label:I

    const/4 v3, 0x5

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eqz v2, :cond_4

    if-eq v2, v7, :cond_3

    if-eq v2, v6, :cond_1

    if-eq v2, v5, :cond_1

    if-eq v2, v4, :cond_1

    if-ne v2, v3, :cond_2

    :cond_1
    iget-object v0, v0, Lcom/metamoji/ui/task/GetFileTask$execute$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lcom/metamoji/lib/dialog/broker/pickers/UtFilePickerStore;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 266
    move-object p1, p0

    check-cast p1, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase;

    iput v7, v0, Lcom/metamoji/ui/task/GetFileTask$execute$1;->label:I

    invoke-static {p1, v0}, Lcom/metamoji/ui/task/SaveFileTaskKt;->getFilePickers(Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    goto :goto_2

    .line 265
    :cond_5
    :goto_1
    check-cast p1, Lcom/metamoji/lib/dialog/broker/pickers/UtFilePickerStore;

    .line 267
    iget-object v2, p0, Lcom/metamoji/ui/task/GetFileTask;->mode:Lcom/metamoji/ui/task/GetFileTask$Mode;

    sget-object v8, Lcom/metamoji/ui/task/GetFileTask$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v2}, Lcom/metamoji/ui/task/GetFileTask$Mode;->ordinal()I

    move-result v2

    aget v2, v8, v2

    if-eq v2, v7, :cond_9

    if-eq v2, v6, :cond_8

    if-eq v2, v5, :cond_7

    if-ne v2, v4, :cond_6

    .line 271
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v0, Lcom/metamoji/ui/task/GetFileTask$execute$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Lcom/metamoji/ui/task/GetFileTask$execute$1;->label:I

    invoke-direct {p0, v0}, Lcom/metamoji/ui/task/GetFileTask;->directory(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_a

    goto :goto_2

    .line 267
    :cond_6
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 270
    :cond_7
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v0, Lcom/metamoji/ui/task/GetFileTask$execute$1;->L$0:Ljava/lang/Object;

    iput v4, v0, Lcom/metamoji/ui/task/GetFileTask$execute$1;->label:I

    invoke-direct {p0, v0}, Lcom/metamoji/ui/task/GetFileTask;->create(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_a

    goto :goto_2

    .line 269
    :cond_8
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v0, Lcom/metamoji/ui/task/GetFileTask$execute$1;->L$0:Ljava/lang/Object;

    iput v5, v0, Lcom/metamoji/ui/task/GetFileTask$execute$1;->label:I

    invoke-direct {p0, v0}, Lcom/metamoji/ui/task/GetFileTask;->writable(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_a

    goto :goto_2

    .line 268
    :cond_9
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v0, Lcom/metamoji/ui/task/GetFileTask$execute$1;->L$0:Ljava/lang/Object;

    iput v6, v0, Lcom/metamoji/ui/task/GetFileTask$execute$1;->label:I

    invoke-direct {p0, v0}, Lcom/metamoji/ui/task/GetFileTask;->readonly(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_a

    :goto_2
    return-object v1

    .line 273
    :cond_a
    :goto_3
    invoke-static {v7}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public final getMultiMimeTypes()[Ljava/lang/String;
    .locals 3

    .line 284
    iget-object v0, p0, Lcom/metamoji/ui/task/GetFileTask;->mimeTypes:[Ljava/lang/String;

    if-eqz v0, :cond_1

    array-length v1, v0

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    return-object v0

    .line 285
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/metamoji/ui/task/GetFileTask;->mimeType:Ljava/lang/String;

    check-cast v0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_3

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/metamoji/ui/task/GetFileTask;->mimeType:Ljava/lang/String;

    aput-object v2, v0, v1

    return-object v0

    .line 286
    :cond_3
    :goto_1
    sget-object v0, Lcom/metamoji/ui/task/GetFileTask;->defaultMimeTypes:[Ljava/lang/String;

    return-object v0
.end method

.method public final getSingleMimeType()Ljava/lang/String;
    .locals 2

    .line 278
    iget-object v0, p0, Lcom/metamoji/ui/task/GetFileTask;->mimeType:Ljava/lang/String;

    check-cast v0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/metamoji/ui/task/GetFileTask;->mimeType:Ljava/lang/String;

    return-object v0

    .line 279
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/metamoji/ui/task/GetFileTask;->mimeTypes:[Ljava/lang/String;

    if-eqz v0, :cond_3

    array-length v1, v0

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/metamoji/ui/task/GetFileTask;->mimeTypes:[Ljava/lang/String;

    aget-object v0, v0, v1

    return-object v0

    .line 280
    :cond_3
    :goto_1
    sget-object v0, Lcom/metamoji/ui/task/GetFileTask;->defaultMimeType:Ljava/lang/String;

    return-object v0
.end method
