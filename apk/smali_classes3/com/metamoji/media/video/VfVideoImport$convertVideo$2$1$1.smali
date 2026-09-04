.class final Lcom/metamoji/media/video/VfVideoImport$convertVideo$2$1$1;
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
        "Ljava/lang/Float;",
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
.field final synthetic $progress:Lcom/metamoji/ui/INtProgressUIEx;

.field final synthetic this$0:Lcom/metamoji/media/video/VfVideoImport;


# direct methods
.method constructor <init>(Lcom/metamoji/media/video/VfVideoImport;Lcom/metamoji/ui/INtProgressUIEx;)V
    .locals 0

    iput-object p1, p0, Lcom/metamoji/media/video/VfVideoImport$convertVideo$2$1$1;->this$0:Lcom/metamoji/media/video/VfVideoImport;

    iput-object p2, p0, Lcom/metamoji/media/video/VfVideoImport$convertVideo$2$1$1;->$progress:Lcom/metamoji/ui/INtProgressUIEx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 69
    check-cast p1, Lcom/metamoji/video/transcoder/IAmvTranscoder;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/media/video/VfVideoImport$convertVideo$2$1$1;->invoke(Lcom/metamoji/video/transcoder/IAmvTranscoder;F)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/metamoji/video/transcoder/IAmvTranscoder;F)V
    .locals 6

    const-string v0, "<unused var>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object p1

    check-cast p1, Lkotlin/coroutines/CoroutineContext;

    invoke-static {p1}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    new-instance p1, Lcom/metamoji/media/video/VfVideoImport$convertVideo$2$1$1$1;

    iget-object v1, p0, Lcom/metamoji/media/video/VfVideoImport$convertVideo$2$1$1;->this$0:Lcom/metamoji/media/video/VfVideoImport;

    iget-object v2, p0, Lcom/metamoji/media/video/VfVideoImport$convertVideo$2$1$1;->$progress:Lcom/metamoji/ui/INtProgressUIEx;

    const/4 v3, 0x0

    invoke-direct {p1, v1, p2, v2, v3}, Lcom/metamoji/media/video/VfVideoImport$convertVideo$2$1$1$1;-><init>(Lcom/metamoji/media/video/VfVideoImport;FLcom/metamoji/ui/INtProgressUIEx;Lkotlin/coroutines/Continuation;)V

    move-object v3, p1

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method
