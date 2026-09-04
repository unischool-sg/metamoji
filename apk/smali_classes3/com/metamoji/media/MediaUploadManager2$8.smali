.class Lcom/metamoji/media/MediaUploadManager2$8;
.super Ljava/lang/Object;
.source "MediaUploadManager2.java"

# interfaces
.implements Lcom/metamoji/df/controller/IModelVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/media/MediaUploadManager2;->notifyDocumentTitleChanged(Lcom/metamoji/dvm/fw/IDvmDocumentEditor;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/media/MediaUploadManager2;


# direct methods
.method constructor <init>(Lcom/metamoji/media/MediaUploadManager2;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1048
    iput-object p1, p0, Lcom/metamoji/media/MediaUploadManager2$8;->this$0:Lcom/metamoji/media/MediaUploadManager2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public visit(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/controller/ModelVisitContext;)V
    .locals 2

    .line 1051
    invoke-interface {p1}, Lcom/metamoji/df/model/IModel;->getModelType()Ljava/lang/String;

    move-result-object v0

    .line 1052
    const-string v1, "$soundunit"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1054
    invoke-static {p1, p2}, Lcom/metamoji/un/sound/UnSoundUnit;->visitModelForUnitID(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/controller/ModelVisitContext;)V

    :cond_0
    return-void
.end method
