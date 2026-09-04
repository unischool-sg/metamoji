.class public final Lcom/metamoji/un/video/UnVideoUnitContainerExtender$Companion;
.super Ljava/lang/Object;
.source "UnVideoUnitContainerExtender.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/un/video/UnVideoUnitContainerExtender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUnVideoUnitContainerExtender.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UnVideoUnitContainerExtender.kt\ncom/metamoji/un/video/UnVideoUnitContainerExtender$Companion\n+ 2 UtImmortalTaskDef.kt\ncom/metamoji/lib/dialog/task/UtImmortalTaskDefKt\n*L\n1#1,803:1\n41#2:804\n*S KotlinDebug\n*F\n+ 1 UnVideoUnitContainerExtender.kt\ncom/metamoji/un/video/UnVideoUnitContainerExtender$Companion\n*L\n40#1:804\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J0\u0010\u0006\u001a\u0002H\u0007\"\u0004\u0008\u0000\u0010\u00072\u0006\u0010\u0008\u001a\u0002H\u00072\u0012\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u0002H\u00070\nH\u0086H\u00a2\u0006\u0002\u0010\u000cJ\u0010\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0007J\u0010\u0010\u0011\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0007R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/metamoji/un/video/UnVideoUnitContainerExtender$Companion;",
        "",
        "<init>",
        "()V",
        "MAX_STILL_UNIT",
        "",
        "withEditorActivity",
        "T",
        "def",
        "fn",
        "Lkotlin/Function1;",
        "Lcom/metamoji/noteanytime/EditorActivity;",
        "(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "addVideoUnitFromAlbum",
        "",
        "document",
        "Lcom/metamoji/nt/NtDocument;",
        "addVideoUnitFromCamera",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/un/video/UnVideoUnitContainerExtender$Companion;-><init>()V

    return-void
.end method

.method private final withEditorActivity$$forInline(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/metamoji/noteanytime/EditorActivity;",
            "+TT;>;",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 40
    sget-object v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager;->INSTANCE:Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager;

    invoke-virtual {v0}, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager;->getMortalInstanceSource()Lcom/metamoji/lib/dialog/task/IUiMortalInstanceSource;

    move-result-object v0

    .line 804
    invoke-interface {v0, p3}, Lcom/metamoji/lib/dialog/task/IUiMortalInstanceSource;->getOwner(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/metamoji/lib/dialog/UtDialogOwner;

    .line 41
    invoke-virtual {p3}, Lcom/metamoji/lib/dialog/UtDialogOwner;->asActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    .line 42
    instance-of v0, p3, Lcom/metamoji/noteanytime/EditorActivity;

    if-eqz v0, :cond_0

    .line 43
    invoke-interface {p2, p3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :cond_0
    return-object p1
.end method


# virtual methods
.method public final addVideoUnitFromAlbum(Lcom/metamoji/nt/NtDocument;)V
    .locals 7
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "document"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    invoke-virtual {p1}, Lcom/metamoji/nt/NtDocument;->getDocumentScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance p1, Lcom/metamoji/un/video/UnVideoUnitContainerExtender$Companion$addVideoUnitFromAlbum$1;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/metamoji/un/video/UnVideoUnitContainerExtender$Companion$addVideoUnitFromAlbum$1;-><init>(Lkotlin/coroutines/Continuation;)V

    move-object v4, p1

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    :cond_0
    return-void
.end method

.method public final addVideoUnitFromCamera(Lcom/metamoji/nt/NtDocument;)V
    .locals 7
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "document"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    invoke-virtual {p1}, Lcom/metamoji/nt/NtDocument;->getDocumentScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance p1, Lcom/metamoji/un/video/UnVideoUnitContainerExtender$Companion$addVideoUnitFromCamera$1;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/metamoji/un/video/UnVideoUnitContainerExtender$Companion$addVideoUnitFromCamera$1;-><init>(Lkotlin/coroutines/Continuation;)V

    move-object v4, p1

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    :cond_0
    return-void
.end method

.method public final withEditorActivity(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/metamoji/noteanytime/EditorActivity;",
            "+TT;>;",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lcom/metamoji/un/video/UnVideoUnitContainerExtender$Companion$withEditorActivity$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/metamoji/un/video/UnVideoUnitContainerExtender$Companion$withEditorActivity$1;

    iget v1, v0, Lcom/metamoji/un/video/UnVideoUnitContainerExtender$Companion$withEditorActivity$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p3, v0, Lcom/metamoji/un/video/UnVideoUnitContainerExtender$Companion$withEditorActivity$1;->label:I

    sub-int/2addr p3, v2

    iput p3, v0, Lcom/metamoji/un/video/UnVideoUnitContainerExtender$Companion$withEditorActivity$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/metamoji/un/video/UnVideoUnitContainerExtender$Companion$withEditorActivity$1;

    invoke-direct {v0, p0, p3}, Lcom/metamoji/un/video/UnVideoUnitContainerExtender$Companion$withEditorActivity$1;-><init>(Lcom/metamoji/un/video/UnVideoUnitContainerExtender$Companion;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lcom/metamoji/un/video/UnVideoUnitContainerExtender$Companion$withEditorActivity$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 39
    iget v2, v0, Lcom/metamoji/un/video/UnVideoUnitContainerExtender$Companion$withEditorActivity$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget p1, v0, Lcom/metamoji/un/video/UnVideoUnitContainerExtender$Companion$withEditorActivity$1;->I$1:I

    iget p1, v0, Lcom/metamoji/un/video/UnVideoUnitContainerExtender$Companion$withEditorActivity$1;->I$0:I

    iget-object p1, v0, Lcom/metamoji/un/video/UnVideoUnitContainerExtender$Companion$withEditorActivity$1;->L$2:Ljava/lang/Object;

    check-cast p1, Lcom/metamoji/lib/dialog/task/IUiMortalInstanceSource;

    iget-object p1, v0, Lcom/metamoji/un/video/UnVideoUnitContainerExtender$Companion$withEditorActivity$1;->L$1:Ljava/lang/Object;

    move-object p2, p1

    check-cast p2, Lkotlin/jvm/functions/Function1;

    iget-object p1, v0, Lcom/metamoji/un/video/UnVideoUnitContainerExtender$Companion$withEditorActivity$1;->L$0:Ljava/lang/Object;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 40
    sget-object p3, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager;->INSTANCE:Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager;

    invoke-virtual {p3}, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager;->getMortalInstanceSource()Lcom/metamoji/lib/dialog/task/IUiMortalInstanceSource;

    move-result-object p3

    .line 804
    iput-object p1, v0, Lcom/metamoji/un/video/UnVideoUnitContainerExtender$Companion$withEditorActivity$1;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lcom/metamoji/un/video/UnVideoUnitContainerExtender$Companion$withEditorActivity$1;->L$1:Ljava/lang/Object;

    invoke-static {p3}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v0, Lcom/metamoji/un/video/UnVideoUnitContainerExtender$Companion$withEditorActivity$1;->L$2:Ljava/lang/Object;

    const/4 v2, 0x0

    iput v2, v0, Lcom/metamoji/un/video/UnVideoUnitContainerExtender$Companion$withEditorActivity$1;->I$0:I

    iput v2, v0, Lcom/metamoji/un/video/UnVideoUnitContainerExtender$Companion$withEditorActivity$1;->I$1:I

    iput v3, v0, Lcom/metamoji/un/video/UnVideoUnitContainerExtender$Companion$withEditorActivity$1;->label:I

    invoke-interface {p3, v0}, Lcom/metamoji/lib/dialog/task/IUiMortalInstanceSource;->getOwner(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_3

    return-object v1

    .line 39
    :cond_3
    :goto_1
    check-cast p3, Lcom/metamoji/lib/dialog/UtDialogOwner;

    .line 41
    invoke-virtual {p3}, Lcom/metamoji/lib/dialog/UtDialogOwner;->asActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    .line 42
    instance-of v0, p3, Lcom/metamoji/noteanytime/EditorActivity;

    if-eqz v0, :cond_4

    .line 43
    invoke-interface {p2, p3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :cond_4
    return-object p1
.end method
