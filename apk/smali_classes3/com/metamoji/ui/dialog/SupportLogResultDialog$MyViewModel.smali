.class public final Lcom/metamoji/ui/dialog/SupportLogResultDialog$MyViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "SupportLogResultDialog.kt"

# interfaces
.implements Lcom/metamoji/lib/dialog/task/IUtImmortalTaskMutableContextSource;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ui/dialog/SupportLogResultDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MyViewModel"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/ui/dialog/SupportLogResultDialog$MyViewModel$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u0000 \u00192\u00020\u00012\u00020\u0002:\u0001\u0019B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004R\u001a\u0010\u0005\u001a\u00020\u0006X\u0096.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\u001a\u0010\u000b\u001a\u00020\u000cX\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R\u001a\u0010\u0011\u001a\u00020\u0012X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016R\u0011\u0010\u0017\u001a\u00020\u000c8F\u00a2\u0006\u0006\u001a\u0004\u0008\u0018\u0010\u000e\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/metamoji/ui/dialog/SupportLogResultDialog$MyViewModel;",
        "Landroidx/lifecycle/ViewModel;",
        "Lcom/metamoji/lib/dialog/task/IUtImmortalTaskMutableContextSource;",
        "<init>",
        "()V",
        "immortalTaskContext",
        "Lcom/metamoji/lib/dialog/task/IUtImmortalTaskContext;",
        "getImmortalTaskContext",
        "()Lcom/metamoji/lib/dialog/task/IUtImmortalTaskContext;",
        "setImmortalTaskContext",
        "(Lcom/metamoji/lib/dialog/task/IUtImmortalTaskContext;)V",
        "id",
        "",
        "getId",
        "()Ljava/lang/String;",
        "setId",
        "(Ljava/lang/String;)V",
        "date",
        "Ljava/time/ZonedDateTime;",
        "getDate",
        "()Ljava/time/ZonedDateTime;",
        "setDate",
        "(Ljava/time/ZonedDateTime;)V",
        "formattedDate",
        "getFormattedDate",
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
.field public static final Companion:Lcom/metamoji/ui/dialog/SupportLogResultDialog$MyViewModel$Companion;


# instance fields
.field public date:Ljava/time/ZonedDateTime;

.field public id:Ljava/lang/String;

.field public immortalTaskContext:Lcom/metamoji/lib/dialog/task/IUtImmortalTaskContext;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/metamoji/ui/dialog/SupportLogResultDialog$MyViewModel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/ui/dialog/SupportLogResultDialog$MyViewModel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/metamoji/ui/dialog/SupportLogResultDialog$MyViewModel;->Companion:Lcom/metamoji/ui/dialog/SupportLogResultDialog$MyViewModel$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    return-void
.end method


# virtual methods
.method public final getDate()Ljava/time/ZonedDateTime;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/metamoji/ui/dialog/SupportLogResultDialog$MyViewModel;->date:Ljava/time/ZonedDateTime;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "date"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getFormattedDate()Ljava/lang/String;
    .locals 2

    .line 38
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/SupportLogResultDialog$MyViewModel;->getDate()Ljava/time/ZonedDateTime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Date;->from(Ljava/time/Instant;)Ljava/util/Date;

    move-result-object v0

    const/4 v1, 0x3

    .line 39
    invoke-static {v1, v1}, Ljava/text/DateFormat;->getDateTimeInstance(II)Ljava/text/DateFormat;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "format(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/metamoji/ui/dialog/SupportLogResultDialog$MyViewModel;->id:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "id"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getImmortalCoroutineScope()Lkotlinx/coroutines/CoroutineScope;
    .locals 1

    .line 20
    invoke-super {p0}, Lcom/metamoji/lib/dialog/task/IUtImmortalTaskMutableContextSource;->getImmortalCoroutineScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    return-object v0
.end method

.method public getImmortalTaskContext()Lcom/metamoji/lib/dialog/task/IUtImmortalTaskContext;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/metamoji/ui/dialog/SupportLogResultDialog$MyViewModel;->immortalTaskContext:Lcom/metamoji/lib/dialog/task/IUtImmortalTaskContext;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "immortalTaskContext"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final setDate(Ljava/time/ZonedDateTime;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    iput-object p1, p0, Lcom/metamoji/ui/dialog/SupportLogResultDialog$MyViewModel;->date:Ljava/time/ZonedDateTime;

    return-void
.end method

.method public final setId(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    iput-object p1, p0, Lcom/metamoji/ui/dialog/SupportLogResultDialog$MyViewModel;->id:Ljava/lang/String;

    return-void
.end method

.method public setImmortalTaskContext(Lcom/metamoji/lib/dialog/task/IUtImmortalTaskContext;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    iput-object p1, p0, Lcom/metamoji/ui/dialog/SupportLogResultDialog$MyViewModel;->immortalTaskContext:Lcom/metamoji/lib/dialog/task/IUtImmortalTaskContext;

    return-void
.end method
