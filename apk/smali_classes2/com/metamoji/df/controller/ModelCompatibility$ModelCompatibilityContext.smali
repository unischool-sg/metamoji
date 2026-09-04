.class Lcom/metamoji/df/controller/ModelCompatibility$ModelCompatibilityContext;
.super Lcom/metamoji/df/controller/ModelVisitContext;
.source "ModelCompatibility.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/df/controller/ModelCompatibility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ModelCompatibilityContext"
.end annotation


# instance fields
.field outUsedVersionInfo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field result:Lcom/metamoji/df/controller/ModelCompatibilityResultWrapper;

.field final synthetic this$0:Lcom/metamoji/df/controller/ModelCompatibility;


# direct methods
.method public constructor <init>(Lcom/metamoji/df/controller/ModelCompatibility;Lcom/metamoji/df/controller/IModelVisitor;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 65
    iput-object p1, p0, Lcom/metamoji/df/controller/ModelCompatibility$ModelCompatibilityContext;->this$0:Lcom/metamoji/df/controller/ModelCompatibility;

    .line 66
    invoke-direct {p0, p2}, Lcom/metamoji/df/controller/ModelVisitContext;-><init>(Lcom/metamoji/df/controller/IModelVisitor;)V

    return-void
.end method


# virtual methods
.method public getOutUsedVersionInfo()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lcom/metamoji/df/controller/ModelCompatibility$ModelCompatibilityContext;->outUsedVersionInfo:Ljava/util/Map;

    return-object v0
.end method

.method public getResult()Lcom/metamoji/df/controller/ModelCompatibilityResultWrapper;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/metamoji/df/controller/ModelCompatibility$ModelCompatibilityContext;->result:Lcom/metamoji/df/controller/ModelCompatibilityResultWrapper;

    return-object v0
.end method

.method public setOutUsedVersionInfo(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;>;)V"
        }
    .end annotation

    .line 62
    iput-object p1, p0, Lcom/metamoji/df/controller/ModelCompatibility$ModelCompatibilityContext;->outUsedVersionInfo:Ljava/util/Map;

    return-void
.end method

.method public setResult(Lcom/metamoji/df/controller/ModelCompatibilityResultWrapper;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/metamoji/df/controller/ModelCompatibility$ModelCompatibilityContext;->result:Lcom/metamoji/df/controller/ModelCompatibilityResultWrapper;

    return-void
.end method
