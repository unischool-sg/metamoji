.class final Lcom/metamoji/un/video/UnVideoUtils$Companion$execVideoTrimming$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "UnVideoUtils.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/un/video/UnVideoUtils$Companion;->execVideoTrimming(Lcom/metamoji/nt/NtEditorWindowController;Lcom/metamoji/cm/CmContext;)V
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
    c = "com.metamoji.un.video.UnVideoUtils$Companion$execVideoTrimming$1"
    f = "UnVideoUtils.kt"
    i = {}
    l = {
        0x9c
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $context:Lcom/metamoji/cm/CmContext;

.field final synthetic $docId:Ljava/lang/String;

.field final synthetic $dst:Ljava/io/File;

.field final synthetic $src:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lcom/metamoji/un/video/UnVideoUtils$WorkFile;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $this_execVideoTrimming:Lcom/metamoji/nt/NtEditorWindowController;

.field label:I


# direct methods
.method constructor <init>(Ljava/lang/String;Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/io/File;Lcom/metamoji/cm/CmContext;Lcom/metamoji/nt/NtEditorWindowController;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lcom/metamoji/un/video/UnVideoUtils$WorkFile;",
            ">;",
            "Ljava/io/File;",
            "Lcom/metamoji/cm/CmContext;",
            "Lcom/metamoji/nt/NtEditorWindowController;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/metamoji/un/video/UnVideoUtils$Companion$execVideoTrimming$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/metamoji/un/video/UnVideoUtils$Companion$execVideoTrimming$1;->$docId:Ljava/lang/String;

    iput-object p2, p0, Lcom/metamoji/un/video/UnVideoUtils$Companion$execVideoTrimming$1;->$src:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p3, p0, Lcom/metamoji/un/video/UnVideoUtils$Companion$execVideoTrimming$1;->$dst:Ljava/io/File;

    iput-object p4, p0, Lcom/metamoji/un/video/UnVideoUtils$Companion$execVideoTrimming$1;->$context:Lcom/metamoji/cm/CmContext;

    iput-object p5, p0, Lcom/metamoji/un/video/UnVideoUtils$Companion$execVideoTrimming$1;->$this_execVideoTrimming:Lcom/metamoji/nt/NtEditorWindowController;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 7
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

    new-instance v0, Lcom/metamoji/un/video/UnVideoUtils$Companion$execVideoTrimming$1;

    iget-object v1, p0, Lcom/metamoji/un/video/UnVideoUtils$Companion$execVideoTrimming$1;->$docId:Ljava/lang/String;

    iget-object v2, p0, Lcom/metamoji/un/video/UnVideoUtils$Companion$execVideoTrimming$1;->$src:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v3, p0, Lcom/metamoji/un/video/UnVideoUtils$Companion$execVideoTrimming$1;->$dst:Ljava/io/File;

    iget-object v4, p0, Lcom/metamoji/un/video/UnVideoUtils$Companion$execVideoTrimming$1;->$context:Lcom/metamoji/cm/CmContext;

    iget-object v5, p0, Lcom/metamoji/un/video/UnVideoUtils$Companion$execVideoTrimming$1;->$this_execVideoTrimming:Lcom/metamoji/nt/NtEditorWindowController;

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/metamoji/un/video/UnVideoUtils$Companion$execVideoTrimming$1;-><init>(Ljava/lang/String;Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/io/File;Lcom/metamoji/cm/CmContext;Lcom/metamoji/nt/NtEditorWindowController;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/un/video/UnVideoUtils$Companion$execVideoTrimming$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/un/video/UnVideoUtils$Companion$execVideoTrimming$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/metamoji/un/video/UnVideoUtils$Companion$execVideoTrimming$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/metamoji/un/video/UnVideoUtils$Companion$execVideoTrimming$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 155
    iget v1, p0, Lcom/metamoji/un/video/UnVideoUtils$Companion$execVideoTrimming$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 156
    sget-object v1, Lcom/metamoji/un/video/dialog/VideoTrimmingDialog;->Companion:Lcom/metamoji/un/video/dialog/VideoTrimmingDialog$Companion;

    move p1, v2

    iget-object v2, p0, Lcom/metamoji/un/video/UnVideoUtils$Companion$execVideoTrimming$1;->$docId:Ljava/lang/String;

    iget-object v3, p0, Lcom/metamoji/un/video/UnVideoUtils$Companion$execVideoTrimming$1;->$src:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v3, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v3, Lcom/metamoji/un/video/UnVideoUtils$WorkFile;

    invoke-virtual {v3}, Lcom/metamoji/un/video/UnVideoUtils$WorkFile;->getFile()Ljava/io/File;

    move-result-object v4

    iget-object v5, p0, Lcom/metamoji/un/video/UnVideoUtils$Companion$execVideoTrimming$1;->$dst:Ljava/io/File;

    move-object v7, p0

    check-cast v7, Lkotlin/coroutines/Continuation;

    iput p1, p0, Lcom/metamoji/un/video/UnVideoUtils$Companion$execVideoTrimming$1;->label:I

    const/4 v3, 0x0

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v7}, Lcom/metamoji/un/video/dialog/VideoTrimmingDialog$Companion;->executeTrimming(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/io/File;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 157
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object p1

    .line 158
    invoke-virtual {p1}, Lcom/metamoji/nt/NtEditorWindowController;->getDocumentID()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/metamoji/un/video/UnVideoUtils$Companion$execVideoTrimming$1;->$docId:Ljava/lang/String;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 159
    iget-object p1, p0, Lcom/metamoji/un/video/UnVideoUtils$Companion$execVideoTrimming$1;->$context:Lcom/metamoji/cm/CmContext;

    const-string/jumbo v0, "videoDocId"

    iget-object v1, p0, Lcom/metamoji/un/video/UnVideoUtils$Companion$execVideoTrimming$1;->$docId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 160
    iget-object p1, p0, Lcom/metamoji/un/video/UnVideoUtils$Companion$execVideoTrimming$1;->$context:Lcom/metamoji/cm/CmContext;

    const-string/jumbo v0, "videoAddSub"

    const-string v1, "finish"

    invoke-virtual {p1, v0, v1}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 161
    iget-object p1, p0, Lcom/metamoji/un/video/UnVideoUtils$Companion$execVideoTrimming$1;->$context:Lcom/metamoji/cm/CmContext;

    const-string/jumbo v0, "videoSource"

    iget-object v1, p0, Lcom/metamoji/un/video/UnVideoUtils$Companion$execVideoTrimming$1;->$dst:Ljava/io/File;

    invoke-virtual {p1, v0, v1}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 162
    iget-object p1, p0, Lcom/metamoji/un/video/UnVideoUtils$Companion$execVideoTrimming$1;->$this_execVideoTrimming:Lcom/metamoji/nt/NtEditorWindowController;

    iget-object v0, p0, Lcom/metamoji/un/video/UnVideoUtils$Companion$execVideoTrimming$1;->$context:Lcom/metamoji/cm/CmContext;

    invoke-virtual {p1, v0}, Lcom/metamoji/nt/NtEditorWindowController;->handleAddVideoUnit(Lcom/metamoji/cm/CmContext;)V

    .line 165
    :cond_3
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
