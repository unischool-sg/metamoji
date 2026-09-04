.class public final Lcom/metamoji/ui/dialog/UiPasswordDialog2$PwdViewModel$Companion;
.super Ljava/lang/Object;
.source "UiPasswordDialog2.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ui/dialog/UiPasswordDialog2$PwdViewModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0016\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tJ\u000e\u0010\n\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\u000c\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/metamoji/ui/dialog/UiPasswordDialog2$PwdViewModel$Companion;",
        "",
        "<init>",
        "()V",
        "createBy",
        "Lcom/metamoji/ui/dialog/UiPasswordDialog2$PwdViewModel;",
        "task",
        "Lcom/metamoji/lib/dialog/task/IUtImmortalTask;",
        "hashedPassword",
        "",
        "instanceFor",
        "dlg",
        "Lcom/metamoji/ui/dialog/UiPasswordDialog2;",
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

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/ui/dialog/UiPasswordDialog2$PwdViewModel$Companion;-><init>()V

    return-void
.end method

.method static final createBy$lambda$0(Ljava/lang/String;Lcom/metamoji/ui/dialog/UiPasswordDialog2$PwdViewModel;)Lkotlin/Unit;
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-virtual {p1, p0}, Lcom/metamoji/ui/dialog/UiPasswordDialog2$PwdViewModel;->setHashedPassword(Ljava/lang/String;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public final createBy(Lcom/metamoji/lib/dialog/task/IUtImmortalTask;Ljava/lang/String;)Lcom/metamoji/ui/dialog/UiPasswordDialog2$PwdViewModel;
    .locals 3

    const-string/jumbo v0, "task"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "hashedPassword"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    sget-object v0, Lcom/metamoji/lib/dialog/task/UtImmortalViewModelHelper;->INSTANCE:Lcom/metamoji/lib/dialog/task/UtImmortalViewModelHelper;

    const-class v1, Lcom/metamoji/ui/dialog/UiPasswordDialog2$PwdViewModel;

    new-instance v2, Lcom/metamoji/ui/dialog/UiPasswordDialog2$PwdViewModel$Companion$$ExternalSyntheticLambda0;

    invoke-direct {v2, p2}, Lcom/metamoji/ui/dialog/UiPasswordDialog2$PwdViewModel$Companion$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, p1, v2}, Lcom/metamoji/lib/dialog/task/UtImmortalViewModelHelper;->createBy(Ljava/lang/Class;Lcom/metamoji/lib/dialog/task/IUtImmortalTask;Lkotlin/jvm/functions/Function1;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lcom/metamoji/ui/dialog/UiPasswordDialog2$PwdViewModel;

    return-object p1
.end method

.method public final instanceFor(Lcom/metamoji/ui/dialog/UiPasswordDialog2;)Lcom/metamoji/ui/dialog/UiPasswordDialog2$PwdViewModel;
    .locals 2

    const-string v0, "dlg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    sget-object v0, Lcom/metamoji/lib/dialog/task/UtImmortalViewModelHelper;->INSTANCE:Lcom/metamoji/lib/dialog/task/UtImmortalViewModelHelper;

    const-class v1, Lcom/metamoji/ui/dialog/UiPasswordDialog2$PwdViewModel;

    check-cast p1, Lcom/metamoji/lib/dialog/IUtDialog;

    invoke-virtual {v0, v1, p1}, Lcom/metamoji/lib/dialog/task/UtImmortalViewModelHelper;->instanceFor(Ljava/lang/Class;Lcom/metamoji/lib/dialog/IUtDialog;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lcom/metamoji/ui/dialog/UiPasswordDialog2$PwdViewModel;

    return-object p1
.end method
