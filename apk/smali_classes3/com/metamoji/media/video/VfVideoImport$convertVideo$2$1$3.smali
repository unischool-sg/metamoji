.class final Lcom/metamoji/media/video/VfVideoImport$convertVideo$2$1$3;
.super Ljava/lang/Object;
.source "VfVideoImport.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


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
        "Lkotlin/jvm/functions/Function0<",
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
.method constructor <init>(Lcom/metamoji/media/video/VfVideoImport;Ljava/io/File;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/media/video/VfVideoImport;",
            "Ljava/io/File;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/metamoji/media/video/VfVideoImport$convertVideo$2$1$3;->this$0:Lcom/metamoji/media/video/VfVideoImport;

    iput-object p2, p0, Lcom/metamoji/media/video/VfVideoImport$convertVideo$2$1$3;->$outFile:Ljava/io/File;

    iput-object p3, p0, Lcom/metamoji/media/video/VfVideoImport$convertVideo$2$1$3;->$it:Lkotlin/coroutines/Continuation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 90
    invoke-virtual {p0}, Lcom/metamoji/media/video/VfVideoImport$convertVideo$2$1$3;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 10

    .line 91
    iget-object v0, p0, Lcom/metamoji/media/video/VfVideoImport$convertVideo$2$1$3;->this$0:Lcom/metamoji/media/video/VfVideoImport;

    invoke-static {v0}, Lcom/metamoji/media/video/VfVideoImport;->access$getTranscoder$p(Lcom/metamoji/media/video/VfVideoImport;)Lcom/metamoji/video/transcoder/IAmvTranscoder;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/metamoji/media/video/VfVideoImport$convertVideo$2$1$3;->this$0:Lcom/metamoji/media/video/VfVideoImport;

    iget-object v2, p0, Lcom/metamoji/media/video/VfVideoImport$convertVideo$2$1$3;->$outFile:Ljava/io/File;

    iget-object v3, p0, Lcom/metamoji/media/video/VfVideoImport$convertVideo$2$1$3;->$it:Lkotlin/coroutines/Continuation;

    .line 92
    invoke-interface {v0}, Lcom/metamoji/video/transcoder/IAmvTranscoder;->cancel()V

    .line 93
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v4

    new-instance v0, Lcom/metamoji/media/video/VfVideoImport$convertVideo$2$1$3$1$1;

    const/4 v5, 0x0

    invoke-direct {v0, v2, v3, v5}, Lcom/metamoji/media/video/VfVideoImport$convertVideo$2$1$3$1$1;-><init>(Ljava/io/File;Lkotlin/coroutines/Continuation;Lkotlin/coroutines/Continuation;)V

    move-object v7, v0

    check-cast v7, Lkotlin/jvm/functions/Function2;

    const/4 v8, 0x3

    const/4 v9, 0x0

    const/4 v6, 0x0

    invoke-static/range {v4 .. v9}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    const/4 v0, 0x1

    .line 99
    invoke-static {v1, v0}, Lcom/metamoji/media/video/VfVideoImport;->access$setCancelled$p(Lcom/metamoji/media/video/VfVideoImport;Z)V

    :cond_0
    return-void
.end method
