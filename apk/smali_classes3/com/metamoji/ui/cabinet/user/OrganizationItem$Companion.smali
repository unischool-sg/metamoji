.class public final Lcom/metamoji/ui/cabinet/user/OrganizationItem$Companion;
.super Ljava/lang/Object;
.source "SelectOrganizationDialogEx.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ui/cabinet/user/OrganizationItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSelectOrganizationDialogEx.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SelectOrganizationDialogEx.kt\ncom/metamoji/ui/cabinet/user/OrganizationItem$Companion\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,512:1\n1642#2,10:513\n1915#2:523\n1916#2:525\n1652#2:526\n1586#2:527\n1661#2,3:528\n1#3:524\n*S KotlinDebug\n*F\n+ 1 SelectOrganizationDialogEx.kt\ncom/metamoji/ui/cabinet/user/OrganizationItem$Companion\n*L\n66#1:513,10\n66#1:523\n66#1:525\n66#1:526\n71#1:527\n71#1:528,3\n66#1:524\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0014\u0010\u0008\u001a\u0004\u0018\u00010\u00052\u0008\u0010\t\u001a\u0004\u0018\u00010\nH\u0002J\u000e\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u000cH\u0007J\u0014\u0010\r\u001a\u00020\u000e2\u000c\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u000cR\u0011\u0010\u0004\u001a\u00020\u00058F\u00a2\u0006\u0006\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/metamoji/ui/cabinet/user/OrganizationItem$Companion;",
        "",
        "<init>",
        "()V",
        "empty",
        "Lcom/metamoji/ui/cabinet/user/OrganizationItem;",
        "getEmpty",
        "()Lcom/metamoji/ui/cabinet/user/OrganizationItem;",
        "fromJson",
        "jsonStr",
        "",
        "loadFromUserDefaults",
        "",
        "saveToUserDefaults",
        "",
        "list",
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

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/ui/cabinet/user/OrganizationItem$Companion;-><init>()V

    return-void
.end method

.method private final fromJson(Ljava/lang/String;)Lcom/metamoji/ui/cabinet/user/OrganizationItem;
    .locals 6

    .line 52
    const-string v0, "getString(...)"

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 54
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 55
    new-instance p1, Lcom/metamoji/ui/cabinet/user/OrganizationItem;

    const-string v3, "id"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "name"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v5, "url"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, v3, v4, v2}, Lcom/metamoji/ui/cabinet/user/OrganizationItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, p1

    :catchall_0
    :cond_0
    return-object v1
.end method


# virtual methods
.method public final getEmpty()Lcom/metamoji/ui/cabinet/user/OrganizationItem;
    .locals 2

    .line 49
    new-instance v0, Lcom/metamoji/ui/cabinet/user/OrganizationItem;

    const-string v1, ""

    invoke-direct {v0, v1, v1, v1}, Lcom/metamoji/ui/cabinet/user/OrganizationItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final loadFromUserDefaults()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/metamoji/ui/cabinet/user/OrganizationItem;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 65
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object v0

    const-string v1, "OrganizationIdList"

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtUserDefaults;->getListValue(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    check-cast v0, Ljava/lang/Iterable;

    .line 513
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/Collection;

    .line 523
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 522
    check-cast v2, Ljava/lang/String;

    .line 66
    sget-object v3, Lcom/metamoji/ui/cabinet/user/OrganizationItem;->Companion:Lcom/metamoji/ui/cabinet/user/OrganizationItem$Companion;

    invoke-direct {v3, v2}, Lcom/metamoji/ui/cabinet/user/OrganizationItem$Companion;->fromJson(Ljava/lang/String;)Lcom/metamoji/ui/cabinet/user/OrganizationItem;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 522
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 526
    :cond_2
    check-cast v1, Ljava/util/List;

    return-object v1

    .line 67
    :cond_3
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final saveToUserDefaults(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/metamoji/ui/cabinet/user/OrganizationItem;",
            ">;)V"
        }
    .end annotation

    const-string v0, "list"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object v0

    check-cast p1, Ljava/lang/Iterable;

    .line 527
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {p1, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    .line 528
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 529
    check-cast v2, Lcom/metamoji/ui/cabinet/user/OrganizationItem;

    .line 71
    invoke-virtual {v2}, Lcom/metamoji/ui/cabinet/user/OrganizationItem;->toJson()Ljava/lang/String;

    move-result-object v2

    .line 529
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 530
    :cond_0
    check-cast v1, Ljava/util/List;

    .line 71
    const-string p1, "OrganizationIdList"

    invoke-virtual {v0, p1, v1}, Lcom/metamoji/nt/NtUserDefaults;->setValue(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method
