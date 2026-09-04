.class public final Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog$PasswordViewModel$Companion;
.super Ljava/lang/Object;
.source "NtVerifyPasswordDialog.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog$PasswordViewModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J0\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\t2\u0006\u0010\u000c\u001a\u00020\rH\u0007J\u000e\u0010\u000e\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020\u0010\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog$PasswordViewModel$Companion;",
        "",
        "<init>",
        "()V",
        "createBy",
        "Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog$PasswordViewModel;",
        "task",
        "Lcom/metamoji/lib/dialog/task/IUtImmortalTask;",
        "title",
        "",
        "message",
        "verifyingPassword",
        "hashed",
        "",
        "instanceFor",
        "dialog",
        "Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog;",
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

    invoke-direct {p0}, Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog$PasswordViewModel$Companion;-><init>()V

    return-void
.end method

.method static final createBy$lambda$0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/metamoji/ui/dialog/NtVerifyPasswordDialog$PasswordViewModel;)Lkotlin/Unit;
    .locals 2

    const-string v0, "it"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    invoke-virtual {p4}, Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog$PasswordViewModel;->getPassword()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 50
    invoke-virtual {p4}, Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog$PasswordViewModel;->getMessage()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 51
    invoke-virtual {p4, p1}, Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog$PasswordViewModel;->setTitle(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p4, p2}, Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog$PasswordViewModel;->setVerifyingPassword(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p4, p3}, Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog$PasswordViewModel;->setHashed(Z)V

    .line 54
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public final createBy(Lcom/metamoji/lib/dialog/task/IUtImmortalTask;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog$PasswordViewModel;
    .locals 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "task"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "title"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "verifyingPassword"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    sget-object v0, Lcom/metamoji/lib/dialog/task/UtImmortalViewModelHelper;->INSTANCE:Lcom/metamoji/lib/dialog/task/UtImmortalViewModelHelper;

    const-class v1, Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog$PasswordViewModel;

    new-instance v2, Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog$PasswordViewModel$Companion$$ExternalSyntheticLambda0;

    invoke-direct {v2, p3, p2, p4, p5}, Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog$PasswordViewModel$Companion$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v0, v1, p1, v2}, Lcom/metamoji/lib/dialog/task/UtImmortalViewModelHelper;->createBy(Ljava/lang/Class;Lcom/metamoji/lib/dialog/task/IUtImmortalTask;Lkotlin/jvm/functions/Function1;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog$PasswordViewModel;

    return-object p1
.end method

.method public final instanceFor(Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog;)Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog$PasswordViewModel;
    .locals 2

    const-string v0, "dialog"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    sget-object v0, Lcom/metamoji/lib/dialog/task/UtImmortalViewModelHelper;->INSTANCE:Lcom/metamoji/lib/dialog/task/UtImmortalViewModelHelper;

    const-class v1, Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog$PasswordViewModel;

    check-cast p1, Lcom/metamoji/lib/dialog/IUtDialog;

    invoke-virtual {v0, v1, p1}, Lcom/metamoji/lib/dialog/task/UtImmortalViewModelHelper;->instanceFor(Ljava/lang/Class;Lcom/metamoji/lib/dialog/IUtDialog;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lcom/metamoji/ui/dialog/NtVerifyPasswordDialog$PasswordViewModel;

    return-object p1
.end method
