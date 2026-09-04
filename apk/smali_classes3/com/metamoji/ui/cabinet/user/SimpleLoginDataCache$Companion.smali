.class public final Lcom/metamoji/ui/cabinet/user/SimpleLoginDataCache$Companion;
.super Ljava/lang/Object;
.source "SimpleLoginDataCache.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ui/cabinet/user/SimpleLoginDataCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0002J\u0018\u0010\u0008\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\u000bH\u0007J\u001e\u0010\u000c\u001a\u0010\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u0001\u0018\u00010\r2\u0006\u0010\u0006\u001a\u00020\u0007H\u0007\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/metamoji/ui/cabinet/user/SimpleLoginDataCache$Companion;",
        "",
        "<init>",
        "()V",
        "ensureInstance",
        "Lcom/metamoji/ui/cabinet/user/SimpleLoginDataCache;",
        "activity",
        "Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;",
        "load",
        "",
        "param",
        "Lcom/metamoji/cs/dc/params/CsGetClassRoomLoginInfoParam;",
        "getDetailMap",
        "",
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

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/ui/cabinet/user/SimpleLoginDataCache$Companion;-><init>()V

    return-void
.end method

.method private final ensureInstance(Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;)Lcom/metamoji/ui/cabinet/user/SimpleLoginDataCache;
    .locals 2

    .line 22
    sget-object v0, Lcom/metamoji/ui/cabinet/user/LoginPageViewModel;->Companion:Lcom/metamoji/ui/cabinet/user/LoginPageViewModel$Companion;

    move-object v1, p1

    check-cast v1, Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/cabinet/user/LoginPageViewModel$Companion;->instanceFor(Landroidx/fragment/app/FragmentActivity;)Lcom/metamoji/ui/cabinet/user/LoginPageViewModel;

    move-result-object v0

    .line 23
    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/user/LoginPageViewModel;->getSimpleLoginDataCache()Lcom/metamoji/ui/cabinet/user/SimpleLoginDataCache;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/metamoji/ui/cabinet/user/SimpleLoginDataCache;

    invoke-direct {v1}, Lcom/metamoji/ui/cabinet/user/SimpleLoginDataCache;-><init>()V

    .line 24
    invoke-virtual {v1, p1}, Lcom/metamoji/ui/cabinet/user/SimpleLoginDataCache;->registerObserver(Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;)V

    .line 25
    invoke-virtual {v0, v1}, Lcom/metamoji/ui/cabinet/user/LoginPageViewModel;->setSimpleLoginDataCache(Lcom/metamoji/ui/cabinet/user/SimpleLoginDataCache;)V

    :cond_0
    return-object v1
.end method


# virtual methods
.method public final getDetailMap(Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    sget-object v0, Lcom/metamoji/ui/cabinet/user/LoginPageViewModel;->Companion:Lcom/metamoji/ui/cabinet/user/LoginPageViewModel$Companion;

    check-cast p1, Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1}, Lcom/metamoji/ui/cabinet/user/LoginPageViewModel$Companion;->instanceFor(Landroidx/fragment/app/FragmentActivity;)Lcom/metamoji/ui/cabinet/user/LoginPageViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/user/LoginPageViewModel;->getSimpleLoginDataCache()Lcom/metamoji/ui/cabinet/user/SimpleLoginDataCache;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/user/SimpleLoginDataCache;->getDetailMap()Ljava/util/Map;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final load(Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;Lcom/metamoji/cs/dc/params/CsGetClassRoomLoginInfoParam;)Z
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "param"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-direct {p0, p1}, Lcom/metamoji/ui/cabinet/user/SimpleLoginDataCache$Companion;->ensureInstance(Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;)Lcom/metamoji/ui/cabinet/user/SimpleLoginDataCache;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/metamoji/ui/cabinet/user/SimpleLoginDataCache;->access$loadInfo(Lcom/metamoji/ui/cabinet/user/SimpleLoginDataCache;Lcom/metamoji/cs/dc/params/CsGetClassRoomLoginInfoParam;)Z

    move-result p1

    return p1
.end method
