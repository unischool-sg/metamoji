.class public final Lcom/metamoji/ui/task/ExportNoteTask$Companion;
.super Ljava/lang/Object;
.source "ExportNoteTask.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ui/task/ExportNoteTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0018\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u0005H\u0007R\u0010\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\t\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/metamoji/ui/task/ExportNoteTask$Companion;",
        "",
        "<init>",
        "()V",
        "TASK_NAME",
        "",
        "logger",
        "Lcom/metamoji/lib/utils/UtLog;",
        "getLogger",
        "()Lcom/metamoji/lib/utils/UtLog;",
        "exportNote",
        "",
        "editor",
        "Lcom/metamoji/nt/doceditor/NtDocumentEditorForQuickEdit;",
        "title",
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

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/ui/task/ExportNoteTask$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final exportNote(Lcom/metamoji/nt/doceditor/NtDocumentEditorForQuickEdit;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "editor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "title"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    new-instance v0, Lcom/metamoji/ui/task/ExportNoteTask;

    invoke-direct {v0, p1, p2}, Lcom/metamoji/ui/task/ExportNoteTask;-><init>(Lcom/metamoji/nt/doceditor/NtDocumentEditorForQuickEdit;Ljava/lang/String;)V

    check-cast v0, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase;

    const/4 p1, 0x0

    const/4 p2, 0x1

    invoke-static {v0, p1, p2, p1}, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase;->fire$default(Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase;Lkotlinx/coroutines/CoroutineScope;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final getLogger()Lcom/metamoji/lib/utils/UtLog;
    .locals 1

    .line 30
    invoke-static {}, Lcom/metamoji/ui/task/ExportNoteTask;->access$getLogger$cp()Lcom/metamoji/lib/utils/UtLog;

    move-result-object v0

    return-object v0
.end method
