.class final Lcom/metamoji/media/video/VfVideoImport$execute$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "VfVideoImport.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/media/video/VfVideoImport;->execute(Ljava/io/File;Lcom/metamoji/ui/INtProgressUIEx;Ljava/util/Map;Landroid/content/Context;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.metamoji.media.video.VfVideoImport$execute$2"
    f = "VfVideoImport.kt"
    i = {}
    l = {
        0xeb,
        0xeb
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $context:Landroid/content/Context;

.field final synthetic $ev:Lcom/metamoji/cm/ResetableEvent;

.field final synthetic $options:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $progress:Lcom/metamoji/ui/INtProgressUIEx;

.field final synthetic $sourceFile:Ljava/io/File;

.field label:I

.field final synthetic this$0:Lcom/metamoji/media/video/VfVideoImport;


# direct methods
.method constructor <init>(Lcom/metamoji/media/video/VfVideoImport;Ljava/io/File;Lcom/metamoji/ui/INtProgressUIEx;Landroid/content/Context;Ljava/util/Map;Lcom/metamoji/cm/ResetableEvent;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/media/video/VfVideoImport;",
            "Ljava/io/File;",
            "Lcom/metamoji/ui/INtProgressUIEx;",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/metamoji/cm/ResetableEvent;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/metamoji/media/video/VfVideoImport$execute$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/metamoji/media/video/VfVideoImport$execute$2;->this$0:Lcom/metamoji/media/video/VfVideoImport;

    iput-object p2, p0, Lcom/metamoji/media/video/VfVideoImport$execute$2;->$sourceFile:Ljava/io/File;

    iput-object p3, p0, Lcom/metamoji/media/video/VfVideoImport$execute$2;->$progress:Lcom/metamoji/ui/INtProgressUIEx;

    iput-object p4, p0, Lcom/metamoji/media/video/VfVideoImport$execute$2;->$context:Landroid/content/Context;

    iput-object p5, p0, Lcom/metamoji/media/video/VfVideoImport$execute$2;->$options:Ljava/util/Map;

    iput-object p6, p0, Lcom/metamoji/media/video/VfVideoImport$execute$2;->$ev:Lcom/metamoji/cm/ResetableEvent;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p7}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/metamoji/media/video/VfVideoImport$execute$2;

    iget-object v1, p0, Lcom/metamoji/media/video/VfVideoImport$execute$2;->this$0:Lcom/metamoji/media/video/VfVideoImport;

    iget-object v2, p0, Lcom/metamoji/media/video/VfVideoImport$execute$2;->$sourceFile:Ljava/io/File;

    iget-object v3, p0, Lcom/metamoji/media/video/VfVideoImport$execute$2;->$progress:Lcom/metamoji/ui/INtProgressUIEx;

    iget-object v4, p0, Lcom/metamoji/media/video/VfVideoImport$execute$2;->$context:Landroid/content/Context;

    iget-object v5, p0, Lcom/metamoji/media/video/VfVideoImport$execute$2;->$options:Ljava/util/Map;

    iget-object v6, p0, Lcom/metamoji/media/video/VfVideoImport$execute$2;->$ev:Lcom/metamoji/cm/ResetableEvent;

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/metamoji/media/video/VfVideoImport$execute$2;-><init>(Lcom/metamoji/media/video/VfVideoImport;Ljava/io/File;Lcom/metamoji/ui/INtProgressUIEx;Landroid/content/Context;Ljava/util/Map;Lcom/metamoji/cm/ResetableEvent;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/media/video/VfVideoImport$execute$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/media/video/VfVideoImport$execute$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/metamoji/media/video/VfVideoImport$execute$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/metamoji/media/video/VfVideoImport$execute$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 234
    iget v1, p0, Lcom/metamoji/media/video/VfVideoImport$execute$2;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 235
    iget-object p1, p0, Lcom/metamoji/media/video/VfVideoImport$execute$2;->this$0:Lcom/metamoji/media/video/VfVideoImport;

    iget-object v1, p0, Lcom/metamoji/media/video/VfVideoImport$execute$2;->$sourceFile:Ljava/io/File;

    iget-object v4, p0, Lcom/metamoji/media/video/VfVideoImport$execute$2;->$progress:Lcom/metamoji/ui/INtProgressUIEx;

    iget-object v5, p0, Lcom/metamoji/media/video/VfVideoImport$execute$2;->$context:Landroid/content/Context;

    move-object v6, p0

    check-cast v6, Lkotlin/coroutines/Continuation;

    iput v3, p0, Lcom/metamoji/media/video/VfVideoImport$execute$2;->label:I

    invoke-static {p1, v1, v4, v5, v6}, Lcom/metamoji/media/video/VfVideoImport;->access$convertVideo(Lcom/metamoji/media/video/VfVideoImport;Ljava/io/File;Lcom/metamoji/ui/INtProgressUIEx;Landroid/content/Context;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    goto :goto_1

    :cond_3
    :goto_0
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/metamoji/media/video/VfVideoImport$execute$2;->this$0:Lcom/metamoji/media/video/VfVideoImport;

    move-object v1, p0

    check-cast v1, Lkotlin/coroutines/Continuation;

    iput v2, p0, Lcom/metamoji/media/video/VfVideoImport$execute$2;->label:I

    invoke-static {p1, v1}, Lcom/metamoji/media/video/VfVideoImport;->access$extractThumbnail(Lcom/metamoji/media/video/VfVideoImport;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    :goto_1
    return-object v0

    :cond_4
    :goto_2
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 236
    iget-object p1, p0, Lcom/metamoji/media/video/VfVideoImport$execute$2;->this$0:Lcom/metamoji/media/video/VfVideoImport;

    iget-object v0, p0, Lcom/metamoji/media/video/VfVideoImport$execute$2;->$options:Ljava/util/Map;

    invoke-static {p1, v0}, Lcom/metamoji/media/video/VfVideoImport;->access$createDocument(Lcom/metamoji/media/video/VfVideoImport;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/metamoji/media/video/VfVideoImport;->access$setDocumentId$p(Lcom/metamoji/media/video/VfVideoImport;Ljava/lang/String;)V

    .line 238
    :cond_5
    iget-object p1, p0, Lcom/metamoji/media/video/VfVideoImport$execute$2;->this$0:Lcom/metamoji/media/video/VfVideoImport;

    invoke-static {p1}, Lcom/metamoji/media/video/VfVideoImport;->access$getThumbnail$p(Lcom/metamoji/media/video/VfVideoImport;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 239
    :cond_6
    iget-object p1, p0, Lcom/metamoji/media/video/VfVideoImport$execute$2;->this$0:Lcom/metamoji/media/video/VfVideoImport;

    invoke-static {p1}, Lcom/metamoji/media/video/VfVideoImport;->access$getDocumentId$p(Lcom/metamoji/media/video/VfVideoImport;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_7

    .line 240
    iget-object p1, p0, Lcom/metamoji/media/video/VfVideoImport$execute$2;->this$0:Lcom/metamoji/media/video/VfVideoImport;

    invoke-static {p1}, Lcom/metamoji/media/video/VfVideoImport;->access$getVideoFile$p(Lcom/metamoji/media/video/VfVideoImport;)Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result p1

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    .line 242
    :cond_7
    iget-object p1, p0, Lcom/metamoji/media/video/VfVideoImport$execute$2;->$ev:Lcom/metamoji/cm/ResetableEvent;

    invoke-virtual {p1}, Lcom/metamoji/cm/ResetableEvent;->set()V

    .line 243
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
