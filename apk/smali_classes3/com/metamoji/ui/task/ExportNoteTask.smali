.class public final Lcom/metamoji/ui/task/ExportNoteTask;
.super Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase;
.source "ExportNoteTask.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/ui/task/ExportNoteTask$Companion;,
        Lcom/metamoji/ui/task/ExportNoteTask$SaveStatus;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u0000 \u00172\u00020\u0001:\u0002\u0017\u0018B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u000e\u0010\u000c\u001a\u00020\rH\u0094@\u00a2\u0006\u0002\u0010\u000eJ\u001e\u0010\u0012\u001a\u00020\r2\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\rH\u0082@\u00a2\u0006\u0002\u0010\u0016R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0011\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/metamoji/ui/task/ExportNoteTask;",
        "Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase;",
        "editor",
        "Lcom/metamoji/nt/doceditor/NtDocumentEditorForQuickEdit;",
        "title",
        "",
        "<init>",
        "(Lcom/metamoji/nt/doceditor/NtDocumentEditorForQuickEdit;Ljava/lang/String;)V",
        "getEditor",
        "()Lcom/metamoji/nt/doceditor/NtDocumentEditorForQuickEdit;",
        "getTitle",
        "()Ljava/lang/String;",
        "execute",
        "",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "saveStatus",
        "Lcom/metamoji/ui/task/ExportNoteTask$SaveStatus;",
        "errorMessage",
        "exportTo",
        "uri",
        "Landroid/net/Uri;",
        "isCollabo",
        "(Landroid/net/Uri;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "Companion",
        "SaveStatus",
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
.field public static final Companion:Lcom/metamoji/ui/task/ExportNoteTask$Companion;

.field public static final TASK_NAME:Ljava/lang/String;

.field private static final logger:Lcom/metamoji/lib/utils/UtLog;


# instance fields
.field private final editor:Lcom/metamoji/nt/doceditor/NtDocumentEditorForQuickEdit;

.field private errorMessage:Ljava/lang/String;

.field private saveStatus:Lcom/metamoji/ui/task/ExportNoteTask$SaveStatus;

.field private final title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/metamoji/ui/task/ExportNoteTask$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/ui/task/ExportNoteTask$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/metamoji/ui/task/ExportNoteTask;->Companion:Lcom/metamoji/ui/task/ExportNoteTask$Companion;

    .line 29
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getName(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/metamoji/ui/task/ExportNoteTask;->TASK_NAME:Ljava/lang/String;

    .line 30
    sget-object v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase;->Companion:Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase$Companion;

    invoke-virtual {v0}, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase$Companion;->getLogger()Lcom/metamoji/lib/utils/UtLog;

    move-result-object v0

    sput-object v0, Lcom/metamoji/ui/task/ExportNoteTask;->logger:Lcom/metamoji/lib/utils/UtLog;

    return-void
.end method

.method public constructor <init>(Lcom/metamoji/nt/doceditor/NtDocumentEditorForQuickEdit;Ljava/lang/String;)V
    .locals 7

    const-string v0, "editor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "title"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    sget-object v2, Lcom/metamoji/ui/task/ExportNoteTask;->TASK_NAME:Ljava/lang/String;

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase;-><init>(Ljava/lang/String;Lcom/metamoji/lib/dialog/task/IUtImmortalTaskContext;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 25
    iput-object p1, v1, Lcom/metamoji/ui/task/ExportNoteTask;->editor:Lcom/metamoji/nt/doceditor/NtDocumentEditorForQuickEdit;

    .line 26
    iput-object p2, v1, Lcom/metamoji/ui/task/ExportNoteTask;->title:Ljava/lang/String;

    .line 63
    sget-object p1, Lcom/metamoji/ui/task/ExportNoteTask$SaveStatus;->OK:Lcom/metamoji/ui/task/ExportNoteTask$SaveStatus;

    iput-object p1, v1, Lcom/metamoji/ui/task/ExportNoteTask;->saveStatus:Lcom/metamoji/ui/task/ExportNoteTask$SaveStatus;

    return-void
.end method

.method public static final synthetic access$exportTo(Lcom/metamoji/ui/task/ExportNoteTask;Landroid/net/Uri;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2, p3}, Lcom/metamoji/ui/task/ExportNoteTask;->exportTo(Landroid/net/Uri;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getLogger$cp()Lcom/metamoji/lib/utils/UtLog;
    .locals 1

    .line 24
    sget-object v0, Lcom/metamoji/ui/task/ExportNoteTask;->logger:Lcom/metamoji/lib/utils/UtLog;

    return-object v0
.end method

.method public static final synthetic access$setErrorMessage$p(Lcom/metamoji/ui/task/ExportNoteTask;Ljava/lang/String;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/metamoji/ui/task/ExportNoteTask;->errorMessage:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$setSaveStatus$p(Lcom/metamoji/ui/task/ExportNoteTask;Lcom/metamoji/ui/task/ExportNoteTask$SaveStatus;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/metamoji/ui/task/ExportNoteTask;->saveStatus:Lcom/metamoji/ui/task/ExportNoteTask$SaveStatus;

    return-void
.end method

.method static final execute$lambda$0(Lcom/metamoji/ui/task/ExportNoteTask;)Ljava/lang/String;
    .locals 2

    .line 49
    iget-object v0, p0, Lcom/metamoji/ui/task/ExportNoteTask;->saveStatus:Lcom/metamoji/ui/task/ExportNoteTask$SaveStatus;

    sget-object v1, Lcom/metamoji/ui/task/ExportNoteTask$SaveStatus;->CANCEL:Lcom/metamoji/ui/task/ExportNoteTask$SaveStatus;

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ui/task/ExportNoteTask;->errorMessage:Ljava/lang/String;

    check-cast v0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/metamoji/ui/task/ExportNoteTask;->errorMessage:Ljava/lang/String;

    return-object p0

    .line 51
    :cond_2
    :goto_0
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sget-object v0, Lcom/metamoji/ui/task/ISaveFileSource$Default;->INSTANCE:Lcom/metamoji/ui/task/ISaveFileSource$Default;

    invoke-virtual {v0}, Lcom/metamoji/ui/task/ISaveFileSource$Default;->getNegativeMessageId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final exportNote(Lcom/metamoji/nt/doceditor/NtDocumentEditorForQuickEdit;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/metamoji/ui/task/ExportNoteTask;->Companion:Lcom/metamoji/ui/task/ExportNoteTask$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/metamoji/ui/task/ExportNoteTask$Companion;->exportNote(Lcom/metamoji/nt/doceditor/NtDocumentEditorForQuickEdit;Ljava/lang/String;)V

    return-void
.end method

.method private final exportTo(Landroid/net/Uri;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Z",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 124
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/metamoji/ui/task/ExportNoteTask$exportTo$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Lcom/metamoji/ui/task/ExportNoteTask$exportTo$2;-><init>(Lcom/metamoji/ui/task/ExportNoteTask;Landroid/net/Uri;ZLkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p3}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method protected execute(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lcom/metamoji/ui/task/ExportNoteTask;->editor:Lcom/metamoji/nt/doceditor/NtDocumentEditorForQuickEdit;

    invoke-virtual {v0}, Lcom/metamoji/nt/doceditor/NtDocumentEditorForQuickEdit;->isCollabo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    const-string v1, ".btshare"

    goto :goto_0

    :cond_0
    const-string v1, ".atdoc"

    :goto_0
    move-object v5, v1

    .line 41
    invoke-static {v5}, Lcom/metamoji/noteanytime/cm/CmMimeType;->getMimeTypeByExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 42
    new-instance v1, Lcom/metamoji/ui/task/DynamicStreamSource$Builder;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2, v3}, Lcom/metamoji/ui/task/DynamicStreamSource$Builder;-><init>(Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 43
    new-instance v2, Lcom/metamoji/ui/task/ExportNoteTask$execute$source$1;

    invoke-direct {v2, p0, v0, v3}, Lcom/metamoji/ui/task/ExportNoteTask$execute$source$1;-><init>(Lcom/metamoji/ui/task/ExportNoteTask;ZLkotlin/coroutines/Continuation;)V

    check-cast v2, Lkotlin/jvm/functions/Function2;

    invoke-virtual {v1, v2}, Lcom/metamoji/ui/task/DynamicStreamSource$Builder;->saveTo(Lkotlin/jvm/functions/Function2;)Lcom/metamoji/ui/task/DynamicStreamSource$Builder;

    move-result-object v0

    .line 46
    invoke-virtual {v0}, Lcom/metamoji/ui/task/DynamicStreamSource$Builder;->defaultMessages()Lcom/metamoji/ui/task/DynamicStreamSource$Builder;

    move-result-object v0

    .line 47
    new-instance v1, Lcom/metamoji/ui/task/ExportNoteTask$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/metamoji/ui/task/ExportNoteTask$$ExternalSyntheticLambda0;-><init>(Lcom/metamoji/ui/task/ExportNoteTask;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/task/DynamicStreamSource$Builder;->negativeMessage(Lkotlin/jvm/functions/Function0;)Lcom/metamoji/ui/task/DynamicStreamSource$Builder;

    move-result-object v0

    .line 54
    invoke-virtual {v0}, Lcom/metamoji/ui/task/DynamicStreamSource$Builder;->build()Lcom/metamoji/ui/task/DynamicStreamSource;

    move-result-object v0

    .line 55
    new-instance v2, Lcom/metamoji/ui/task/SaveTypedFileTask;

    move-object v3, v0

    check-cast v3, Lcom/metamoji/ui/task/ISaveFileSource;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/metamoji/ui/task/ExportNoteTask;->title:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/16 v9, 0x20

    const/4 v10, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct/range {v2 .. v10}, Lcom/metamoji/ui/task/SaveTypedFileTask;-><init>(Lcom/metamoji/ui/task/ISaveFileSource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v2, p1}, Lcom/metamoji/ui/task/SaveTypedFileTask;->fireAsync(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getEditor()Lcom/metamoji/nt/doceditor/NtDocumentEditorForQuickEdit;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/metamoji/ui/task/ExportNoteTask;->editor:Lcom/metamoji/nt/doceditor/NtDocumentEditorForQuickEdit;

    return-object v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/metamoji/ui/task/ExportNoteTask;->title:Ljava/lang/String;

    return-object v0
.end method
