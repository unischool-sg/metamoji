.class final Lcom/metamoji/media/video/VfVideoImport$convertVideo$2$1$2;
.super Ljava/lang/Object;
.source "VfVideoImport.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/media/video/VfVideoImport;->convertVideo(Ljava/io/File;Lcom/metamoji/ui/INtProgressUIEx;Landroid/content/Context;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function2<",
        "Lcom/metamoji/video/transcoder/IAmvTranscoder;",
        "Ljava/lang/Boolean;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $it:Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/coroutines/Continuation<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $outFile:Ljava/io/File;

.field final synthetic this$0:Lcom/metamoji/media/video/VfVideoImport;


# direct methods
.method constructor <init>(Ljava/io/File;Lkotlin/coroutines/Continuation;Lcom/metamoji/media/video/VfVideoImport;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/metamoji/media/video/VfVideoImport;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/metamoji/media/video/VfVideoImport$convertVideo$2$1$2;->$outFile:Ljava/io/File;

    iput-object p2, p0, Lcom/metamoji/media/video/VfVideoImport$convertVideo$2$1$2;->$it:Lkotlin/coroutines/Continuation;

    iput-object p3, p0, Lcom/metamoji/media/video/VfVideoImport$convertVideo$2$1$2;->this$0:Lcom/metamoji/media/video/VfVideoImport;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 75
    check-cast p1, Lcom/metamoji/video/transcoder/IAmvTranscoder;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/media/video/VfVideoImport$convertVideo$2$1$2;->invoke(Lcom/metamoji/video/transcoder/IAmvTranscoder;Z)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/metamoji/video/transcoder/IAmvTranscoder;Z)V
    .locals 7

    const-string v0, "<unused var>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object p1

    check-cast p1, Lkotlin/coroutines/CoroutineContext;

    invoke-static {p1}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/metamoji/media/video/VfVideoImport$convertVideo$2$1$2$1;

    iget-object v3, p0, Lcom/metamoji/media/video/VfVideoImport$convertVideo$2$1$2;->$outFile:Ljava/io/File;

    iget-object v4, p0, Lcom/metamoji/media/video/VfVideoImport$convertVideo$2$1$2;->$it:Lkotlin/coroutines/Continuation;

    iget-object v5, p0, Lcom/metamoji/media/video/VfVideoImport$convertVideo$2$1$2;->this$0:Lcom/metamoji/media/video/VfVideoImport;

    const/4 v6, 0x0

    move v2, p2

    invoke-direct/range {v1 .. v6}, Lcom/metamoji/media/video/VfVideoImport$convertVideo$2$1$2$1;-><init>(ZLjava/io/File;Lkotlin/coroutines/Continuation;Lcom/metamoji/media/video/VfVideoImport;Lkotlin/coroutines/Continuation;)V

    move-object v3, v1

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method
