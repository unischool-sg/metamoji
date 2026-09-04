.class final Lcom/metamoji/ui/UiMediaStore$JAVA$saveMultiBitmapsToGallery$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "UiMediaStore.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/UiMediaStore$JAVA;->saveMultiBitmapsToGallery(Lcom/metamoji/nt/NtDocument;Lkotlin/sequences/Sequence;Ljava/lang/String;Ljava/lang/String;)V
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
    c = "com.metamoji.ui.UiMediaStore$JAVA$saveMultiBitmapsToGallery$1"
    f = "UiMediaStore.kt"
    i = {
        0x1
    }
    l = {
        0x11c,
        0x11d
    }
    m = "invokeSuspend"
    n = {
        "result"
    }
    s = {
        "Z$0"
    }
.end annotation


# instance fields
.field final synthetic $bitmaps:Lkotlin/sequences/Sequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/sequences/Sequence<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $fileName:Ljava/lang/String;

.field final synthetic $mimeType:Ljava/lang/String;

.field Z$0:Z

.field label:I


# direct methods
.method constructor <init>(Lkotlin/sequences/Sequence;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/sequences/Sequence<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/metamoji/ui/UiMediaStore$JAVA$saveMultiBitmapsToGallery$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/metamoji/ui/UiMediaStore$JAVA$saveMultiBitmapsToGallery$1;->$bitmaps:Lkotlin/sequences/Sequence;

    iput-object p2, p0, Lcom/metamoji/ui/UiMediaStore$JAVA$saveMultiBitmapsToGallery$1;->$fileName:Ljava/lang/String;

    iput-object p3, p0, Lcom/metamoji/ui/UiMediaStore$JAVA$saveMultiBitmapsToGallery$1;->$mimeType:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3
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

    new-instance p1, Lcom/metamoji/ui/UiMediaStore$JAVA$saveMultiBitmapsToGallery$1;

    iget-object v0, p0, Lcom/metamoji/ui/UiMediaStore$JAVA$saveMultiBitmapsToGallery$1;->$bitmaps:Lkotlin/sequences/Sequence;

    iget-object v1, p0, Lcom/metamoji/ui/UiMediaStore$JAVA$saveMultiBitmapsToGallery$1;->$fileName:Ljava/lang/String;

    iget-object v2, p0, Lcom/metamoji/ui/UiMediaStore$JAVA$saveMultiBitmapsToGallery$1;->$mimeType:Ljava/lang/String;

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/metamoji/ui/UiMediaStore$JAVA$saveMultiBitmapsToGallery$1;-><init>(Lkotlin/sequences/Sequence;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/ui/UiMediaStore$JAVA$saveMultiBitmapsToGallery$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/ui/UiMediaStore$JAVA$saveMultiBitmapsToGallery$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/metamoji/ui/UiMediaStore$JAVA$saveMultiBitmapsToGallery$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/metamoji/ui/UiMediaStore$JAVA$saveMultiBitmapsToGallery$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 283
    iget v1, p0, Lcom/metamoji/ui/UiMediaStore$JAVA$saveMultiBitmapsToGallery$1;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_3

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

    .line 284
    sget-object p1, Lcom/metamoji/ui/UiMediaStore;->INSTANCE:Lcom/metamoji/ui/UiMediaStore;

    iget-object v1, p0, Lcom/metamoji/ui/UiMediaStore$JAVA$saveMultiBitmapsToGallery$1;->$bitmaps:Lkotlin/sequences/Sequence;

    iget-object v4, p0, Lcom/metamoji/ui/UiMediaStore$JAVA$saveMultiBitmapsToGallery$1;->$fileName:Ljava/lang/String;

    iget-object v5, p0, Lcom/metamoji/ui/UiMediaStore$JAVA$saveMultiBitmapsToGallery$1;->$mimeType:Ljava/lang/String;

    move-object v6, p0

    check-cast v6, Lkotlin/coroutines/Continuation;

    iput v3, p0, Lcom/metamoji/ui/UiMediaStore$JAVA$saveMultiBitmapsToGallery$1;->label:I

    invoke-virtual {p1, v1, v4, v5, v6}, Lcom/metamoji/ui/UiMediaStore;->saveMultiBitmapsToGallery(Lkotlin/sequences/Sequence;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    goto :goto_2

    :cond_3
    :goto_0
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 285
    sget-object v3, Lcom/metamoji/ui/task/MessageBoxTask;->Companion:Lcom/metamoji/ui/task/MessageBoxTask$Companion;

    sget v4, Lcom/metamoji/noteanytime/R$string;->Save_Album_Title:I

    if-eqz p1, :cond_4

    sget v1, Lcom/metamoji/noteanytime/R$string;->Save_Album_Success:I

    goto :goto_1

    :cond_4
    sget v1, Lcom/metamoji/noteanytime/R$string;->Save_Album_Error:I

    :goto_1
    move v5, v1

    move-object v7, p0

    check-cast v7, Lkotlin/coroutines/Continuation;

    iput-boolean p1, p0, Lcom/metamoji/ui/UiMediaStore$JAVA$saveMultiBitmapsToGallery$1;->Z$0:Z

    iput v2, p0, Lcom/metamoji/ui/UiMediaStore$JAVA$saveMultiBitmapsToGallery$1;->label:I

    const/4 v6, 0x0

    const/4 v8, 0x4

    const/4 v9, 0x0

    invoke-static/range {v3 .. v9}, Lcom/metamoji/ui/task/MessageBoxTask$Companion;->confirm$default(Lcom/metamoji/ui/task/MessageBoxTask$Companion;IIILkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    :goto_2
    return-object v0

    .line 286
    :cond_5
    :goto_3
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
