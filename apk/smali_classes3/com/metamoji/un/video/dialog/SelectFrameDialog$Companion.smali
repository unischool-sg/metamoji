.class public final Lcom/metamoji/un/video/dialog/SelectFrameDialog$Companion;
.super Ljava/lang/Object;
.source "SelectFrameDialog.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/un/video/dialog/SelectFrameDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0006\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J \u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u00052\u0006\u0010\u000c\u001a\u00020\rH\u0007R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/metamoji/un/video/dialog/SelectFrameDialog$Companion;",
        "",
        "<init>",
        "()V",
        "KEY_TICKET",
        "",
        "KEY_INITIAL_POSITION",
        "newInstance",
        "Lcom/metamoji/un/video/dialog/SelectFrameDialog;",
        "task",
        "Lcom/metamoji/lib/dialog/task/IUtImmortalTask;",
        "ticket",
        "initialPosition",
        "",
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

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/un/video/dialog/SelectFrameDialog$Companion;-><init>()V

    return-void
.end method

.method static final newInstance$lambda$0(Ljava/lang/String;DLcom/metamoji/un/video/dialog/SelectFrameDialog$SelectFrameViewModel;)Lkotlin/Unit;
    .locals 2

    const-string v0, "it"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x3e8

    int-to-double v0, v0

    mul-double/2addr p1, v0

    double-to-long p1, p1

    .line 49
    invoke-virtual {p3, p0, p1, p2}, Lcom/metamoji/un/video/dialog/SelectFrameDialog$SelectFrameViewModel;->setTicket(Ljava/lang/String;J)V

    .line 50
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public final newInstance(Lcom/metamoji/lib/dialog/task/IUtImmortalTask;Ljava/lang/String;D)Lcom/metamoji/un/video/dialog/SelectFrameDialog;
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "task"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "ticket"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    sget-object v0, Lcom/metamoji/un/video/dialog/SelectFrameDialog$SelectFrameViewModel;->Companion:Lcom/metamoji/un/video/dialog/SelectFrameDialog$SelectFrameViewModel$Companion;

    new-instance v1, Lcom/metamoji/un/video/dialog/SelectFrameDialog$Companion$$ExternalSyntheticLambda0;

    invoke-direct {v1, p2, p3, p4}, Lcom/metamoji/un/video/dialog/SelectFrameDialog$Companion$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;D)V

    invoke-virtual {v0, p1, v1}, Lcom/metamoji/un/video/dialog/SelectFrameDialog$SelectFrameViewModel$Companion;->createBy(Lcom/metamoji/lib/dialog/task/IUtImmortalTask;Lkotlin/jvm/functions/Function1;)Lcom/metamoji/un/video/dialog/SelectFrameDialog$SelectFrameViewModel;

    .line 51
    new-instance p1, Lcom/metamoji/un/video/dialog/SelectFrameDialog;

    invoke-direct {p1}, Lcom/metamoji/un/video/dialog/SelectFrameDialog;-><init>()V

    return-object p1
.end method
