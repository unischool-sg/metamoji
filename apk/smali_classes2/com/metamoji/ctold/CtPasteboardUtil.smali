.class public Lcom/metamoji/ctold/CtPasteboardUtil;
.super Ljava/lang/Object;
.source "CtPasteboardUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertObjectKey(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 21
    const-string v0, "conv_unit"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 22
    const-string v1, "conv_elem"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 23
    const-string v2, "conv_elem_owner"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 25
    invoke-static {p0}, Lcom/metamoji/ctold/CtTagUtil;->toObjectType(Ljava/lang/String;)Lcom/metamoji/ctold/object/CtObjectType;

    move-result-object v2

    .line 26
    sget-object v3, Lcom/metamoji/ctold/CtPasteboardUtil$1;->$SwitchMap$com$metamoji$ctold$object$CtObjectType:[I

    invoke-virtual {v2}, Lcom/metamoji/ctold/object/CtObjectType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/4 v4, 0x1

    if-eq v3, v4, :cond_3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2

    const/4 v4, 0x3

    if-eq v3, v4, :cond_0

    const/4 v4, 0x4

    if-eq v3, v4, :cond_0

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_4

    .line 51
    invoke-static {p0}, Lcom/metamoji/ctold/CtTagUtil;->toOwnerId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 53
    invoke-static {p0}, Lcom/metamoji/ctold/CtTagUtil;->toObjectId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 55
    invoke-static {v2, p0, v0}, Lcom/metamoji/ctold/CtTagUtil;->toObjectKey(Lcom/metamoji/ctold/object/CtObjectType;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    if-eqz v1, :cond_4

    if-eqz p1, :cond_4

    .line 59
    invoke-static {p0}, Lcom/metamoji/ctold/CtTagUtil;->toObjectId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 61
    invoke-static {v2, v0, p1}, Lcom/metamoji/ctold/CtTagUtil;->toObjectKey(Lcom/metamoji/ctold/object/CtObjectType;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    if-eqz v0, :cond_4

    .line 39
    invoke-static {p0}, Lcom/metamoji/ctold/CtTagUtil;->toObjectId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_4

    .line 41
    invoke-static {p0}, Lcom/metamoji/ctold/CtTagUtil;->toOwnerId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 42
    invoke-static {v2, p1, p0}, Lcom/metamoji/ctold/CtTagUtil;->toObjectKey(Lcom/metamoji/ctold/object/CtObjectType;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    if-eqz v0, :cond_4

    .line 29
    invoke-static {p0}, Lcom/metamoji/ctold/CtTagUtil;->toObjectId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_4

    .line 31
    invoke-static {p0}, Lcom/metamoji/ctold/CtTagUtil;->toOwnerId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 32
    invoke-static {v2, p1, p0}, Lcom/metamoji/ctold/CtTagUtil;->toObjectKey(Lcom/metamoji/ctold/object/CtObjectType;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_4
    :goto_0
    return-object p0
.end method
