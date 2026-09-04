.class public final Lcom/metamoji/ui/task/DynamicStreamSource$Builder;
.super Ljava/lang/Object;
.source "SaveTypedFileTask.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ui/task/DynamicStreamSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\n\u0018\u00002\u00020\u0001B$\u0012\u001b\u0008\u0002\u0010\u0002\u001a\u0015\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0008\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0006\u0010\u0017\u001a\u00020\u0018J\u0006\u0010\u0019\u001a\u00020\u0000J\u001e\u0010\u001a\u001a\u00020\u00002\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001c2\u0006\u0010\u001e\u001a\u00020\u001cJ>\u0010\u001f\u001a\u00020\u000021\u0010\u0002\u001a-\u0008\u0001\u0012\u0013\u0012\u00110\n\u00a2\u0006\u000c\u0008\u000b\u0012\u0008\u0008\u000c\u0012\u0004\u0008\u0008(\r\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00040\u000e\u0012\u0006\u0012\u0004\u0018\u00010\u00010\t\u00a2\u0006\u0002\u0010 J\u001a\u0010!\u001a\u00020\u00002\u0012\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u00040\u0003J\u0014\u0010\"\u001a\u00020\u00002\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0012J\u0016\u0010#\u001a\u00020\u00002\u000e\u0010\u0002\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00140\u0012J\u0016\u0010$\u001a\u00020\u00002\u000e\u0010\u0002\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00140\u0012J\u0016\u0010%\u001a\u00020\u00002\u000e\u0010\u0002\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00140\u0012R;\u0010\u0008\u001a-\u0008\u0001\u0012\u0013\u0012\u00110\n\u00a2\u0006\u000c\u0008\u000b\u0012\u0008\u0008\u000c\u0012\u0004\u0008\u0008(\r\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00040\u000e\u0012\u0006\u0012\u0004\u0018\u00010\u00010\tX\u0082.\u00a2\u0006\u0004\n\u0002\u0010\u000fR\u001c\u0010\u0010\u001a\u0010\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0011\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0018\u0010\u0013\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0014\u0018\u00010\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0018\u0010\u0015\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0014\u0018\u00010\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0018\u0010\u0016\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0014\u0018\u00010\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006&"
    }
    d2 = {
        "Lcom/metamoji/ui/task/DynamicStreamSource$Builder;",
        "",
        "fn",
        "Lkotlin/Function1;",
        "",
        "Lkotlin/ExtensionFunctionType;",
        "<init>",
        "(Lkotlin/jvm/functions/Function1;)V",
        "fnSaveTo",
        "Lkotlin/Function2;",
        "Landroid/net/Uri;",
        "Lkotlin/ParameterName;",
        "name",
        "uri",
        "Lkotlin/coroutines/Continuation;",
        "Lkotlin/jvm/functions/Function2;",
        "fnOnSaved",
        "fnDispose",
        "Lkotlin/Function0;",
        "fnMessageTitle",
        "",
        "fnPositiveMessage",
        "fnNegativeMessage",
        "build",
        "Lcom/metamoji/ui/task/DynamicStreamSource;",
        "defaultMessages",
        "message",
        "title",
        "",
        "positive",
        "negative",
        "saveTo",
        "(Lkotlin/jvm/functions/Function2;)Lcom/metamoji/ui/task/DynamicStreamSource$Builder;",
        "onSaved",
        "onDisposed",
        "messageTitle",
        "positiveMessage",
        "negativeMessage",
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
.field private fnDispose:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private fnMessageTitle:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private fnNegativeMessage:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private fnOnSaved:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/net/Uri;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private fnPositiveMessage:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private fnSaveTo:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroid/net/Uri;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/metamoji/ui/task/DynamicStreamSource$Builder;-><init>(Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/metamoji/ui/task/DynamicStreamSource$Builder;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 99
    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 90
    :cond_0
    invoke-direct {p0, p1}, Lcom/metamoji/ui/task/DynamicStreamSource$Builder;-><init>(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method static final message$lambda$0(I)Ljava/lang/String;
    .locals 1

    .line 111
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static final message$lambda$1(I)Ljava/lang/String;
    .locals 1

    .line 113
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static final message$lambda$2(I)Ljava/lang/String;
    .locals 1

    .line 114
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final build()Lcom/metamoji/ui/task/DynamicStreamSource;
    .locals 7

    .line 103
    new-instance v0, Lcom/metamoji/ui/task/DynamicStreamSource;

    iget-object v1, p0, Lcom/metamoji/ui/task/DynamicStreamSource$Builder;->fnSaveTo:Lkotlin/jvm/functions/Function2;

    if-nez v1, :cond_0

    const-string v1, "fnSaveTo"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_0
    iget-object v2, p0, Lcom/metamoji/ui/task/DynamicStreamSource$Builder;->fnOnSaved:Lkotlin/jvm/functions/Function1;

    iget-object v3, p0, Lcom/metamoji/ui/task/DynamicStreamSource$Builder;->fnDispose:Lkotlin/jvm/functions/Function0;

    iget-object v4, p0, Lcom/metamoji/ui/task/DynamicStreamSource$Builder;->fnMessageTitle:Lkotlin/jvm/functions/Function0;

    iget-object v5, p0, Lcom/metamoji/ui/task/DynamicStreamSource$Builder;->fnPositiveMessage:Lkotlin/jvm/functions/Function0;

    iget-object v6, p0, Lcom/metamoji/ui/task/DynamicStreamSource$Builder;->fnNegativeMessage:Lkotlin/jvm/functions/Function0;

    invoke-direct/range {v0 .. v6}, Lcom/metamoji/ui/task/DynamicStreamSource;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    return-object v0
.end method

.method public final defaultMessages()Lcom/metamoji/ui/task/DynamicStreamSource$Builder;
    .locals 3

    .line 106
    sget v0, Lcom/metamoji/noteanytime/R$string;->Msg_FileSave_Succeeded:I

    sget v1, Lcom/metamoji/noteanytime/R$string;->Msg_FileSave_Failed:I

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0, v1}, Lcom/metamoji/ui/task/DynamicStreamSource$Builder;->message(III)Lcom/metamoji/ui/task/DynamicStreamSource$Builder;

    return-object p0
.end method

.method public final message(III)Lcom/metamoji/ui/task/DynamicStreamSource$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 111
    new-instance v0, Lcom/metamoji/ui/task/DynamicStreamSource$Builder$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/metamoji/ui/task/DynamicStreamSource$Builder$$ExternalSyntheticLambda0;-><init>(I)V

    iput-object v0, p0, Lcom/metamoji/ui/task/DynamicStreamSource$Builder;->fnMessageTitle:Lkotlin/jvm/functions/Function0;

    .line 113
    :cond_0
    new-instance p1, Lcom/metamoji/ui/task/DynamicStreamSource$Builder$$ExternalSyntheticLambda1;

    invoke-direct {p1, p2}, Lcom/metamoji/ui/task/DynamicStreamSource$Builder$$ExternalSyntheticLambda1;-><init>(I)V

    iput-object p1, p0, Lcom/metamoji/ui/task/DynamicStreamSource$Builder;->fnPositiveMessage:Lkotlin/jvm/functions/Function0;

    .line 114
    new-instance p1, Lcom/metamoji/ui/task/DynamicStreamSource$Builder$$ExternalSyntheticLambda2;

    invoke-direct {p1, p3}, Lcom/metamoji/ui/task/DynamicStreamSource$Builder$$ExternalSyntheticLambda2;-><init>(I)V

    iput-object p1, p0, Lcom/metamoji/ui/task/DynamicStreamSource$Builder;->fnNegativeMessage:Lkotlin/jvm/functions/Function0;

    return-object p0
.end method

.method public final messageTitle(Lkotlin/jvm/functions/Function0;)Lcom/metamoji/ui/task/DynamicStreamSource$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/metamoji/ui/task/DynamicStreamSource$Builder;"
        }
    .end annotation

    const-string v0, "fn"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    iput-object p1, p0, Lcom/metamoji/ui/task/DynamicStreamSource$Builder;->fnMessageTitle:Lkotlin/jvm/functions/Function0;

    return-object p0
.end method

.method public final negativeMessage(Lkotlin/jvm/functions/Function0;)Lcom/metamoji/ui/task/DynamicStreamSource$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/metamoji/ui/task/DynamicStreamSource$Builder;"
        }
    .end annotation

    const-string v0, "fn"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 138
    iput-object p1, p0, Lcom/metamoji/ui/task/DynamicStreamSource$Builder;->fnNegativeMessage:Lkotlin/jvm/functions/Function0;

    return-object p0
.end method

.method public final onDisposed(Lkotlin/jvm/functions/Function0;)Lcom/metamoji/ui/task/DynamicStreamSource$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/metamoji/ui/task/DynamicStreamSource$Builder;"
        }
    .end annotation

    const-string v0, "fn"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    iput-object p1, p0, Lcom/metamoji/ui/task/DynamicStreamSource$Builder;->fnDispose:Lkotlin/jvm/functions/Function0;

    return-object p0
.end method

.method public final onSaved(Lkotlin/jvm/functions/Function1;)Lcom/metamoji/ui/task/DynamicStreamSource$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/net/Uri;",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/metamoji/ui/task/DynamicStreamSource$Builder;"
        }
    .end annotation

    const-string v0, "fn"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    iput-object p1, p0, Lcom/metamoji/ui/task/DynamicStreamSource$Builder;->fnOnSaved:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method public final positiveMessage(Lkotlin/jvm/functions/Function0;)Lcom/metamoji/ui/task/DynamicStreamSource$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/metamoji/ui/task/DynamicStreamSource$Builder;"
        }
    .end annotation

    const-string v0, "fn"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    iput-object p1, p0, Lcom/metamoji/ui/task/DynamicStreamSource$Builder;->fnPositiveMessage:Lkotlin/jvm/functions/Function0;

    return-object p0
.end method

.method public final saveTo(Lkotlin/jvm/functions/Function2;)Lcom/metamoji/ui/task/DynamicStreamSource$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroid/net/Uri;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/metamoji/ui/task/DynamicStreamSource$Builder;"
        }
    .end annotation

    const-string v0, "fn"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    iput-object p1, p0, Lcom/metamoji/ui/task/DynamicStreamSource$Builder;->fnSaveTo:Lkotlin/jvm/functions/Function2;

    return-object p0
.end method
