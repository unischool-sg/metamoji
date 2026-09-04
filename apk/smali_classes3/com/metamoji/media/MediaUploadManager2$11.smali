.class Lcom/metamoji/media/MediaUploadManager2$11;
.super Ljava/lang/Object;
.source "MediaUploadManager2.java"

# interfaces
.implements Lcom/metamoji/df/controller/IModelVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/media/MediaUploadManager2;->collectSoundUnit(Lcom/metamoji/df/model/IModel;)Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/media/MediaUploadManager2;

.field final synthetic val$soundUnits:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/metamoji/media/MediaUploadManager2;Ljava/util/Map;)V
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

    .line 1225
    iput-object p1, p0, Lcom/metamoji/media/MediaUploadManager2$11;->this$0:Lcom/metamoji/media/MediaUploadManager2;

    iput-object p2, p0, Lcom/metamoji/media/MediaUploadManager2$11;->val$soundUnits:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public visit(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/controller/ModelVisitContext;)V
    .locals 1

    .line 1228
    invoke-interface {p1}, Lcom/metamoji/df/model/IModel;->getModelType()Ljava/lang/String;

    move-result-object p2

    .line 1229
    const-string v0, "$soundunit"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 1231
    const-string/jumbo p2, "ticket"

    invoke-interface {p1, p2}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1232
    iget-object v0, p0, Lcom/metamoji/media/MediaUploadManager2$11;->val$soundUnits:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
