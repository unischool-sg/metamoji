.class public final Lcom/metamoji/un/video/operation/UnVideoOperation$Companion;
.super Ljava/lang/Object;
.source "UnVideoOperation.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/un/video/operation/UnVideoOperation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/un/video/operation/UnVideoOperation$Companion$ModelDef;,
        Lcom/metamoji/un/video/operation/UnVideoOperation$Companion$autogenicMarker;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001:\u0002\u0019\u001aB\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0010\u0010\t\u001a\u00020\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u0001J\u0018\u0010\u000c\u001a\u0004\u0018\u00010\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011J\u0018\u0010\u0012\u001a\u0004\u0018\u00010\r2\u0006\u0010\u000b\u001a\u00020\u00012\u0006\u0010\u0010\u001a\u00020\u0011J4\u0010\u0013\u001a\u0004\u0018\u00010\r2\u0006\u0010\u0010\u001a\u00020\u00112\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00182\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000fR2\u0010\u0004\u001a&\u0012\u0004\u0012\u00020\u0006\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u00070\u0005j\u0012\u0012\u0004\u0012\u00020\u0006\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u0007`\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/metamoji/un/video/operation/UnVideoOperation$Companion;",
        "",
        "<init>",
        "()V",
        "classMap",
        "Ljava/util/HashMap;",
        "",
        "Ljava/lang/Class;",
        "Lkotlin/collections/HashMap;",
        "isAcceptable",
        "",
        "direction",
        "operationFromUndoModel",
        "Lcom/metamoji/un/video/operation/UnVideoOperation;",
        "model",
        "Lcom/metamoji/df/model/IModel;",
        "target",
        "Lcom/metamoji/un/video/UnVideoUnit;",
        "operationFromDirection",
        "operationWithTarget",
        "type",
        "record",
        "Lcom/metamoji/un/video/operation/UnVideoOperation$OperationRecord;",
        "traits",
        "Lcom/metamoji/un/video/operation/UnVideoOperation$OperationTraits;",
        "ModelDef",
        "autogenicMarker",
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

    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/un/video/operation/UnVideoOperation$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final isAcceptable(Ljava/lang/Object;)Z
    .locals 2

    .line 221
    instance-of v0, p1, Ljava/util/HashMap;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/util/HashMap;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    return v0

    .line 222
    :cond_1
    const-string/jumbo v1, "type"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_2

    return v0

    .line 224
    :cond_2
    invoke-static {}, Lcom/metamoji/un/video/operation/UnVideoOperation;->access$getClassMap$cp()Ljava/util/HashMap;

    move-result-object v0

    invoke-static {p1}, Lcom/metamoji/cm/CmUtils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final operationFromDirection(Ljava/lang/Object;Lcom/metamoji/un/video/UnVideoUnit;)Lcom/metamoji/un/video/operation/UnVideoOperation;
    .locals 8

    const-string v0, "direction"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "target"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 238
    invoke-virtual {p0, p1}, Lcom/metamoji/un/video/operation/UnVideoOperation$Companion;->isAcceptable(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 242
    :cond_0
    instance-of v0, p1, Ljava/util/HashMap;

    if-eqz v0, :cond_1

    check-cast p1, Ljava/util/HashMap;

    goto :goto_0

    :cond_1
    move-object p1, v1

    :goto_0
    if-nez p1, :cond_2

    return-object v1

    .line 243
    :cond_2
    const-string/jumbo v0, "type"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_3

    return-object v1

    .line 244
    :cond_3
    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 247
    :try_start_0
    new-instance v5, Lcom/metamoji/un/video/operation/UnVideoOperation$OperationRecord;

    const-string v0, "record"

    invoke-direct {v5, p1, v0}, Lcom/metamoji/un/video/operation/UnVideoOperation$OperationRecord;-><init>(Ljava/util/HashMap;Ljava/lang/String;)V

    .line 248
    sget-object p1, Lcom/metamoji/un/video/operation/UnVideoOperation$OperationTraits;->Companion:Lcom/metamoji/un/video/operation/UnVideoOperation$OperationTraits$Companion;

    invoke-virtual {p1}, Lcom/metamoji/un/video/operation/UnVideoOperation$OperationTraits$Companion;->getDirectionOrigin()Lcom/metamoji/un/video/operation/UnVideoOperation$OperationTraits;

    move-result-object v6

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p2

    invoke-virtual/range {v2 .. v7}, Lcom/metamoji/un/video/operation/UnVideoOperation$Companion;->operationWithTarget(Lcom/metamoji/un/video/UnVideoUnit;Ljava/lang/String;Lcom/metamoji/un/video/operation/UnVideoOperation$OperationRecord;Lcom/metamoji/un/video/operation/UnVideoOperation$OperationTraits;Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/video/operation/UnVideoOperation;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception v0

    move-object p1, v0

    .line 250
    const-string p2, "UnVideoOperation.operationFromDirection: invalid record."

    invoke-static {p1, p2}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-object v1
.end method

.method public final operationFromUndoModel(Lcom/metamoji/df/model/IModel;Lcom/metamoji/un/video/UnVideoUnit;)Lcom/metamoji/un/video/operation/UnVideoOperation;
    .locals 7

    const-string v0, "model"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "target"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 228
    const-string/jumbo v0, "type"

    invoke-interface {p1, v0}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 229
    new-instance v4, Lcom/metamoji/un/video/operation/UnVideoOperation$OperationRecord;

    const-string v0, "record"

    invoke-direct {v4, p1, v0}, Lcom/metamoji/un/video/operation/UnVideoOperation$OperationRecord;-><init>(Lcom/metamoji/df/model/IModel;Ljava/lang/String;)V

    .line 230
    sget-object v0, Lcom/metamoji/un/video/operation/UnVideoOperation$OperationTraits;->Companion:Lcom/metamoji/un/video/operation/UnVideoOperation$OperationTraits$Companion;

    invoke-virtual {v0}, Lcom/metamoji/un/video/operation/UnVideoOperation$OperationTraits$Companion;->getUndoModelOrigin()Lcom/metamoji/un/video/operation/UnVideoOperation$OperationTraits;

    move-result-object v0

    .line 231
    const-string v1, "passive"

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2}, Lcom/metamoji/df/model/IModel;->getPropertyAsBool(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 232
    invoke-virtual {v0}, Lcom/metamoji/un/video/operation/UnVideoOperation$OperationTraits;->asPassive()Lcom/metamoji/un/video/operation/UnVideoOperation$OperationTraits;

    move-result-object v0

    :cond_0
    move-object v1, p0

    move-object v6, p1

    move-object v2, p2

    move-object v5, v0

    .line 234
    invoke-virtual/range {v1 .. v6}, Lcom/metamoji/un/video/operation/UnVideoOperation$Companion;->operationWithTarget(Lcom/metamoji/un/video/UnVideoUnit;Ljava/lang/String;Lcom/metamoji/un/video/operation/UnVideoOperation$OperationRecord;Lcom/metamoji/un/video/operation/UnVideoOperation$OperationTraits;Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/video/operation/UnVideoOperation;

    move-result-object p1

    return-object p1
.end method

.method public final operationWithTarget(Lcom/metamoji/un/video/UnVideoUnit;Ljava/lang/String;Lcom/metamoji/un/video/operation/UnVideoOperation$OperationRecord;Lcom/metamoji/un/video/operation/UnVideoOperation$OperationTraits;Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/video/operation/UnVideoOperation;
    .locals 3

    const-string/jumbo v0, "target"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "record"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "traits"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 258
    invoke-static {}, Lcom/metamoji/un/video/operation/UnVideoOperation;->access$getClassMap$cp()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Class;

    if-eqz p2, :cond_0

    const/4 v0, 0x4

    .line 262
    :try_start_0
    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Lcom/metamoji/un/video/UnVideoUnit;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-class v1, Lcom/metamoji/un/video/operation/UnVideoOperation$OperationRecord;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-class v1, Lcom/metamoji/un/video/operation/UnVideoOperation$OperationTraits;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-class v1, Lcom/metamoji/df/model/IModel;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-virtual {p2, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p2

    .line 263
    filled-new-array {p1, p3, p4, p5}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string p2, "null cannot be cast to non-null type com.metamoji.un.video.operation.UnVideoOperation"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/metamoji/un/video/operation/UnVideoOperation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 265
    const-string p2, "UnVideoOperation.operationWithTarget: cannot create operation instance."

    invoke-static {p1, p2}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
