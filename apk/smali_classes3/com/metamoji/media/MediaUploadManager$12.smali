.class Lcom/metamoji/media/MediaUploadManager$12;
.super Ljava/lang/Object;
.source "MediaUploadManager.java"

# interfaces
.implements Lcom/metamoji/df/controller/IModelVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/media/MediaUploadManager;->collectSoundUnit(Lcom/metamoji/df/model/IModel;)Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/media/MediaUploadManager;

.field final synthetic val$soundUnits:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/metamoji/media/MediaUploadManager;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1632
    iput-object p1, p0, Lcom/metamoji/media/MediaUploadManager$12;->this$0:Lcom/metamoji/media/MediaUploadManager;

    iput-object p2, p0, Lcom/metamoji/media/MediaUploadManager$12;->val$soundUnits:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public visit(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/controller/ModelVisitContext;)V
    .locals 1

    .line 1635
    invoke-interface {p1}, Lcom/metamoji/df/model/IModel;->getModelType()Ljava/lang/String;

    move-result-object p2

    .line 1636
    const-string v0, "$soundunit"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 1638
    const-string/jumbo p2, "ticket"

    invoke-interface {p1, p2}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1639
    iget-object v0, p0, Lcom/metamoji/media/MediaUploadManager$12;->val$soundUnits:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
