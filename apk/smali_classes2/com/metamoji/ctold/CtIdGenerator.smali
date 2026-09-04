.class public Lcom/metamoji/ctold/CtIdGenerator;
.super Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;
.source "CtIdGenerator.java"


# static fields
.field private static final MMDOID_DATA_VERSION:I = 0x1

.field private static final MODEL_PROPERTY_ID_COUNT:Ljava/lang/String; = "cnt"

.field private static final MODEL_PROPERTY_ID_VERSION:Ljava/lang/String; = "ver"


# instance fields
.field private nameCnt:Ljava/lang/String;

.field private nameVer:Ljava/lang/String;

.field private ownerModel:Lcom/metamoji/df/model/IModel;


# direct methods
.method public constructor <init>(Lcom/metamoji/df/model/IModel;Ljava/lang/String;)V
    .locals 2

    .line 34
    invoke-direct {p0}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/metamoji/ctold/CtIdGenerator;->ownerModel:Lcom/metamoji/df/model/IModel;

    .line 36
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v0, "ver"

    filled-new-array {p2, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%s%s"

    invoke-static {p1, v1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/ctold/CtIdGenerator;->nameVer:Ljava/lang/String;

    .line 37
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v0, "cnt"

    filled-new-array {p2, v0}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, v1, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/ctold/CtIdGenerator;->nameCnt:Ljava/lang/String;

    .line 39
    iget-object p1, p0, Lcom/metamoji/ctold/CtIdGenerator;->ownerModel:Lcom/metamoji/df/model/IModel;

    iget-object p2, p0, Lcom/metamoji/ctold/CtIdGenerator;->nameVer:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Lcom/metamoji/df/model/IModel;->getPropertyAsInt(Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v0, :cond_1

    .line 45
    iget-object p1, p0, Lcom/metamoji/ctold/CtIdGenerator;->ownerModel:Lcom/metamoji/df/model/IModel;

    iget-object p2, p0, Lcom/metamoji/ctold/CtIdGenerator;->nameVer:Ljava/lang/String;

    invoke-interface {p1, p2, v0}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;I)V

    .line 47
    iget-object p1, p0, Lcom/metamoji/ctold/CtIdGenerator;->ownerModel:Lcom/metamoji/df/model/IModel;

    iget-object p2, p0, Lcom/metamoji/ctold/CtIdGenerator;->nameCnt:Ljava/lang/String;

    invoke-interface {p1, p2}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 48
    invoke-static {p1}, Lcom/metamoji/ctold/CtIdGenerator;->numberFromString(Ljava/lang/String;)J

    move-result-wide p1

    goto :goto_0

    :cond_0
    const-wide/16 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/ctold/CtIdGenerator;->setCount(J)V

    return-void

    .line 43
    :cond_1
    new-instance p2, Lcom/metamoji/cm/CmException;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "Unknown version: %d"

    invoke-static {v0, v1, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "OID0001"

    invoke-direct {p2, v0, p1}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p2
.end method

.method public static OIDFromString(Ljava/lang/String;)Lcom/metamoji/ctold/CtOID;
    .locals 1

    .line 84
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->idFromString(Ljava/lang/String;)Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object p0

    .line 85
    new-instance v0, Lcom/metamoji/ctold/CtOIDImpl;

    invoke-direct {v0, p0}, Lcom/metamoji/ctold/CtOIDImpl;-><init>(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)V

    return-object v0
.end method

.method public static restoreFromElement(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;)V
    .locals 5

    .line 94
    const-string v0, "OID0002"

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "ver"

    filled-new-array {p2, v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "%s%s"

    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 95
    invoke-interface {p0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 96
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    .line 102
    :cond_0
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v4, 0x1

    if-ne v2, v4, :cond_2

    .line 111
    invoke-interface {p1, v1, v2}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;I)V

    .line 113
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "cnt"

    filled-new-array {p2, v1}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {v0, v3, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 114
    invoke-interface {p0, p2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 115
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    return-void

    .line 118
    :cond_1
    invoke-interface {p1, p2, p0}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 109
    :cond_2
    new-instance p0, Lcom/metamoji/cm/CmException;

    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const-string v1, "Unknown version: %d"

    invoke-static {p1, v1, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    .line 105
    new-instance p1, Lcom/metamoji/cm/CmException;

    sget-object p2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "Invalid version: %s"

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {p2, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, v0, p2, p0}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static storeToElement(Lorg/w3c/dom/Element;Lcom/metamoji/df/model/IModel;Ljava/lang/String;)V
    .locals 5

    .line 123
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "ver"

    filled-new-array {p2, v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "%s%s"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 124
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "%d"

    invoke-static {v1, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 125
    invoke-interface {p0, v0, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "cnt"

    filled-new-array {p2, v1}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {v0, v2, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 128
    invoke-interface {p1, p2}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 130
    invoke-interface {p0, p2, p1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static stringFromOID(Lcom/metamoji/ctold/CtOID;)Ljava/lang/String;
    .locals 0

    .line 89
    check-cast p0, Lcom/metamoji/ctold/CtOIDImpl;

    .line 90
    invoke-virtual {p0}, Lcom/metamoji/ctold/CtOIDImpl;->getId()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object p0

    invoke-static {p0}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->stringFromId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 58
    iget-object v0, p0, Lcom/metamoji/ctold/CtIdGenerator;->ownerModel:Lcom/metamoji/df/model/IModel;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 60
    :try_start_0
    invoke-virtual {p0}, Lcom/metamoji/ctold/CtIdGenerator;->storeToModel()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    iput-object v0, p0, Lcom/metamoji/ctold/CtIdGenerator;->ownerModel:Lcom/metamoji/df/model/IModel;

    return-void

    :catchall_0
    move-exception v1

    iput-object v0, p0, Lcom/metamoji/ctold/CtIdGenerator;->ownerModel:Lcom/metamoji/df/model/IModel;

    .line 63
    throw v1

    :cond_0
    return-void
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 53
    invoke-virtual {p0}, Lcom/metamoji/ctold/CtIdGenerator;->close()V

    .line 54
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public generateOID()Lcom/metamoji/ctold/CtOID;
    .locals 2

    .line 78
    invoke-super {p0}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->generateId()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v0

    .line 79
    invoke-virtual {p0}, Lcom/metamoji/ctold/CtIdGenerator;->storeToModel()V

    .line 80
    new-instance v1, Lcom/metamoji/ctold/CtOIDImpl;

    invoke-direct {v1, v0}, Lcom/metamoji/ctold/CtOIDImpl;-><init>(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)V

    return-object v1
.end method

.method storeToModel()V
    .locals 4

    .line 68
    invoke-virtual {p0}, Lcom/metamoji/ctold/CtIdGenerator;->count()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/metamoji/ctold/CtIdGenerator;->ownerModel:Lcom/metamoji/df/model/IModel;

    iget-object v1, p0, Lcom/metamoji/ctold/CtIdGenerator;->nameVer:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;I)V

    .line 72
    invoke-virtual {p0}, Lcom/metamoji/ctold/CtIdGenerator;->count()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/metamoji/ctold/CtIdGenerator;->stringFromNumber(J)Ljava/lang/String;

    move-result-object v0

    .line 73
    iget-object v1, p0, Lcom/metamoji/ctold/CtIdGenerator;->ownerModel:Lcom/metamoji/df/model/IModel;

    iget-object v2, p0, Lcom/metamoji/ctold/CtIdGenerator;->nameCnt:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
