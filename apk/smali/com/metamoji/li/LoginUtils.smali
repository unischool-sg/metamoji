.class public final Lcom/metamoji/li/LoginUtils;
.super Ljava/lang/Object;
.source "LoginUtils.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLoginUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LoginUtils.kt\ncom/metamoji/li/LoginUtils\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,120:1\n37#2,2:121\n37#2,2:123\n37#2,2:125\n1#3:127\n*S KotlinDebug\n*F\n+ 1 LoginUtils.kt\ncom/metamoji/li/LoginUtils\n*L\n29#1:121,2\n33#1:123,2\n35#1:125,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001a\u0010\u0004\u001a\u00020\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0005J\u000e\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0005J\u001c\u0010\u000b\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0008\u0010\n\u001a\u0004\u0018\u00010\u0005J\u000e\u0010\u000c\u001a\u00020\r2\u0006\u0010\n\u001a\u00020\u0005J\u001e\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00052\u0006\u0010\u0017\u001a\u00020\u00052\u0006\u0010\u0018\u001a\u00020\u0005R(\u0010\u000f\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u00058F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/metamoji/li/LoginUtils;",
        "",
        "<init>",
        "()V",
        "createDisplayCoLoginId",
        "",
        "coid",
        "name",
        "getRootServerUrlAndCoLoginIdFromUrl",
        "Lcom/metamoji/li/dialog/CompanyInfo;",
        "url",
        "companyNameByLoginId",
        "isOnPremise",
        "",
        "v",
        "cloudServiceRootServer",
        "getCloudServiceRootServer",
        "()Ljava/lang/String;",
        "setCloudServiceRootServer",
        "(Ljava/lang/String;)V",
        "updateOrganizationList",
        "",
        "coLoginId",
        "coName",
        "rootServer",
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
.field public static final INSTANCE:Lcom/metamoji/li/LoginUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/metamoji/li/LoginUtils;

    invoke-direct {v0}, Lcom/metamoji/li/LoginUtils;-><init>()V

    sput-object v0, Lcom/metamoji/li/LoginUtils;->INSTANCE:Lcom/metamoji/li/LoginUtils;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final companyNameByLoginId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 70
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 71
    :cond_0
    new-instance v0, Lcom/metamoji/li/dialog/OrganizationItem;

    if-nez p2, :cond_1

    const-string p2, ""

    :cond_1
    invoke-direct {v0, p1, p2}, Lcom/metamoji/li/dialog/OrganizationItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    sget-object p1, Lcom/metamoji/li/dialog/OrganizationItem;->Companion:Lcom/metamoji/li/dialog/OrganizationItem$Companion;

    invoke-virtual {p1}, Lcom/metamoji/li/dialog/OrganizationItem$Companion;->loadFromUserDefaults()Ljava/util/List;

    move-result-object p1

    .line 73
    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    move-object v2, p2

    check-cast v2, Lcom/metamoji/li/dialog/OrganizationItem;

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_3
    move-object p2, v1

    :goto_0
    check-cast p2, Lcom/metamoji/li/dialog/OrganizationItem;

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Lcom/metamoji/li/dialog/OrganizationItem;->getName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_4
    :goto_1
    return-object v1
.end method

.method public final createDisplayCoLoginId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 10
    move-object v0, p2

    check-cast v0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 11
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "("

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    if-nez p1, :cond_2

    .line 13
    const-string p1, ""

    :cond_2
    return-object p1
.end method

.method public final getCloudServiceRootServer()Ljava/lang/String;
    .locals 1

    .line 81
    invoke-static {}, Lcom/metamoji/cs/CsCloudServiceContext;->getInstance()Lcom/metamoji/cs/CsCloudServiceContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/cs/CsCloudServiceContext;->getRootServer()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getRootServerUrlAndCoLoginIdFromUrl(Ljava/lang/String;)Lcom/metamoji/li/dialog/CompanyInfo;
    .locals 16

    move-object/from16 v0, p1

    const-string/jumbo v1, "url"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-virtual/range {p0 .. p1}, Lcom/metamoji/li/LoginUtils;->isOnPremise(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 29
    move-object v3, v0

    check-cast v3, Ljava/lang/CharSequence;

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const-string v1, "?"

    const/4 v9, 0x0

    aput-object v1, v4, v9

    const/4 v7, 0x6

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    .line 122
    new-array v3, v9, [Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    .line 29
    check-cast v1, [Ljava/lang/String;

    .line 30
    array-length v3, v1

    if-nez v3, :cond_0

    move v3, v0

    goto :goto_0

    :cond_0
    move v3, v9

    :goto_0
    if-nez v3, :cond_2

    .line 31
    aget-object v3, v1, v9

    .line 32
    array-length v4, v1

    if-le v4, v0, :cond_4

    .line 33
    aget-object v1, v1, v0

    move-object v10, v1

    check-cast v10, Ljava/lang/CharSequence;

    new-array v11, v0, [Ljava/lang/String;

    const-string v1, "&"

    aput-object v1, v11, v9

    const/4 v14, 0x6

    const/4 v15, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static/range {v10 .. v15}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    .line 124
    new-array v4, v9, [Ljava/lang/String;

    invoke-interface {v1, v4}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    .line 33
    check-cast v1, [Ljava/lang/String;

    .line 34
    array-length v4, v1

    move v5, v9

    :goto_1
    if-ge v5, v4, :cond_4

    aget-object v6, v1, v5

    .line 35
    move-object v10, v6

    check-cast v10, Ljava/lang/CharSequence;

    new-array v11, v0, [Ljava/lang/String;

    const-string v6, "="

    aput-object v6, v11, v9

    const/4 v14, 0x6

    const/4 v15, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static/range {v10 .. v15}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v6

    check-cast v6, Ljava/util/Collection;

    .line 126
    new-array v7, v9, [Ljava/lang/String;

    invoke-interface {v6, v7}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    .line 35
    check-cast v6, [Ljava/lang/String;

    .line 36
    array-length v7, v6

    const/4 v8, 0x2

    if-ne v7, v8, :cond_1

    .line 37
    aget-object v7, v6, v9

    .line 38
    const-string v8, "cid"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 39
    aget-object v2, v6, v0

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "US"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v6, "toUpperCase(...)"

    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    move-object v3, v2

    goto :goto_2

    :cond_3
    move-object v3, v2

    move-object v2, v0

    .line 57
    :cond_4
    :goto_2
    new-instance v0, Lcom/metamoji/li/dialog/CompanyInfo;

    invoke-direct {v0, v2, v3}, Lcom/metamoji/li/dialog/CompanyInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final isOnPremise(Ljava/lang/String;)Z
    .locals 4

    const-string/jumbo v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    const-string v0, "http://"

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "https://"

    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final setCloudServiceRootServer(Ljava/lang/String;)V
    .locals 1

    .line 82
    invoke-static {}, Lcom/metamoji/cs/CsCloudServiceContext;->getInstance()Lcom/metamoji/cs/CsCloudServiceContext;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/metamoji/cs/CsCloudServiceContext;->setRootServer(Ljava/lang/String;)V

    return-void
.end method

.method public final updateOrganizationList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "coLoginId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rootServer"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 97
    :cond_0
    new-instance v0, Lcom/metamoji/li/dialog/OrganizationItem;

    invoke-direct {v0, p1, p2, p3}, Lcom/metamoji/li/dialog/OrganizationItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    sget-object p1, Lcom/metamoji/li/dialog/OrganizationItem;->Companion:Lcom/metamoji/li/dialog/OrganizationItem$Companion;

    invoke-virtual {p1}, Lcom/metamoji/li/dialog/OrganizationItem$Companion;->loadFromUserDefaults()Ljava/util/List;

    move-result-object p1

    .line 99
    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_3

    .line 100
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    .line 101
    invoke-interface {p1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object p2

    const/4 p3, 0x0

    .line 103
    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 104
    invoke-interface {p2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/li/dialog/OrganizationItem;

    .line 105
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 106
    invoke-interface {p2, v0}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    const/4 p3, 0x1

    goto :goto_0

    :cond_2
    if-nez p3, :cond_4

    .line 111
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 115
    :cond_3
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 117
    :cond_4
    :goto_1
    sget-object p2, Lcom/metamoji/li/dialog/OrganizationItem;->Companion:Lcom/metamoji/li/dialog/OrganizationItem$Companion;

    invoke-virtual {p2, p1}, Lcom/metamoji/li/dialog/OrganizationItem$Companion;->saveToUserDefaults(Ljava/util/List;)V

    return-void
.end method
