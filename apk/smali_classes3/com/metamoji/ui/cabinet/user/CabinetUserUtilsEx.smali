.class public final Lcom/metamoji/ui/cabinet/user/CabinetUserUtilsEx;
.super Ljava/lang/Object;
.source "CabinetUserUtilsEx.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/ui/cabinet/user/CabinetUserUtilsEx$AfterMessageAction;,
        Lcom/metamoji/ui/cabinet/user/CabinetUserUtilsEx$ResolvedMessage;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0002\u0008\tB\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/metamoji/ui/cabinet/user/CabinetUserUtilsEx;",
        "",
        "<init>",
        "()V",
        "resolveCabinetUserErrorMessage",
        "Lcom/metamoji/ui/cabinet/user/CabinetUserUtilsEx$ResolvedMessage;",
        "response",
        "Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;",
        "AfterMessageAction",
        "ResolvedMessage",
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
.field public static final INSTANCE:Lcom/metamoji/ui/cabinet/user/CabinetUserUtilsEx;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/metamoji/ui/cabinet/user/CabinetUserUtilsEx;

    invoke-direct {v0}, Lcom/metamoji/ui/cabinet/user/CabinetUserUtilsEx;-><init>()V

    sput-object v0, Lcom/metamoji/ui/cabinet/user/CabinetUserUtilsEx;->INSTANCE:Lcom/metamoji/ui/cabinet/user/CabinetUserUtilsEx;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final resolveCabinetUserErrorMessage(Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;)Lcom/metamoji/ui/cabinet/user/CabinetUserUtilsEx$ResolvedMessage;
    .locals 4

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 37
    new-instance p1, Lcom/metamoji/ui/cabinet/user/CabinetUserUtilsEx$ResolvedMessage;

    const/16 v2, 0x64

    invoke-static {v2}, Lcom/metamoji/ui/cabinet/user/CabinetUserUtils;->getCabinetUserErrorMessage(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v2, v1, v0, v1}, Lcom/metamoji/ui/cabinet/user/CabinetUserUtilsEx$ResolvedMessage;-><init>(Ljava/lang/String;Lcom/metamoji/ui/cabinet/user/CabinetUserUtilsEx$AfterMessageAction;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p1

    .line 38
    :cond_0
    iget-boolean v2, p1, Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;->isUnderMaintenance:Z

    if-eqz v2, :cond_1

    .line 40
    new-instance v2, Lcom/metamoji/ui/cabinet/user/CabinetUserUtilsEx$ResolvedMessage;

    iget-object p1, p1, Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;->maintMessage:Ljava/lang/String;

    invoke-direct {v2, p1, v1, v0, v1}, Lcom/metamoji/ui/cabinet/user/CabinetUserUtilsEx$ResolvedMessage;-><init>(Ljava/lang/String;Lcom/metamoji/ui/cabinet/user/CabinetUserUtilsEx$AfterMessageAction;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v2

    .line 43
    :cond_1
    iget v2, p1, Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;->errorCode:I

    const/16 v3, 0x75

    if-ne v2, v3, :cond_2

    .line 45
    sget-object p1, Lcom/metamoji/ui/cabinet/user/LoginPageActivity;->Companion:Lcom/metamoji/ui/cabinet/user/LoginPageActivity$Companion;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/metamoji/ui/cabinet/user/LoginPageActivity$Companion;->logoutWithClearPasscode(Z)V

    .line 46
    sget-object p1, Lcom/metamoji/ui/cabinet/user/CabinetUserUtilsEx$ResolvedMessage;->Companion:Lcom/metamoji/ui/cabinet/user/CabinetUserUtilsEx$ResolvedMessage$Companion;

    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/user/CabinetUserUtilsEx$ResolvedMessage$Companion;->getEmpty()Lcom/metamoji/ui/cabinet/user/CabinetUserUtilsEx$ResolvedMessage;

    move-result-object p1

    return-object p1

    .line 51
    :cond_2
    iget v2, p1, Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;->errorCode:I

    const/16 v3, -0xc8

    if-eq v2, v3, :cond_3

    .line 52
    iget v2, p1, Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;->errorCode:I

    invoke-static {v2}, Lcom/metamoji/ui/cabinet/user/CabinetUserUtils;->getCabinetUserErrorMessage(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_3
    move-object v2, v1

    .line 55
    :goto_0
    iget p1, p1, Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;->errorCode:I

    const/16 v3, 0x6a

    if-eq p1, v3, :cond_4

    const/16 v3, 0x9f

    if-eq p1, v3, :cond_4

    .line 60
    new-instance p1, Lcom/metamoji/ui/cabinet/user/CabinetUserUtilsEx$ResolvedMessage;

    invoke-direct {p1, v2, v1, v0, v1}, Lcom/metamoji/ui/cabinet/user/CabinetUserUtilsEx$ResolvedMessage;-><init>(Ljava/lang/String;Lcom/metamoji/ui/cabinet/user/CabinetUserUtilsEx$AfterMessageAction;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p1

    .line 57
    :cond_4
    new-instance p1, Lcom/metamoji/ui/cabinet/user/CabinetUserUtilsEx$ResolvedMessage;

    sget-object v0, Lcom/metamoji/ui/cabinet/user/CabinetUserUtilsEx$AfterMessageAction;->NEEDS_LOGIN:Lcom/metamoji/ui/cabinet/user/CabinetUserUtilsEx$AfterMessageAction;

    invoke-direct {p1, v2, v0}, Lcom/metamoji/ui/cabinet/user/CabinetUserUtilsEx$ResolvedMessage;-><init>(Ljava/lang/String;Lcom/metamoji/ui/cabinet/user/CabinetUserUtilsEx$AfterMessageAction;)V

    return-object p1
.end method
