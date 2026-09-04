.class public final Lcom/metamoji/nt/NtShortcut;
.super Ljava/lang/Object;
.source "NtShortcut.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/nt/NtShortcut$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u0000 \u00182\u00020\u0001:\u0001\u0018B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0014\u0010\u0004\u001a\u00020\u00052\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007J\u0014\u0010\t\u001a\u00020\n2\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007J \u0010\u000b\u001a\u00020\u00052\u0008\u0010\u000c\u001a\u0004\u0018\u00010\r2\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007H\u0002J&\u0010\u000e\u001a\u00020\u00052\u0006\u0010\u000c\u001a\u00020\u000f2\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00072\u0006\u0010\u0010\u001a\u00020\nH\u0002J\u0008\u0010\u0011\u001a\u00020\u0005H\u0002J\u0016\u0010\u0012\u001a\u00020\u00052\u0006\u0010\u0013\u001a\u00020\u0014H\u0082@\u00a2\u0006\u0002\u0010\u0015J\u000e\u0010\u0016\u001a\u00020\u0014H\u0082@\u00a2\u0006\u0002\u0010\u0017\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/metamoji/nt/NtShortcut;",
        "",
        "<init>",
        "()V",
        "handleRequest",
        "",
        "request",
        "Lcom/metamoji/cm/SharedReference;",
        "Lcom/metamoji/nt/INtRequestUri;",
        "handleRequestOnLoginPage",
        "",
        "handleRequestMMJLoc",
        "uri",
        "",
        "handleRequestSSO",
        "Landroid/net/Uri;",
        "onLoginPage",
        "showInvalidUrlMessage",
        "savePausingDocument",
        "activity",
        "Landroidx/fragment/app/FragmentActivity;",
        "(Landroidx/fragment/app/FragmentActivity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "requireActivity",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "Companion",
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
.field public static final CATEGORY_MMJLOC:Ljava/lang/String; = "mmjloc"

.field public static final CATEGORY_SSO:Ljava/lang/String; = "sso"

.field public static final Companion:Lcom/metamoji/nt/NtShortcut$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/metamoji/nt/NtShortcut$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/nt/NtShortcut$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/metamoji/nt/NtShortcut;->Companion:Lcom/metamoji/nt/NtShortcut$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$requireActivity(Lcom/metamoji/nt/NtShortcut;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/metamoji/nt/NtShortcut;->requireActivity(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$savePausingDocument(Lcom/metamoji/nt/NtShortcut;Landroidx/fragment/app/FragmentActivity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/metamoji/nt/NtShortcut;->savePausingDocument(Landroidx/fragment/app/FragmentActivity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$showInvalidUrlMessage(Lcom/metamoji/nt/NtShortcut;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/metamoji/nt/NtShortcut;->showInvalidUrlMessage()V

    return-void
.end method

.method private final handleRequestMMJLoc(Ljava/lang/String;Lcom/metamoji/cm/SharedReference;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/metamoji/cm/SharedReference<",
            "Lcom/metamoji/nt/INtRequestUri;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 83
    :cond_0
    invoke-virtual {p2}, Lcom/metamoji/cm/SharedReference;->newRef()Lcom/metamoji/cm/SharedReference;

    move-result-object p2

    .line 84
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getDefault()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v0, Lcom/metamoji/nt/NtShortcut$handleRequestMMJLoc$1;

    const/4 v2, 0x0

    invoke-direct {v0, p2, p1, p0, v2}, Lcom/metamoji/nt/NtShortcut$handleRequestMMJLoc$1;-><init>(Lcom/metamoji/cm/SharedReference;Ljava/lang/String;Lcom/metamoji/nt/NtShortcut;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method private final handleRequestSSO(Landroid/net/Uri;Lcom/metamoji/cm/SharedReference;Z)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Lcom/metamoji/cm/SharedReference<",
            "Lcom/metamoji/nt/INtRequestUri;",
            ">;Z)V"
        }
    .end annotation

    .line 118
    move-object v1, p2

    check-cast v1, Ljava/io/Closeable;

    :try_start_0
    move-object v0, v1

    check-cast v0, Lcom/metamoji/cm/SharedReference;

    .line 119
    const-string v0, "param1"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-static {v1, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-void

    .line 120
    :cond_0
    :try_start_1
    const-string v3, "param2"

    invoke-virtual {p1, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v3, :cond_1

    invoke-static {v1, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-void

    .line 121
    :cond_1
    :try_start_2
    const-string v4, "param3"

    invoke-virtual {p1, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez p1, :cond_2

    invoke-static {v1, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-void

    .line 124
    :cond_2
    :try_start_3
    invoke-static {p1}, Lcom/metamoji/cm/EncryptUtil;->decryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v4, :cond_3

    invoke-static {v1, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-void

    :cond_3
    if-eqz p3, :cond_4

    .line 127
    :try_start_4
    sget-object v5, Lcom/metamoji/lib/dialog/task/UtImmortalSimpleTask;->Companion:Lcom/metamoji/lib/dialog/task/UtImmortalSimpleTask$Companion;

    new-instance p2, Lcom/metamoji/nt/NtShortcut$handleRequestSSO$1$1;

    invoke-direct {p2, v0, v3, p1, v2}, Lcom/metamoji/nt/NtShortcut$handleRequestSSO$1$1;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    move-object v8, p2

    check-cast v8, Lkotlin/jvm/functions/Function2;

    const/4 v9, 0x3

    const/4 v10, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v5 .. v10}, Lcom/metamoji/lib/dialog/task/UtImmortalSimpleTask$Companion;->run$default(Lcom/metamoji/lib/dialog/task/UtImmortalSimpleTask$Companion;Ljava/lang/String;Lkotlinx/coroutines/CoroutineScope;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    goto :goto_0

    .line 140
    :cond_4
    invoke-static {}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getInstanceFromSystemSettings()Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;

    move-result-object p1

    .line 141
    invoke-virtual {p1}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getUserInfo()Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    move-result-object p1

    .line 142
    iget-object p1, p1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->userId:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    .line 145
    invoke-virtual {p2}, Lcom/metamoji/cm/SharedReference;->get()Ljava/lang/AutoCloseable;

    move-result-object p3

    check-cast p3, Lcom/metamoji/nt/INtRequestUri;

    invoke-interface {p3}, Lcom/metamoji/nt/INtRequestUri;->finishActivity()Z

    move-result p3

    if-nez p3, :cond_5

    .line 146
    invoke-virtual {p2}, Lcom/metamoji/cm/SharedReference;->get()Ljava/lang/AutoCloseable;

    move-result-object p2

    check-cast p2, Lcom/metamoji/nt/INtRequestUri;

    invoke-interface {p2}, Lcom/metamoji/nt/INtRequestUri;->callStartupActivity()V

    :cond_5
    if-eqz p1, :cond_6

    .line 148
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_0

    .line 152
    :cond_6
    sget-object v3, Lcom/metamoji/lib/dialog/task/UtImmortalSimpleTask;->Companion:Lcom/metamoji/lib/dialog/task/UtImmortalSimpleTask$Companion;

    new-instance p1, Lcom/metamoji/nt/NtShortcut$handleRequestSSO$1$2;

    invoke-direct {p1, v2}, Lcom/metamoji/nt/NtShortcut$handleRequestSSO$1$2;-><init>(Lkotlin/coroutines/Continuation;)V

    move-object v6, p1

    check-cast v6, Lkotlin/jvm/functions/Function2;

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v3 .. v8}, Lcom/metamoji/lib/dialog/task/UtImmortalSimpleTask$Companion;->run$default(Lcom/metamoji/lib/dialog/task/UtImmortalSimpleTask$Companion;Ljava/lang/String;Lkotlinx/coroutines/CoroutineScope;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 118
    :goto_0
    invoke-static {v1, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-void

    :catchall_0
    move-exception v0

    move-object p1, v0

    :try_start_5
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v0

    move-object p2, v0

    invoke-static {v1, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p2
.end method

.method private final requireActivity(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroidx/fragment/app/FragmentActivity;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 187
    new-instance v0, Lkotlin/coroutines/SafeContinuation;

    invoke-static {p1}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v1

    invoke-direct {v0, v1}, Lkotlin/coroutines/SafeContinuation;-><init>(Lkotlin/coroutines/Continuation;)V

    move-object v1, v0

    check-cast v1, Lkotlin/coroutines/Continuation;

    .line 188
    invoke-static {}, Lcom/metamoji/ui/UiCurrentActivityManager;->getInstance()Lcom/metamoji/ui/UiCurrentActivityManager;

    move-result-object v2

    new-instance v3, Lcom/metamoji/nt/NtShortcut$requireActivity$2$1;

    invoke-direct {v3, v1}, Lcom/metamoji/nt/NtShortcut$requireActivity$2$1;-><init>(Lkotlin/coroutines/Continuation;)V

    check-cast v3, Lcom/metamoji/ui/UiCurrentActivityManager$ICallWithActivity;

    invoke-virtual {v2, v3}, Lcom/metamoji/ui/UiCurrentActivityManager;->runWithActivity(Lcom/metamoji/ui/UiCurrentActivityManager$ICallWithActivity;)V

    .line 187
    invoke-virtual {v0}, Lkotlin/coroutines/SafeContinuation;->getOrThrow()Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_0
    return-object v0
.end method

.method private final savePausingDocument(Landroidx/fragment/app/FragmentActivity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentActivity;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 176
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 177
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 178
    :cond_1
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    const-string v1, "getInstance(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/metamoji/nt/NtShortcut$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/metamoji/nt/NtShortcut$$ExternalSyntheticLambda0;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    invoke-static {v0, v1, p2}, Lcom/metamoji/cm/CmTaskManagerKotlinKt;->ensureRunOnBackgroundSuspend(Lcom/metamoji/cm/CmTaskManager;Ljava/lang/Runnable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_2

    return-object p1

    :cond_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method static final savePausingDocument$lambda$2(Landroidx/fragment/app/FragmentActivity;)V
    .locals 1

    .line 179
    invoke-static {p0}, Lcom/metamoji/nt/doceditor/NtDocumentEditor;->restoreCurrentEditing(Landroidx/fragment/app/FragmentActivity;)Lcom/metamoji/nt/doceditor/NtDocumentEditor;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 181
    const-string v0, "NtShortcut: pausing document will be closed."

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    .line 182
    invoke-static {p0}, Lcom/metamoji/nt/NtEditorWindowController;->closeLastEditingDocument(Lcom/metamoji/nt/doceditor/NtDocumentEditor;)V

    :cond_0
    return-void
.end method

.method private final showInvalidUrlMessage()V
    .locals 3

    .line 170
    sget v0, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_SCHOOL_OPENURLDLG_ERROR_INVALID_URL:I

    sget v1, Lcom/metamoji/noteanytime/R$string;->app_name:I

    .line 171
    new-instance v2, Lcom/metamoji/nt/NtShortcut$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lcom/metamoji/nt/NtShortcut$$ExternalSyntheticLambda1;-><init>()V

    .line 170
    invoke-static {v0, v1, v2}, Lcom/metamoji/cm/CmUtils;->confirmDialog(IILandroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method static final showInvalidUrlMessage$lambda$1(Landroid/content/DialogInterface;I)V
    .locals 0

    return-void
.end method


# virtual methods
.method public final handleRequest(Lcom/metamoji/cm/SharedReference;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/cm/SharedReference<",
            "Lcom/metamoji/nt/INtRequestUri;",
            ">;)V"
        }
    .end annotation

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    invoke-virtual {p1}, Lcom/metamoji/cm/SharedReference;->get()Ljava/lang/AutoCloseable;

    move-result-object v0

    check-cast v0, Lcom/metamoji/nt/INtRequestUri;

    invoke-interface {v0}, Lcom/metamoji/nt/INtRequestUri;->getUri()Landroid/net/Uri;

    move-result-object v0

    .line 52
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "NtShortcut handleRequest:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    .line 53
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/metamoji/nt/NtUrlScheme;->getUrlScheme()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 57
    :cond_0
    invoke-virtual {v0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    .line 58
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 59
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 60
    const-string v3, "mmjloc"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string/jumbo v1, "uri"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/metamoji/nt/NtShortcut;->handleRequestMMJLoc(Ljava/lang/String;Lcom/metamoji/cm/SharedReference;)V

    return-void

    .line 61
    :cond_2
    const-string/jumbo v3, "sso"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0, v0, p1, v2}, Lcom/metamoji/nt/NtShortcut;->handleRequestSSO(Landroid/net/Uri;Lcom/metamoji/cm/SharedReference;Z)V

    :cond_3
    :goto_0
    return-void
.end method

.method public final handleRequestOnLoginPage(Lcom/metamoji/cm/SharedReference;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/cm/SharedReference<",
            "Lcom/metamoji/nt/INtRequestUri;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    invoke-virtual {p1}, Lcom/metamoji/cm/SharedReference;->get()Ljava/lang/AutoCloseable;

    move-result-object v0

    check-cast v0, Lcom/metamoji/nt/INtRequestUri;

    invoke-interface {v0}, Lcom/metamoji/nt/INtRequestUri;->getUri()Landroid/net/Uri;

    move-result-object v0

    .line 67
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "NtShortcut handleRequestOnLoginPage:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    .line 68
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/metamoji/nt/NtUrlScheme;->getUrlScheme()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 72
    :cond_0
    invoke-virtual {v0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    .line 73
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    return v2

    .line 74
    :cond_1
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 75
    const-string/jumbo v3, "sso"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Lcom/metamoji/nt/NtShortcut;->handleRequestSSO(Landroid/net/Uri;Lcom/metamoji/cm/SharedReference;Z)V

    return v1

    :cond_2
    return v2
.end method
