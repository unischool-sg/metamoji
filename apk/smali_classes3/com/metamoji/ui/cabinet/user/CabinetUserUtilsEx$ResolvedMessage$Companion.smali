.class public final Lcom/metamoji/ui/cabinet/user/CabinetUserUtilsEx$ResolvedMessage$Companion;
.super Ljava/lang/Object;
.source "CabinetUserUtilsEx.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ui/cabinet/user/CabinetUserUtilsEx$ResolvedMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/ui/cabinet/user/CabinetUserUtilsEx$ResolvedMessage$Companion$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bR\u0011\u0010\u0004\u001a\u00020\u00058F\u00a2\u0006\u0006\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/metamoji/ui/cabinet/user/CabinetUserUtilsEx$ResolvedMessage$Companion;",
        "",
        "<init>",
        "()V",
        "empty",
        "Lcom/metamoji/ui/cabinet/user/CabinetUserUtilsEx$ResolvedMessage;",
        "getEmpty",
        "()Lcom/metamoji/ui/cabinet/user/CabinetUserUtilsEx$ResolvedMessage;",
        "doAction",
        "",
        "nextAction",
        "Lcom/metamoji/ui/cabinet/user/CabinetUserUtilsEx$AfterMessageAction;",
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

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/ui/cabinet/user/CabinetUserUtilsEx$ResolvedMessage$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final doAction(Lcom/metamoji/ui/cabinet/user/CabinetUserUtilsEx$AfterMessageAction;)Z
    .locals 3

    const-string v0, "nextAction"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    sget-object v0, Lcom/metamoji/ui/cabinet/user/CabinetUserUtilsEx$ResolvedMessage$Companion$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/user/CabinetUserUtilsEx$AfterMessageAction;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    return v0

    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 27
    :cond_1
    sget-object p1, Lcom/metamoji/ui/cabinet/user/LoginPageActivity;->Companion:Lcom/metamoji/ui/cabinet/user/LoginPageActivity$Companion;

    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/user/LoginPageActivity$Companion;->showLoginPageWithoutLogout()V

    goto :goto_0

    .line 26
    :cond_2
    sget-object p1, Lcom/metamoji/ui/cabinet/user/LoginPageActivity;->Companion:Lcom/metamoji/ui/cabinet/user/LoginPageActivity$Companion;

    invoke-virtual {p1, v0}, Lcom/metamoji/ui/cabinet/user/LoginPageActivity$Companion;->logoutWithClearPasscode(Z)V

    :goto_0
    return v1
.end method

.method public final getEmpty()Lcom/metamoji/ui/cabinet/user/CabinetUserUtilsEx$ResolvedMessage;
    .locals 3

    .line 23
    new-instance v0, Lcom/metamoji/ui/cabinet/user/CabinetUserUtilsEx$ResolvedMessage;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {v0, v1, v1, v2, v1}, Lcom/metamoji/ui/cabinet/user/CabinetUserUtilsEx$ResolvedMessage;-><init>(Ljava/lang/String;Lcom/metamoji/ui/cabinet/user/CabinetUserUtilsEx$AfterMessageAction;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method
