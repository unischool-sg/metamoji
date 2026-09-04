.class public final Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$Companion;
.super Ljava/lang/Object;
.source "SmallLoginDriver.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ui/cabinet/user/SmallLoginDriver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0007\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0007J0\u0010\u0008\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\u00052\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u000c2\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u000cH\u0007JR\u0010\u0008\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\u00052\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000c2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000c2\u0006\u0010\u000e\u001a\u00020\u000c2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u000c2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000c2\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u000cH\u0007J\u0012\u0010\u0012\u001a\u0004\u0018\u00010\t2\u0006\u0010\u0006\u001a\u00020\u0007H\u0007\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$Companion;",
        "",
        "<init>",
        "()V",
        "isBusy",
        "",
        "activity",
        "Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;",
        "create",
        "Lcom/metamoji/ui/cabinet/user/SmallLoginDriver;",
        "simple",
        "password",
        "",
        "qwd",
        "corpId",
        "coLoginId",
        "coLoginIdName",
        "coLoginIdUrl",
        "get",
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

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$Companion;-><init>()V

    return-void
.end method

.method public static synthetic create$default(Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$Companion;Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;ZLjava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/metamoji/ui/cabinet/user/SmallLoginDriver;
    .locals 1

    and-int/lit8 p6, p5, 0x4

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    move-object p3, v0

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    move-object p4, v0

    .line 103
    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$Companion;->create(Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;ZLjava/lang/String;Ljava/lang/String;)Lcom/metamoji/ui/cabinet/user/SmallLoginDriver;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final create(Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;Z)Lcom/metamoji/ui/cabinet/user/SmallLoginDriver;
    .locals 8
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v6, 0xc

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    invoke-static/range {v1 .. v7}, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$Companion;->create$default(Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$Companion;Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;ZLjava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/metamoji/ui/cabinet/user/SmallLoginDriver;

    move-result-object p1

    return-object p1
.end method

.method public final create(Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;ZLjava/lang/String;)Lcom/metamoji/ui/cabinet/user/SmallLoginDriver;
    .locals 8
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v6, 0x8

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    invoke-static/range {v1 .. v7}, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$Companion;->create$default(Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$Companion;Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;ZLjava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/metamoji/ui/cabinet/user/SmallLoginDriver;

    move-result-object p1

    return-object p1
.end method

.method public final create(Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;ZLjava/lang/String;Ljava/lang/String;)Lcom/metamoji/ui/cabinet/user/SmallLoginDriver;
    .locals 11
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    sget-object v0, Lcom/metamoji/ui/cabinet/user/LoginPageViewModel;->Companion:Lcom/metamoji/ui/cabinet/user/LoginPageViewModel$Companion;

    move-object v1, p1

    check-cast v1, Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/cabinet/user/LoginPageViewModel$Companion;->instanceFor(Landroidx/fragment/app/FragmentActivity;)Lcom/metamoji/ui/cabinet/user/LoginPageViewModel;

    move-result-object v0

    .line 108
    new-instance v1, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver;

    const/16 v9, 0x78

    const/4 v10, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v1 .. v10}, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 109
    invoke-virtual {v0, v1}, Lcom/metamoji/ui/cabinet/user/LoginPageViewModel;->setLoginDriver(Lcom/metamoji/ui/cabinet/user/SmallLoginDriver;)V

    .line 110
    invoke-virtual {v1, p1}, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver;->registerObserver(Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;)V

    return-object v1
.end method

.method public final create(Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/metamoji/ui/cabinet/user/SmallLoginDriver;
    .locals 10
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "corpId"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    sget-object v0, Lcom/metamoji/ui/cabinet/user/LoginPageViewModel;->Companion:Lcom/metamoji/ui/cabinet/user/LoginPageViewModel$Companion;

    move-object v1, p1

    check-cast v1, Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/cabinet/user/LoginPageViewModel$Companion;->instanceFor(Landroidx/fragment/app/FragmentActivity;)Lcom/metamoji/ui/cabinet/user/LoginPageViewModel;

    move-result-object v0

    .line 117
    new-instance v1, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver;

    const/4 v9, 0x0

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v1 .. v9}, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 118
    invoke-virtual {v0, v1}, Lcom/metamoji/ui/cabinet/user/LoginPageViewModel;->setLoginDriver(Lcom/metamoji/ui/cabinet/user/SmallLoginDriver;)V

    .line 119
    invoke-virtual {v1, p1}, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver;->registerObserver(Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;)V

    return-object v1
.end method

.method public final get(Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;)Lcom/metamoji/ui/cabinet/user/SmallLoginDriver;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    sget-object v0, Lcom/metamoji/ui/cabinet/user/LoginPageViewModel;->Companion:Lcom/metamoji/ui/cabinet/user/LoginPageViewModel$Companion;

    check-cast p1, Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1}, Lcom/metamoji/ui/cabinet/user/LoginPageViewModel$Companion;->instanceFor(Landroidx/fragment/app/FragmentActivity;)Lcom/metamoji/ui/cabinet/user/LoginPageViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/user/LoginPageViewModel;->getLoginDriver()Lcom/metamoji/ui/cabinet/user/SmallLoginDriver;

    move-result-object p1

    return-object p1
.end method

.method public final isBusy(Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;)Z
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    sget-object v0, Lcom/metamoji/ui/cabinet/user/LoginPageViewModel;->Companion:Lcom/metamoji/ui/cabinet/user/LoginPageViewModel$Companion;

    check-cast p1, Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1}, Lcom/metamoji/ui/cabinet/user/LoginPageViewModel$Companion;->instanceFor(Landroidx/fragment/app/FragmentActivity;)Lcom/metamoji/ui/cabinet/user/LoginPageViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/user/LoginPageViewModel;->getLoginDriver()Lcom/metamoji/ui/cabinet/user/SmallLoginDriver;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
