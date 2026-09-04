.class final Lcom/metamoji/un/video/dialog/VideoTrimmingDialog$Companion$executeTrimming$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "VideoTrimmingDialog.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/un/video/dialog/VideoTrimmingDialog$Companion;->executeTrimming(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/io/File;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lcom/metamoji/lib/dialog/task/UtImmortalSimpleTask;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Ljava/lang/Boolean;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nVideoTrimmingDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VideoTrimmingDialog.kt\ncom/metamoji/un/video/dialog/VideoTrimmingDialog$Companion$executeTrimming$2\n+ 2 UtTaskExt.kt\ncom/metamoji/lib/dialog/task/UtTaskExtKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,256:1\n52#2,3:257\n1#3:260\n*S KotlinDebug\n*F\n+ 1 VideoTrimmingDialog.kt\ncom/metamoji/un/video/dialog/VideoTrimmingDialog$Companion$executeTrimming$2\n*L\n130#1:257,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lcom/metamoji/lib/dialog/task/UtImmortalSimpleTask;"
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
    c = "com.metamoji.un.video.dialog.VideoTrimmingDialog$Companion$executeTrimming$2"
    f = "VideoTrimmingDialog.kt"
    i = {
        0x0
    }
    l = {
        0x83
    }
    m = "invokeSuspend"
    n = {
        "$this$UtImmortalSimpleTask"
    }
    s = {
        "L$0"
    }
.end annotation


# instance fields
.field final synthetic $destination:Ljava/io/File;

.field final synthetic $docId:Ljava/lang/String;

.field final synthetic $repair:Z

.field final synthetic $source:Ljava/io/File;

.field final synthetic $unitId:Ljava/lang/String;

.field private synthetic L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/io/File;ZLkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "Ljava/io/File;",
            "Z",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/metamoji/un/video/dialog/VideoTrimmingDialog$Companion$executeTrimming$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/metamoji/un/video/dialog/VideoTrimmingDialog$Companion$executeTrimming$2;->$docId:Ljava/lang/String;

    iput-object p2, p0, Lcom/metamoji/un/video/dialog/VideoTrimmingDialog$Companion$executeTrimming$2;->$unitId:Ljava/lang/String;

    iput-object p3, p0, Lcom/metamoji/un/video/dialog/VideoTrimmingDialog$Companion$executeTrimming$2;->$source:Ljava/io/File;

    iput-object p4, p0, Lcom/metamoji/un/video/dialog/VideoTrimmingDialog$Companion$executeTrimming$2;->$destination:Ljava/io/File;

    iput-boolean p5, p0, Lcom/metamoji/un/video/dialog/VideoTrimmingDialog$Companion$executeTrimming$2;->$repair:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method static final invokeSuspend$lambda$1(Lcom/metamoji/lib/dialog/UtDialogOwner;)Lcom/metamoji/un/video/dialog/VideoTrimmingDialog;
    .locals 0

    .line 131
    new-instance p0, Lcom/metamoji/un/video/dialog/VideoTrimmingDialog;

    invoke-direct {p0}, Lcom/metamoji/un/video/dialog/VideoTrimmingDialog;-><init>()V

    return-object p0
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

    new-instance v0, Lcom/metamoji/un/video/dialog/VideoTrimmingDialog$Companion$executeTrimming$2;

    iget-object v1, p0, Lcom/metamoji/un/video/dialog/VideoTrimmingDialog$Companion$executeTrimming$2;->$docId:Ljava/lang/String;

    iget-object v2, p0, Lcom/metamoji/un/video/dialog/VideoTrimmingDialog$Companion$executeTrimming$2;->$unitId:Ljava/lang/String;

    iget-object v3, p0, Lcom/metamoji/un/video/dialog/VideoTrimmingDialog$Companion$executeTrimming$2;->$source:Ljava/io/File;

    iget-object v4, p0, Lcom/metamoji/un/video/dialog/VideoTrimmingDialog$Companion$executeTrimming$2;->$destination:Ljava/io/File;

    iget-boolean v5, p0, Lcom/metamoji/un/video/dialog/VideoTrimmingDialog$Companion$executeTrimming$2;->$repair:Z

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/metamoji/un/video/dialog/VideoTrimmingDialog$Companion$executeTrimming$2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/io/File;ZLkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/metamoji/un/video/dialog/VideoTrimmingDialog$Companion$executeTrimming$2;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public final invoke(Lcom/metamoji/lib/dialog/task/UtImmortalSimpleTask;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/lib/dialog/task/UtImmortalSimpleTask;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/un/video/dialog/VideoTrimmingDialog$Companion$executeTrimming$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/metamoji/un/video/dialog/VideoTrimmingDialog$Companion$executeTrimming$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/metamoji/un/video/dialog/VideoTrimmingDialog$Companion$executeTrimming$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/metamoji/lib/dialog/task/UtImmortalSimpleTask;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/un/video/dialog/VideoTrimmingDialog$Companion$executeTrimming$2;->invoke(Lcom/metamoji/lib/dialog/task/UtImmortalSimpleTask;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    iget-object v0, p0, Lcom/metamoji/un/video/dialog/VideoTrimmingDialog$Companion$executeTrimming$2;->L$0:Ljava/lang/Object;

    check-cast v0, Lcom/metamoji/lib/dialog/task/UtImmortalSimpleTask;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 129
    iget v2, p0, Lcom/metamoji/un/video/dialog/VideoTrimmingDialog$Companion$executeTrimming$2;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    if-ne v2, v3, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 130
    move-object p1, v0

    check-cast p1, Lcom/metamoji/lib/dialog/task/IUtImmortalTask;

    invoke-static {}, Lcom/metamoji/noteanytime/NoteAnytimeApplication;->getInstance()Lcom/metamoji/noteanytime/NoteAnytimeApplication;

    move-result-object v2

    const-string v4, "getInstance(...)"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/app/Application;

    .line 257
    new-instance v4, Landroidx/lifecycle/ViewModelProvider;

    invoke-interface {p1}, Lcom/metamoji/lib/dialog/task/IUtImmortalTask;->getImmortalTaskContext()Lcom/metamoji/lib/dialog/task/IUtImmortalTaskContext;

    move-result-object v5

    check-cast v5, Landroidx/lifecycle/ViewModelStoreOwner;

    new-instance v6, Landroidx/lifecycle/ViewModelProvider$AndroidViewModelFactory;

    invoke-direct {v6, v2}, Landroidx/lifecycle/ViewModelProvider$AndroidViewModelFactory;-><init>(Landroid/app/Application;)V

    check-cast v6, Landroidx/lifecycle/ViewModelProvider$Factory;

    invoke-direct {v4, v5, v6}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;Landroidx/lifecycle/ViewModelProvider$Factory;)V

    const-class v2, Lcom/metamoji/un/video/dialog/VideoTrimmingDialog$VideoTrimmingDialogViewModel;

    invoke-virtual {v4, v2}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v2

    check-cast v2, Landroidx/lifecycle/AndroidViewModel;

    .line 258
    move-object v4, v2

    check-cast v4, Lcom/metamoji/lib/dialog/task/IUtImmortalTaskMutableContextSource;

    invoke-interface {p1}, Lcom/metamoji/lib/dialog/task/IUtImmortalTask;->getImmortalTaskContext()Lcom/metamoji/lib/dialog/task/IUtImmortalTaskContext;

    move-result-object p1

    invoke-interface {v4, p1}, Lcom/metamoji/lib/dialog/task/IUtImmortalTaskMutableContextSource;->setImmortalTaskContext(Lcom/metamoji/lib/dialog/task/IUtImmortalTaskContext;)V

    .line 130
    iget-object v6, p0, Lcom/metamoji/un/video/dialog/VideoTrimmingDialog$Companion$executeTrimming$2;->$docId:Ljava/lang/String;

    iget-object v7, p0, Lcom/metamoji/un/video/dialog/VideoTrimmingDialog$Companion$executeTrimming$2;->$unitId:Ljava/lang/String;

    iget-object v8, p0, Lcom/metamoji/un/video/dialog/VideoTrimmingDialog$Companion$executeTrimming$2;->$source:Ljava/io/File;

    iget-object v9, p0, Lcom/metamoji/un/video/dialog/VideoTrimmingDialog$Companion$executeTrimming$2;->$destination:Ljava/io/File;

    iget-boolean v10, p0, Lcom/metamoji/un/video/dialog/VideoTrimmingDialog$Companion$executeTrimming$2;->$repair:Z

    move-object v5, v2

    check-cast v5, Lcom/metamoji/un/video/dialog/VideoTrimmingDialog$VideoTrimmingDialogViewModel;

    invoke-virtual/range {v5 .. v10}, Lcom/metamoji/un/video/dialog/VideoTrimmingDialog$VideoTrimmingDialogViewModel;->prepare(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Z)V

    .line 131
    invoke-virtual {v0}, Lcom/metamoji/lib/dialog/task/UtImmortalSimpleTask;->getTaskName()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Lcom/metamoji/un/video/dialog/VideoTrimmingDialog$Companion$executeTrimming$2$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/metamoji/un/video/dialog/VideoTrimmingDialog$Companion$executeTrimming$2$$ExternalSyntheticLambda0;-><init>()V

    move-object v4, p0

    check-cast v4, Lkotlin/coroutines/Continuation;

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, p0, Lcom/metamoji/un/video/dialog/VideoTrimmingDialog$Companion$executeTrimming$2;->L$0:Ljava/lang/Object;

    iput v3, p0, Lcom/metamoji/un/video/dialog/VideoTrimmingDialog$Companion$executeTrimming$2;->label:I

    invoke-virtual {v0, p1, v2, v4}, Lcom/metamoji/lib/dialog/task/UtImmortalSimpleTask;->showDialog(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_2

    return-object v1

    :cond_2
    :goto_0
    check-cast p1, Lcom/metamoji/un/video/dialog/VideoTrimmingDialog;

    invoke-virtual {p1}, Lcom/metamoji/un/video/dialog/VideoTrimmingDialog;->getStatus()Lcom/metamoji/lib/dialog/IUtDialog$Status;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/lib/dialog/IUtDialog$Status;->getPositive()Z

    move-result p1

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
