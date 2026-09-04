.class Lcom/metamoji/df/controller/AttachmentsManager$AttachmentCollector;
.super Ljava/lang/Object;
.source "AttachmentsManager.java"

# interfaces
.implements Lcom/metamoji/df/controller/AttachmentsManager$IForeachAttachmentModelDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/df/controller/AttachmentsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AttachmentCollector"
.end annotation


# instance fields
.field private isAdded:Z

.field final synthetic this$0:Lcom/metamoji/df/controller/AttachmentsManager;


# direct methods
.method private constructor <init>(Lcom/metamoji/df/controller/AttachmentsManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 689
    iput-object p1, p0, Lcom/metamoji/df/controller/AttachmentsManager$AttachmentCollector;->this$0:Lcom/metamoji/df/controller/AttachmentsManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 690
    iput-boolean p1, p0, Lcom/metamoji/df/controller/AttachmentsManager$AttachmentCollector;->isAdded:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/metamoji/df/controller/AttachmentsManager;Lcom/metamoji/df/controller/AttachmentsManager-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/df/controller/AttachmentsManager$AttachmentCollector;-><init>(Lcom/metamoji/df/controller/AttachmentsManager;)V

    return-void
.end method


# virtual methods
.method public action(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V
    .locals 1

    .line 695
    iget-object v0, p0, Lcom/metamoji/df/controller/AttachmentsManager$AttachmentCollector;->this$0:Lcom/metamoji/df/controller/AttachmentsManager;

    invoke-static {v0}, Lcom/metamoji/df/controller/AttachmentsManager;->-$$Nest$fget_mapModel(Lcom/metamoji/df/controller/AttachmentsManager;)Lcom/metamoji/df/model/IModel;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/metamoji/df/model/IModel;->getPropertyAsObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 696
    iput-boolean v0, p0, Lcom/metamoji/df/controller/AttachmentsManager$AttachmentCollector;->isAdded:Z

    .line 697
    iget-object v0, p0, Lcom/metamoji/df/controller/AttachmentsManager$AttachmentCollector;->this$0:Lcom/metamoji/df/controller/AttachmentsManager;

    invoke-static {v0}, Lcom/metamoji/df/controller/AttachmentsManager;->-$$Nest$fget_mapModel(Lcom/metamoji/df/controller/AttachmentsManager;)Lcom/metamoji/df/model/IModel;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    :cond_0
    return-void
.end method

.method public isAdded()Z
    .locals 1

    .line 702
    iget-boolean v0, p0, Lcom/metamoji/df/controller/AttachmentsManager$AttachmentCollector;->isAdded:Z

    return v0
.end method
