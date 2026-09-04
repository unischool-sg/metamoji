.class public final Lcom/metamoji/ui/task/MessageBoxTask;
.super Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase;
.source "MessageBoxTask.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/ui/task/MessageBoxTask$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0018\u0000 \u000f2\u00020\u0001:\u0001\u000fB)\u0008\u0002\u0012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u000e\u0010\u000c\u001a\u00020\rH\u0094@\u00a2\u0006\u0002\u0010\u000eR\u001d\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/metamoji/ui/task/MessageBoxTask;",
        "Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase;",
        "parentContext",
        "Lcom/metamoji/lib/dialog/task/IUtImmortalTaskContext;",
        "createMessageBox",
        "Lkotlin/Function1;",
        "Lcom/metamoji/lib/dialog/UtDialogOwner;",
        "Lcom/metamoji/lib/dialog/IUtDialog;",
        "<init>",
        "(Lcom/metamoji/lib/dialog/task/IUtImmortalTaskContext;Lkotlin/jvm/functions/Function1;)V",
        "getCreateMessageBox",
        "()Lkotlin/jvm/functions/Function1;",
        "execute",
        "",
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
.field public static final Companion:Lcom/metamoji/ui/task/MessageBoxTask$Companion;

.field public static final TASK_NAME:Ljava/lang/String;


# instance fields
.field private final createMessageBox:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/metamoji/lib/dialog/UtDialogOwner;",
            "Lcom/metamoji/lib/dialog/IUtDialog;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/metamoji/ui/task/MessageBoxTask$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/ui/task/MessageBoxTask$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/metamoji/ui/task/MessageBoxTask;->Companion:Lcom/metamoji/ui/task/MessageBoxTask$Companion;

    .line 18
    const-class v0, Lcom/metamoji/ui/task/MessageBoxTask;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/metamoji/ui/task/MessageBoxTask;->TASK_NAME:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lcom/metamoji/lib/dialog/task/IUtImmortalTaskContext;Lkotlin/jvm/functions/Function1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/lib/dialog/task/IUtImmortalTaskContext;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/metamoji/lib/dialog/UtDialogOwner;",
            "+",
            "Lcom/metamoji/lib/dialog/IUtDialog;",
            ">;)V"
        }
    .end annotation

    .line 15
    sget-object v0, Lcom/metamoji/ui/task/MessageBoxTask;->TASK_NAME:Ljava/lang/String;

    const-string v1, "TASK_NAME"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Lcom/metamoji/lib/dialog/task/UtImmortalTaskBase;-><init>(Ljava/lang/String;Lcom/metamoji/lib/dialog/task/IUtImmortalTaskContext;Z)V

    .line 14
    iput-object p2, p0, Lcom/metamoji/ui/task/MessageBoxTask;->createMessageBox:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method synthetic constructor <init>(Lcom/metamoji/lib/dialog/task/IUtImmortalTaskContext;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const/4 p1, 0x0

    .line 14
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/metamoji/ui/task/MessageBoxTask;-><init>(Lcom/metamoji/lib/dialog/task/IUtImmortalTaskContext;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static final confirm(IIILkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/metamoji/ui/task/MessageBoxTask;->Companion:Lcom/metamoji/ui/task/MessageBoxTask$Companion;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/metamoji/ui/task/MessageBoxTask$Companion;->confirm(IIILkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public static final confirm(IILkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/metamoji/ui/task/MessageBoxTask;->Companion:Lcom/metamoji/ui/task/MessageBoxTask$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/metamoji/ui/task/MessageBoxTask$Companion;->confirm(IILkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public static final confirm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/metamoji/ui/task/MessageBoxTask;->Companion:Lcom/metamoji/ui/task/MessageBoxTask$Companion;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/metamoji/ui/task/MessageBoxTask$Companion;->confirm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public static final confirm(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/metamoji/ui/task/MessageBoxTask;->Companion:Lcom/metamoji/ui/task/MessageBoxTask$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/metamoji/ui/task/MessageBoxTask$Companion;->confirm(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public static final okCancel(IIIILkotlin/jvm/functions/Function1;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/metamoji/ui/task/MessageBoxTask;->Companion:Lcom/metamoji/ui/task/MessageBoxTask$Companion;

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/metamoji/ui/task/MessageBoxTask$Companion;->okCancel(IIIILkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static final okCancel(IIILkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/metamoji/ui/task/MessageBoxTask;->Companion:Lcom/metamoji/ui/task/MessageBoxTask$Companion;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/metamoji/ui/task/MessageBoxTask$Companion;->okCancel(IIILkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static final okCancel(IILkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/metamoji/ui/task/MessageBoxTask;->Companion:Lcom/metamoji/ui/task/MessageBoxTask$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/metamoji/ui/task/MessageBoxTask$Companion;->okCancel(IILkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static final okCancel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/metamoji/ui/task/MessageBoxTask;->Companion:Lcom/metamoji/ui/task/MessageBoxTask$Companion;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/metamoji/ui/task/MessageBoxTask$Companion;->okCancel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static final okCancel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/metamoji/ui/task/MessageBoxTask;->Companion:Lcom/metamoji/ui/task/MessageBoxTask$Companion;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/metamoji/ui/task/MessageBoxTask$Companion;->okCancel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static final okCancel(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/metamoji/ui/task/MessageBoxTask;->Companion:Lcom/metamoji/ui/task/MessageBoxTask$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/metamoji/ui/task/MessageBoxTask$Companion;->okCancel(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static final okCancelNotCancellable(IIIILkotlin/jvm/functions/Function1;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/metamoji/ui/task/MessageBoxTask;->Companion:Lcom/metamoji/ui/task/MessageBoxTask$Companion;

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/metamoji/ui/task/MessageBoxTask$Companion;->okCancelNotCancellable(IIIILkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static final okCancelNotCancellable(IIILkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/metamoji/ui/task/MessageBoxTask;->Companion:Lcom/metamoji/ui/task/MessageBoxTask$Companion;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/metamoji/ui/task/MessageBoxTask$Companion;->okCancelNotCancellable(IIILkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static final okCancelNotCancellable(IILkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/metamoji/ui/task/MessageBoxTask;->Companion:Lcom/metamoji/ui/task/MessageBoxTask$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/metamoji/ui/task/MessageBoxTask$Companion;->okCancelNotCancellable(IILkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static final okCancelNotCancellable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/metamoji/ui/task/MessageBoxTask;->Companion:Lcom/metamoji/ui/task/MessageBoxTask$Companion;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/metamoji/ui/task/MessageBoxTask$Companion;->okCancelNotCancellable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static final okCancelNotCancellable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/metamoji/ui/task/MessageBoxTask;->Companion:Lcom/metamoji/ui/task/MessageBoxTask$Companion;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/metamoji/ui/task/MessageBoxTask$Companion;->okCancelNotCancellable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static final okCancelNotCancellable(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/metamoji/ui/task/MessageBoxTask;->Companion:Lcom/metamoji/ui/task/MessageBoxTask$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/metamoji/ui/task/MessageBoxTask$Companion;->okCancelNotCancellable(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static final show(I)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/metamoji/ui/task/MessageBoxTask;->Companion:Lcom/metamoji/ui/task/MessageBoxTask$Companion;

    invoke-virtual {v0, p0}, Lcom/metamoji/ui/task/MessageBoxTask$Companion;->show(I)V

    return-void
.end method

.method public static final show(II)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/metamoji/ui/task/MessageBoxTask;->Companion:Lcom/metamoji/ui/task/MessageBoxTask$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/metamoji/ui/task/MessageBoxTask$Companion;->show(II)V

    return-void
.end method

.method public static final show(III)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/metamoji/ui/task/MessageBoxTask;->Companion:Lcom/metamoji/ui/task/MessageBoxTask$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/metamoji/ui/task/MessageBoxTask$Companion;->show(III)V

    return-void
.end method

.method public static final show(IIILcom/metamoji/lib/dialog/task/IUtImmortalTaskContext;)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/metamoji/ui/task/MessageBoxTask;->Companion:Lcom/metamoji/ui/task/MessageBoxTask$Companion;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/metamoji/ui/task/MessageBoxTask$Companion;->show(IIILcom/metamoji/lib/dialog/task/IUtImmortalTaskContext;)V

    return-void
.end method

.method public static final show(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/metamoji/ui/task/MessageBoxTask;->Companion:Lcom/metamoji/ui/task/MessageBoxTask$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/metamoji/ui/task/MessageBoxTask$Companion;->show(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final show(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/metamoji/ui/task/MessageBoxTask;->Companion:Lcom/metamoji/ui/task/MessageBoxTask$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/metamoji/ui/task/MessageBoxTask$Companion;->show(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final show(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/lib/dialog/task/IUtImmortalTaskContext;)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/metamoji/ui/task/MessageBoxTask;->Companion:Lcom/metamoji/ui/task/MessageBoxTask$Companion;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/metamoji/ui/task/MessageBoxTask$Companion;->show(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/lib/dialog/task/IUtImmortalTaskContext;)V

    return-void
.end method

.method public static final yesNo(IIIILkotlin/jvm/functions/Function1;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/metamoji/ui/task/MessageBoxTask;->Companion:Lcom/metamoji/ui/task/MessageBoxTask$Companion;

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/metamoji/ui/task/MessageBoxTask$Companion;->yesNo(IIIILkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static final yesNo(IIILkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/metamoji/ui/task/MessageBoxTask;->Companion:Lcom/metamoji/ui/task/MessageBoxTask$Companion;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/metamoji/ui/task/MessageBoxTask$Companion;->yesNo(IIILkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static final yesNo(IILkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/metamoji/ui/task/MessageBoxTask;->Companion:Lcom/metamoji/ui/task/MessageBoxTask$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/metamoji/ui/task/MessageBoxTask$Companion;->yesNo(IILkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static final yesNo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/metamoji/ui/task/MessageBoxTask;->Companion:Lcom/metamoji/ui/task/MessageBoxTask$Companion;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/metamoji/ui/task/MessageBoxTask$Companion;->yesNo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static final yesNo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/metamoji/ui/task/MessageBoxTask;->Companion:Lcom/metamoji/ui/task/MessageBoxTask$Companion;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/metamoji/ui/task/MessageBoxTask$Companion;->yesNo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static final yesNo(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/metamoji/ui/task/MessageBoxTask;->Companion:Lcom/metamoji/ui/task/MessageBoxTask$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/metamoji/ui/task/MessageBoxTask$Companion;->yesNo(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method


# virtual methods
.method protected execute(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
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

    instance-of v0, p1, Lcom/metamoji/ui/task/MessageBoxTask$execute$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/metamoji/ui/task/MessageBoxTask$execute$1;

    iget v1, v0, Lcom/metamoji/ui/task/MessageBoxTask$execute$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lcom/metamoji/ui/task/MessageBoxTask$execute$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lcom/metamoji/ui/task/MessageBoxTask$execute$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/metamoji/ui/task/MessageBoxTask$execute$1;

    invoke-direct {v0, p0, p1}, Lcom/metamoji/ui/task/MessageBoxTask$execute$1;-><init>(Lcom/metamoji/ui/task/MessageBoxTask;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/metamoji/ui/task/MessageBoxTask$execute$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 149
    iget v2, v0, Lcom/metamoji/ui/task/MessageBoxTask$execute$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 150
    iget-object p1, p0, Lcom/metamoji/ui/task/MessageBoxTask;->createMessageBox:Lkotlin/jvm/functions/Function1;

    iput v3, v0, Lcom/metamoji/ui/task/MessageBoxTask$execute$1;->label:I

    const-string v2, "TmMessageBoxTask"

    invoke-virtual {p0, v2, p1, v0}, Lcom/metamoji/ui/task/MessageBoxTask;->showDialog(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    .line 149
    :cond_3
    :goto_1
    check-cast p1, Lcom/metamoji/lib/dialog/IUtDialog;

    .line 151
    invoke-interface {p1}, Lcom/metamoji/lib/dialog/IUtDialog;->getStatus()Lcom/metamoji/lib/dialog/IUtDialog$Status;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/lib/dialog/IUtDialog$Status;->getPositive()Z

    move-result p1

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public final getCreateMessageBox()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/metamoji/lib/dialog/UtDialogOwner;",
            "Lcom/metamoji/lib/dialog/IUtDialog;",
            ">;"
        }
    .end annotation

    .line 14
    iget-object v0, p0, Lcom/metamoji/ui/task/MessageBoxTask;->createMessageBox:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method
