.class public Lcom/metamoji/nt/NtPasteboardExtrasUtil;
.super Ljava/lang/Object;
.source "NtPasteboardExtrasUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/nt/NtPasteboardExtrasUtil$IKeySelectorProc;,
        Lcom/metamoji/nt/NtPasteboardExtrasUtil$IKeyConverterProc;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertKey(Ljava/util/Map;Lcom/metamoji/nt/NtPasteboardExtrasUtil$IKeySelectorProc;Lcom/metamoji/nt/NtPasteboardExtrasUtil$IKeyConverterProc;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/metamoji/nt/NtPasteboardExtrasUtil$IKeySelectorProc;",
            "Lcom/metamoji/nt/NtPasteboardExtrasUtil$IKeyConverterProc;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 94
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 95
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 96
    invoke-interface {p1, v2}, Lcom/metamoji/nt/NtPasteboardExtrasUtil$IKeySelectorProc;->select(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 97
    invoke-interface {p2, v2}, Lcom/metamoji/nt/NtPasteboardExtrasUtil$IKeyConverterProc;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 98
    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static extraKeyConverterAppendSuffix(Ljava/lang/String;)Lcom/metamoji/nt/NtPasteboardExtrasUtil$IKeyConverterProc;
    .locals 2

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 59
    new-instance v0, Lcom/metamoji/nt/NtPasteboardExtrasUtil$3;

    invoke-direct {v0, p0}, Lcom/metamoji/nt/NtPasteboardExtrasUtil$3;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static extraKeyConverterRemoveSuffix(Ljava/lang/String;)Lcom/metamoji/nt/NtPasteboardExtrasUtil$IKeyConverterProc;
    .locals 2

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 76
    new-instance v0, Lcom/metamoji/nt/NtPasteboardExtrasUtil$4;

    invoke-direct {v0, p0}, Lcom/metamoji/nt/NtPasteboardExtrasUtil$4;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static extraKeySelectorWithSuffix(Ljava/lang/String;)Lcom/metamoji/nt/NtPasteboardExtrasUtil$IKeySelectorProc;
    .locals 2

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 42
    new-instance v0, Lcom/metamoji/nt/NtPasteboardExtrasUtil$2;

    invoke-direct {v0, p0}, Lcom/metamoji/nt/NtPasteboardExtrasUtil$2;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static oldPageIdFromNewPageId(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 3
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

    .line 112
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 113
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 114
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static trueSelector()Lcom/metamoji/nt/NtPasteboardExtrasUtil$IKeySelectorProc;
    .locals 1

    .line 25
    new-instance v0, Lcom/metamoji/nt/NtPasteboardExtrasUtil$1;

    invoke-direct {v0}, Lcom/metamoji/nt/NtPasteboardExtrasUtil$1;-><init>()V

    return-object v0
.end method
