.class public final Lcom/metamoji/un/video/dialog/SelectFrameDialog$SelectFrameViewModel$Companion;
.super Ljava/lang/Object;
.source "SelectFrameDialog.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/un/video/dialog/SelectFrameDialog$SelectFrameViewModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J&\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0016\u0008\u0002\u0010\u0008\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\n\u0018\u00010\tJ\u000e\u0010\u000b\u001a\u00020\u00052\u0006\u0010\u000c\u001a\u00020\r\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/metamoji/un/video/dialog/SelectFrameDialog$SelectFrameViewModel$Companion;",
        "",
        "<init>",
        "()V",
        "createBy",
        "Lcom/metamoji/un/video/dialog/SelectFrameDialog$SelectFrameViewModel;",
        "task",
        "Lcom/metamoji/lib/dialog/task/IUtImmortalTask;",
        "initialize",
        "Lkotlin/Function1;",
        "",
        "instanceFor",
        "dialog",
        "Lcom/metamoji/lib/dialog/IUtDialog;",
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

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/un/video/dialog/SelectFrameDialog$SelectFrameViewModel$Companion;-><init>()V

    return-void
.end method

.method public static synthetic createBy$default(Lcom/metamoji/un/video/dialog/SelectFrameDialog$SelectFrameViewModel$Companion;Lcom/metamoji/lib/dialog/task/IUtImmortalTask;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lcom/metamoji/un/video/dialog/SelectFrameDialog$SelectFrameViewModel;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 144
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/un/video/dialog/SelectFrameDialog$SelectFrameViewModel$Companion;->createBy(Lcom/metamoji/lib/dialog/task/IUtImmortalTask;Lkotlin/jvm/functions/Function1;)Lcom/metamoji/un/video/dialog/SelectFrameDialog$SelectFrameViewModel;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final createBy(Lcom/metamoji/lib/dialog/task/IUtImmortalTask;Lkotlin/jvm/functions/Function1;)Lcom/metamoji/un/video/dialog/SelectFrameDialog$SelectFrameViewModel;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/lib/dialog/task/IUtImmortalTask;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/metamoji/un/video/dialog/SelectFrameDialog$SelectFrameViewModel;",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/metamoji/un/video/dialog/SelectFrameDialog$SelectFrameViewModel;"
        }
    .end annotation

    const-string/jumbo v0, "task"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 145
    sget-object v0, Lcom/metamoji/lib/dialog/task/UtImmortalViewModelHelper;->INSTANCE:Lcom/metamoji/lib/dialog/task/UtImmortalViewModelHelper;

    const-class v1, Lcom/metamoji/un/video/dialog/SelectFrameDialog$SelectFrameViewModel;

    invoke-virtual {v0, v1, p1, p2}, Lcom/metamoji/lib/dialog/task/UtImmortalViewModelHelper;->createBy(Ljava/lang/Class;Lcom/metamoji/lib/dialog/task/IUtImmortalTask;Lkotlin/jvm/functions/Function1;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lcom/metamoji/un/video/dialog/SelectFrameDialog$SelectFrameViewModel;

    return-object p1
.end method

.method public final instanceFor(Lcom/metamoji/lib/dialog/IUtDialog;)Lcom/metamoji/un/video/dialog/SelectFrameDialog$SelectFrameViewModel;
    .locals 2

    const-string v0, "dialog"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 151
    sget-object v0, Lcom/metamoji/lib/dialog/task/UtImmortalViewModelHelper;->INSTANCE:Lcom/metamoji/lib/dialog/task/UtImmortalViewModelHelper;

    const-class v1, Lcom/metamoji/un/video/dialog/SelectFrameDialog$SelectFrameViewModel;

    invoke-virtual {v0, v1, p1}, Lcom/metamoji/lib/dialog/task/UtImmortalViewModelHelper;->instanceFor(Ljava/lang/Class;Lcom/metamoji/lib/dialog/IUtDialog;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lcom/metamoji/un/video/dialog/SelectFrameDialog$SelectFrameViewModel;

    return-object p1
.end method
