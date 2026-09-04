.class public final Lcom/metamoji/ui/dialog/SupportLogDialogOld$MyViewModel$Companion;
.super Ljava/lang/Object;
.source "SupportLogDialogOld.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ui/dialog/SupportLogDialogOld$MyViewModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0016\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tJ\u000e\u0010\n\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\u000c\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/metamoji/ui/dialog/SupportLogDialogOld$MyViewModel$Companion;",
        "",
        "<init>",
        "()V",
        "createBy",
        "Lcom/metamoji/ui/dialog/SupportLogDialogOld$MyViewModel;",
        "task",
        "Lcom/metamoji/lib/dialog/task/IUtImmortalTask;",
        "zip",
        "Ljava/io/File;",
        "instanceOf",
        "taskName",
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

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/ui/dialog/SupportLogDialogOld$MyViewModel$Companion;-><init>()V

    return-void
.end method

.method static final createBy$lambda$0(Ljava/io/File;Lcom/metamoji/ui/dialog/SupportLogDialogOld$MyViewModel;)Lkotlin/Unit;
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-virtual {p1, p0}, Lcom/metamoji/ui/dialog/SupportLogDialogOld$MyViewModel;->setLogZip(Ljava/io/File;)V

    .line 28
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public final createBy(Lcom/metamoji/lib/dialog/task/IUtImmortalTask;Ljava/io/File;)Lcom/metamoji/ui/dialog/SupportLogDialogOld$MyViewModel;
    .locals 3

    const-string/jumbo v0, "task"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "zip"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    sget-object v0, Lcom/metamoji/lib/dialog/task/UtImmortalViewModelHelper;->INSTANCE:Lcom/metamoji/lib/dialog/task/UtImmortalViewModelHelper;

    const-class v1, Lcom/metamoji/ui/dialog/SupportLogDialogOld$MyViewModel;

    new-instance v2, Lcom/metamoji/ui/dialog/SupportLogDialogOld$MyViewModel$Companion$$ExternalSyntheticLambda0;

    invoke-direct {v2, p2}, Lcom/metamoji/ui/dialog/SupportLogDialogOld$MyViewModel$Companion$$ExternalSyntheticLambda0;-><init>(Ljava/io/File;)V

    invoke-virtual {v0, v1, p1, v2}, Lcom/metamoji/lib/dialog/task/UtImmortalViewModelHelper;->createBy(Ljava/lang/Class;Lcom/metamoji/lib/dialog/task/IUtImmortalTask;Lkotlin/jvm/functions/Function1;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lcom/metamoji/ui/dialog/SupportLogDialogOld$MyViewModel;

    return-object p1
.end method

.method public final instanceOf(Ljava/lang/String;)Lcom/metamoji/ui/dialog/SupportLogDialogOld$MyViewModel;
    .locals 2

    const-string/jumbo v0, "taskName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    sget-object v0, Lcom/metamoji/lib/dialog/task/UtImmortalViewModelHelper;->INSTANCE:Lcom/metamoji/lib/dialog/task/UtImmortalViewModelHelper;

    const-class v1, Lcom/metamoji/ui/dialog/SupportLogDialogOld$MyViewModel;

    invoke-virtual {v0, v1, p1}, Lcom/metamoji/lib/dialog/task/UtImmortalViewModelHelper;->instanceOf(Ljava/lang/Class;Ljava/lang/String;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lcom/metamoji/ui/dialog/SupportLogDialogOld$MyViewModel;

    return-object p1
.end method
