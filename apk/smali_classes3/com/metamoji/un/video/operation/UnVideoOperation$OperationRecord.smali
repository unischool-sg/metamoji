.class public final Lcom/metamoji/un/video/operation/UnVideoOperation$OperationRecord;
.super Ljava/lang/Object;
.source "UnVideoOperation.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/un/video/operation/UnVideoOperation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OperationRecord"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/un/video/operation/UnVideoOperation$OperationRecord$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0018\u0000 \u001d2\u00020\u0001:\u0001\u001dB1\u0008\u0016\u0012&\u0010\u0002\u001a\"\u0012\u0004\u0012\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0003j\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u0001`\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007B\u0011\u0008\u0016\u0012\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0004\u0008\u0006\u0010\nB\u0019\u0008\u0016\u0012\u0006\u0010\u000b\u001a\u00020\u000c\u0012\u0006\u0010\r\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u000eB9\u0008\u0016\u0012&\u0010\u0002\u001a\"\u0012\u0004\u0012\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0003j\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u0001`\u0005\u0012\u0006\u0010\u000f\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0010J\u0016\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u0004J\u0016\u0010\u001c\u001a\u00020\u001b2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u0004R5\u0010\u0002\u001a&\u0012\u0004\u0012\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u00010\u0003j\u0012\u0012\u0004\u0012\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u0001`\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u0011\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014R\u0011\u0010\u0015\u001a\u00020\t8F\u00a2\u0006\u0006\u001a\u0004\u0008\u0016\u0010\u0014R\u0011\u0010\u0017\u001a\u00020\u00018F\u00a2\u0006\u0006\u001a\u0004\u0008\u0018\u0010\u0019\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/metamoji/un/video/operation/UnVideoOperation$OperationRecord;",
        "",
        "dic",
        "Ljava/util/HashMap;",
        "",
        "Lkotlin/collections/HashMap;",
        "<init>",
        "(Ljava/util/HashMap;)V",
        "flag",
        "",
        "(Z)V",
        "model",
        "Lcom/metamoji/df/model/IModel;",
        "name",
        "(Lcom/metamoji/df/model/IModel;Ljava/lang/String;)V",
        "key",
        "(Ljava/util/HashMap;Ljava/lang/String;)V",
        "getDic",
        "()Ljava/util/HashMap;",
        "getFlag",
        "()Z",
        "hasDictionary",
        "getHasDictionary",
        "record",
        "getRecord",
        "()Ljava/lang/Object;",
        "letProperty",
        "",
        "setProperty",
        "Companion",
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
.field public static final Companion:Lcom/metamoji/un/video/operation/UnVideoOperation$OperationRecord$Companion;


# instance fields
.field private final dic:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final flag:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/metamoji/un/video/operation/UnVideoOperation$OperationRecord$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/un/video/operation/UnVideoOperation$OperationRecord$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/metamoji/un/video/operation/UnVideoOperation$OperationRecord;->Companion:Lcom/metamoji/un/video/operation/UnVideoOperation$OperationRecord$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/metamoji/df/model/IModel;Ljava/lang/String;)V
    .locals 1

    const-string v0, "model"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-interface {p1, p2}, Lcom/metamoji/df/model/IModel;->getPropertyAsObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 35
    instance-of p2, p1, Ljava/util/HashMap;

    if-eqz p2, :cond_0

    .line 37
    check-cast p1, Ljava/util/HashMap;

    iput-object p1, p0, Lcom/metamoji/un/video/operation/UnVideoOperation$OperationRecord;->dic:Ljava/util/HashMap;

    const/4 p1, 0x0

    .line 38
    iput-boolean p1, p0, Lcom/metamoji/un/video/operation/UnVideoOperation$OperationRecord;->flag:Z

    return-void

    :cond_0
    const/4 p2, 0x0

    .line 40
    iput-object p2, p0, Lcom/metamoji/un/video/operation/UnVideoOperation$OperationRecord;->dic:Ljava/util/HashMap;

    .line 41
    invoke-static {p1}, Lcom/metamoji/cm/CmUtils;->toBool(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/metamoji/un/video/operation/UnVideoOperation$OperationRecord;->flag:Z

    return-void
.end method

.method public constructor <init>(Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "dic"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/metamoji/un/video/operation/UnVideoOperation$OperationRecord;->dic:Ljava/util/HashMap;

    const/4 p1, 0x0

    .line 27
    iput-boolean p1, p0, Lcom/metamoji/un/video/operation/UnVideoOperation$OperationRecord;->flag:Z

    return-void
.end method

.method public constructor <init>(Ljava/util/HashMap;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "dic"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 46
    instance-of p2, p1, Ljava/util/HashMap;

    if-eqz p2, :cond_0

    .line 48
    check-cast p1, Ljava/util/HashMap;

    iput-object p1, p0, Lcom/metamoji/un/video/operation/UnVideoOperation$OperationRecord;->dic:Ljava/util/HashMap;

    const/4 p1, 0x0

    .line 49
    iput-boolean p1, p0, Lcom/metamoji/un/video/operation/UnVideoOperation$OperationRecord;->flag:Z

    return-void

    :cond_0
    const/4 p2, 0x0

    .line 51
    iput-object p2, p0, Lcom/metamoji/un/video/operation/UnVideoOperation$OperationRecord;->dic:Ljava/util/HashMap;

    .line 52
    invoke-static {p1}, Lcom/metamoji/cm/CmUtils;->toBool(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/metamoji/un/video/operation/UnVideoOperation$OperationRecord;->flag:Z

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 30
    iput-object v0, p0, Lcom/metamoji/un/video/operation/UnVideoOperation$OperationRecord;->dic:Ljava/util/HashMap;

    .line 31
    iput-boolean p1, p0, Lcom/metamoji/un/video/operation/UnVideoOperation$OperationRecord;->flag:Z

    return-void
.end method


# virtual methods
.method public final getDic()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 18
    iget-object v0, p0, Lcom/metamoji/un/video/operation/UnVideoOperation$OperationRecord;->dic:Ljava/util/HashMap;

    return-object v0
.end method

.method public final getFlag()Z
    .locals 1

    .line 19
    iget-boolean v0, p0, Lcom/metamoji/un/video/operation/UnVideoOperation$OperationRecord;->flag:Z

    return v0
.end method

.method public final getHasDictionary()Z
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/metamoji/un/video/operation/UnVideoOperation$OperationRecord;->dic:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final getRecord()Ljava/lang/Object;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/metamoji/un/video/operation/UnVideoOperation$OperationRecord;->dic:Ljava/util/HashMap;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/metamoji/un/video/operation/UnVideoOperation$OperationRecord;->flag:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final letProperty(Lcom/metamoji/df/model/IModel;Ljava/lang/String;)V
    .locals 1

    const-string v0, "model"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    invoke-virtual {p0}, Lcom/metamoji/un/video/operation/UnVideoOperation$OperationRecord;->getHasDictionary()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/metamoji/un/video/operation/UnVideoOperation$OperationRecord;->dic:Ljava/util/HashMap;

    check-cast v0, Ljava/util/Map;

    invoke-interface {p1, p2, v0}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/util/Map;)V

    return-void

    .line 60
    :cond_0
    iget-boolean v0, p0, Lcom/metamoji/un/video/operation/UnVideoOperation$OperationRecord;->flag:Z

    invoke-interface {p1, p2, v0}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Z)V

    return-void
.end method

.method public final setProperty(Lcom/metamoji/df/model/IModel;Ljava/lang/String;)V
    .locals 1

    const-string v0, "model"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/un/video/operation/UnVideoOperation$OperationRecord;->letProperty(Lcom/metamoji/df/model/IModel;Ljava/lang/String;)V

    return-void
.end method
