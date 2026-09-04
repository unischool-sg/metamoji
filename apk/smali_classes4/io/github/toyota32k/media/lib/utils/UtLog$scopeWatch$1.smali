.class final Lio/github/toyota32k/media/lib/utils/UtLog$scopeWatch$1;
.super Lkotlin/jvm/internal/Lambda;
.source "UtLog.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/github/toyota32k/media/lib/utils/UtLog;->scopeWatch(Ljava/lang/String;)Ljava/io/Closeable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $composed:Ljava/lang/String;

.field final synthetic this$0:Lio/github/toyota32k/media/lib/utils/UtLog;


# direct methods
.method constructor <init>(Lio/github/toyota32k/media/lib/utils/UtLog;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lio/github/toyota32k/media/lib/utils/UtLog$scopeWatch$1;->this$0:Lio/github/toyota32k/media/lib/utils/UtLog;

    iput-object p2, p0, Lio/github/toyota32k/media/lib/utils/UtLog$scopeWatch$1;->$composed:Ljava/lang/String;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 131
    invoke-virtual {p0}, Lio/github/toyota32k/media/lib/utils/UtLog$scopeWatch$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 3

    .line 131
    iget-object v0, p0, Lio/github/toyota32k/media/lib/utils/UtLog$scopeWatch$1;->this$0:Lio/github/toyota32k/media/lib/utils/UtLog;

    invoke-static {v0}, Lio/github/toyota32k/media/lib/utils/UtLog;->access$getLogger$p(Lio/github/toyota32k/media/lib/utils/UtLog;)Lio/github/toyota32k/media/lib/utils/UtLoggerInstance;

    move-result-object v0

    iget-object v1, p0, Lio/github/toyota32k/media/lib/utils/UtLog$scopeWatch$1;->$composed:Ljava/lang/String;

    const-string v2, " - leave"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lio/github/toyota32k/media/lib/utils/UtLoggerInstance;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
