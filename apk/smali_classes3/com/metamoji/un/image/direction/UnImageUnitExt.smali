.class public final Lcom/metamoji/un/image/direction/UnImageUnitExt;
.super Ljava/lang/Object;
.source "UnImageUnitExt.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUnImageUnitExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UnImageUnitExt.kt\ncom/metamoji/un/image/direction/UnImageUnitExt\n+ 2 UnVideoUnitContainerExtender.kt\ncom/metamoji/un/video/UnVideoUnitContainerExtender$Companion\n+ 3 UtImmortalTaskDef.kt\ncom/metamoji/lib/dialog/task/UtImmortalTaskDefKt\n*L\n1#1,131:1\n40#2:132\n41#2,6:134\n41#3:133\n41#3:140\n*S KotlinDebug\n*F\n+ 1 UnImageUnitExt.kt\ncom/metamoji/un/image/direction/UnImageUnitExt\n*L\n26#1:132\n26#1:134,6\n26#1:133\n29#1:140\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J0\u0010\u0004\u001a\u0002H\u0005\"\u0004\u0008\u0000\u0010\u00052\u0006\u0010\u0006\u001a\u0002H\u00052\u0012\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u0002H\u00050\u0008H\u0082H\u00a2\u0006\u0002\u0010\nJ0\u0010\u000b\u001a\u0002H\u0005\"\u0004\u0008\u0000\u0010\u00052\u0006\u0010\u0006\u001a\u0002H\u00052\u0012\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u0002H\u00050\u0008H\u0082H\u00a2\u0006\u0002\u0010\nJ\u0010\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0007J\u0010\u0010\u0011\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0007J\u0008\u0010\u0012\u001a\u00020\u000eH\u0007J\u0008\u0010\u0013\u001a\u00020\u000eH\u0007\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/metamoji/un/image/direction/UnImageUnitExt;",
        "",
        "<init>",
        "()V",
        "withEditorActivity",
        "T",
        "def",
        "fn",
        "Lkotlin/Function1;",
        "Lcom/metamoji/noteanytime/EditorActivity;",
        "(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "withMainActivity",
        "Lcom/metamoji/noteanytime/MainActivity;",
        "addImageFromCamera",
        "",
        "document",
        "Lcom/metamoji/nt/NtDocument;",
        "addImageUnitFromAlbum",
        "importImageFromCamera",
        "importImageFromAlbum",
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


# static fields
.field public static final INSTANCE:Lcom/metamoji/un/image/direction/UnImageUnitExt;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/metamoji/un/image/direction/UnImageUnitExt;

    invoke-direct {v0}, Lcom/metamoji/un/image/direction/UnImageUnitExt;-><init>()V

    sput-object v0, Lcom/metamoji/un/image/direction/UnImageUnitExt;->INSTANCE:Lcom/metamoji/un/image/direction/UnImageUnitExt;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final addImageFromCamera(Lcom/metamoji/nt/NtDocument;)V
    .locals 7
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "document"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-virtual {p0}, Lcom/metamoji/nt/NtDocument;->getDocumentScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance p0, Lcom/metamoji/un/image/direction/UnImageUnitExt$addImageFromCamera$1;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/metamoji/un/image/direction/UnImageUnitExt$addImageFromCamera$1;-><init>(Lkotlin/coroutines/Continuation;)V

    move-object v4, p0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    :cond_0
    return-void
.end method

.method public static final addImageUnitFromAlbum(Lcom/metamoji/nt/NtDocument;)V
    .locals 7
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "document"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    invoke-virtual {p0}, Lcom/metamoji/nt/NtDocument;->getDocumentScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance p0, Lcom/metamoji/un/image/direction/UnImageUnitExt$addImageUnitFromAlbum$1;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/metamoji/un/image/direction/UnImageUnitExt$addImageUnitFromAlbum$1;-><init>(Lkotlin/coroutines/Continuation;)V

    move-object v4, p0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    :cond_0
    return-void
.end method

.method public static final importImageFromAlbum()V
    .locals 7
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 119
    sget-object v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager;->INSTANCE:Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager;

    invoke-virtual {v0}, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager;->getImmortalTaskScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v0, Lcom/metamoji/un/image/direction/UnImageUnitExt$importImageFromAlbum$1;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/metamoji/un/image/direction/UnImageUnitExt$importImageFromAlbum$1;-><init>(Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public static final importImageFromCamera()V
    .locals 7
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 92
    sget-object v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager;->INSTANCE:Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager;

    invoke-virtual {v0}, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager;->getImmortalTaskScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v0, Lcom/metamoji/un/image/direction/UnImageUnitExt$importImageFromCamera$1;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/metamoji/un/image/direction/UnImageUnitExt$importImageFromCamera$1;-><init>(Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method private final withEditorActivity(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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

    .line 26
    sget-object v0, Lcom/metamoji/un/video/UnVideoUnitContainerExtender;->Companion:Lcom/metamoji/un/video/UnVideoUnitContainerExtender$Companion;

    .line 132
    sget-object v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager;->INSTANCE:Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager;

    invoke-virtual {v0}, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager;->getMortalInstanceSource()Lcom/metamoji/lib/dialog/task/IUiMortalInstanceSource;

    move-result-object v0

    .line 133
    invoke-interface {v0, p3}, Lcom/metamoji/lib/dialog/task/IUiMortalInstanceSource;->getOwner(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/metamoji/lib/dialog/UtDialogOwner;

    .line 134
    invoke-virtual {p3}, Lcom/metamoji/lib/dialog/UtDialogOwner;->asActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    .line 135
    instance-of v0, p3, Lcom/metamoji/noteanytime/EditorActivity;

    if-eqz v0, :cond_0

    .line 136
    invoke-interface {p2, p3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method private final withMainActivity(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/metamoji/noteanytime/MainActivity;",
            "+TT;>;",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 29
    sget-object v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager;->INSTANCE:Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager;

    invoke-virtual {v0}, Lcom/metamoji/lib/dialog/task/UtImmortalTaskManager;->getMortalInstanceSource()Lcom/metamoji/lib/dialog/task/IUiMortalInstanceSource;

    move-result-object v0

    .line 140
    invoke-interface {v0, p3}, Lcom/metamoji/lib/dialog/task/IUiMortalInstanceSource;->getOwner(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/metamoji/lib/dialog/UtDialogOwner;

    .line 30
    invoke-virtual {p3}, Lcom/metamoji/lib/dialog/UtDialogOwner;->asActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    .line 31
    instance-of v0, p3, Lcom/metamoji/noteanytime/MainActivity;

    if-eqz v0, :cond_0

    .line 32
    invoke-interface {p2, p3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :cond_0
    return-object p1
.end method
